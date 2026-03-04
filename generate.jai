// MIT License - Copyright (c) 2022 Hamad Almamari
// Modified by Ryan Capote for Vulkan 1.3
// Modified by Veikka Karonen for Vulkan 1.4

// Tested with vulkan 1.0 and 1.2
// You can use this file to generate any version of vulkan bindings.
// You only need to set the vulkan.h path, and specify different defines if the default for your OS doesn't work.

// config
AT_COMPILE_TIME   :: true;
vulkan_h_location :: "source/vulkan.h";
VULKAN_DOCS_BASE_URL :: "https://docs.vulkan.org/refpages/latest/refpages/source";
DOCS_CACHE_DIR :: ".docs_cache";
DOC_CACHE_NOT_FOUND :: "__NOT_FOUND__";
DOC_HTTP_STATUS_MARKER :: "__HTTP_STATUS__:";


// These are all the defines used in vulkan.h
// This set of defines isn't actually used anywhere, but you could if you provided all of the required system headers.
// (The generator will yell at you if you don't have them)
ALL_ARGS :: string.[
    "-DVK_ENABLE_BETA_EXTENSIONS",
    "-DVK_USE_PLATFORM_ANDROID_KHR",
    "-DVK_USE_PLATFORM_WAYLAND_KHR",
    "-DVK_USE_PLATFORM_XCB_KHR",
    "-DVK_USE_PLATFORM_XLIB_KHR",
    "-DVK_USE_PLATFORM_IOS_MVK",
    "-DVK_USE_PLATFORM_MACOS_MVK",
    "-DVK_USE_PLATFORM_METAL_EXT",
    "-DVK_USE_PLATFORM_VI_NN",
    "-DVK_USE_PLATFORM_FUCHSIA",
    "-DVK_USE_PLATFORM_WIN32_KHR",
    "-DVK_USE_PLATFORM_DIRECTFB_EXT",
    "-DVK_USE_PLATFORM_XLIB_XRANDR_EXT",
    "-DVK_USE_PLATFORM_GGP",
    "-DVK_USE_PLATFORM_SCREEN_QNX",
    "-DVK_USE_PLATFORM_SCI",
];

/*
    These are the default args selected based on your OS. They all enable beta extensions, which only means that
    structs and function pointers are generated. Generating without it defined is not possible currently, because
    some structs need to set their sType field to a value that won't be generated without the beta define.

    Other option would be to have the generator leave the sType as some default value, but then the user can't be
    certain that their sType is always correctly initialized.
*/

LINUX_ARGS :: string.[
    "-DVK_ENABLE_BETA_EXTENSIONS",
    "-DVK_USE_PLATFORM_ANDROID_KHR",
    "-DVK_USE_PLATFORM_WAYLAND_KHR",
    "-DVK_USE_PLATFORM_XCB_KHR",
    "-DVK_USE_PLATFORM_XLIB_KHR",
];

// @Untested
WINDOWS_ARGS :: string.[
    "-x",
    "c",
    "-DWIN32_LEAN_AND_MEAN",
    "-DVK_ENABLE_BETA_EXTENSIONS",
    "-DVK_USE_PLATFORM_WIN32_KHR",
];

// @Untested
MACOS_ARGS :: string.[
    "-DVK_ENABLE_BETA_EXTENSIONS",
    "-DVK_USE_PLATFORM_IOS_MVK",
    "-DVK_USE_PLATFORM_MACOS_MVK",
    "-DVK_USE_PLATFORM_METAL_EXT",
];

#if OS == .WINDOWS {
    DEFAULT_ARGS :: WINDOWS_ARGS;
    GENERATED_FILE :: "generated_windows.jai";
    GENERATED_FUNC_FILE :: "generated_funcs_windows.jai";
} else #if OS == .LINUX {
    DEFAULT_ARGS :: LINUX_ARGS;
    GENERATED_FILE :: "generated_linux.jai";
    GENERATED_FUNC_FILE :: "generated_funcs_linux.jai";
} else #if OS == .MACOS {
    DEFAULT_ARGS :: MACOS_ARGS;
    GENERATED_FILE :: "generated_macos.jai";
    GENERATED_FUNC_FILE :: "generated_funcs_macos.jai";
}


#if AT_COMPILE_TIME {
    #run {
        set_build_options_dc(.{do_output=false});
        if !generate_bindings() {
            compiler_set_workspace_status(.FAILED);
        }
    }
} else {
    #import "System";

    main :: () {
        set_working_directory(path_strip_filename(get_path_of_running_executable()));
        if !generate_bindings() {
            exit(1);
        }
    }
}

//--------------------

OMIT_LIST :: string.[
    // These are defined manually:
    "VK_NULL_HANDLE",
    "VK_SHADER_UNUSED_KHR",
    "VK_TRUE",
    "VK_FALSE",
    "VK_WHOLE_SIZE",
    "VK_ATTACHMENT_UNUSED",
    "VK_QUEUE_FAMILY_IGNORED",
    "VK_REMAINING_ARRAY_LAYERS",
    "VK_REMAINING_MIP_LEVELS",
    "VK_SUBPASS_EXTERNAL",
    "VK_MAX_PHYSICAL_DEVICE_NAME_SIZE",
    "VK_UUID_SIZE",
    "VK_MAX_MEMORY_TYPES",
    "VK_MAX_MEMORY_HEAPS",
    "VK_MAX_EXTENSION_NAME_SIZE",
    "VK_MAX_DESCRIPTION_SIZE",
];


generate_bindings :: () -> bool {
    output_filename: string;
    opts: Generate_Bindings_Options;
    {
        using opts;

        output_filename = GENERATED_FILE;

        for DEFAULT_ARGS {
            array_add(*extra_clang_arguments, it);
        }

        array_add(*source_files, vulkan_h_location);

        generate_library_declarations = false;
        omit_global_declarations = false;
        will_print_bindings = generate_funcs;

        visitor     = vulkan_visitor;
        generate_compile_time_struct_checks = false;
        log_unsupported = true;
    }

    return generate_bindings(opts, output_filename);
}

available_flag_bits: Table(string, *Enum);
struct_type_decl: *Enum;

vulkan_visitor :: (decl: *Declaration, parent_decl: *Declaration) -> Declaration_Visit_Result {
    // Omit header definitions (ex: VULKAN_H_)
    if decl.kind == .MACRO_DEFINITION && ends_with(decl.name, "_H_") {
        // print("MACRO_DEFINITION removed: %\n", decl.name);
        decl.decl_flags |= .OMIT_FROM_OUTPUT;
        return .STOP;
    }


    // Is this guaranteed?
    if decl.type {

        if decl.type.type_of_function {
            type := decl.type.type_of_function;

            if type.arguments.count > 0 {
                if type.arguments[0].type.type_of_typedef {
                    type_name := type.arguments[0].type.type_of_typedef.name;
                    if (type_name == "VkDevice" || type_name == "VkQueue" || type_name == "VkCommandBuffer") && decl.name != "vkGetDeviceProcAddr" {
                        array_add(*device_funcs, decl.name);
                    } else if ((type_name == "VkInstance" || type_name == "VkPhysicalDevice") || decl.name == "vkGetDeviceProcAddr") && decl.name != "vkGetInstanceProcAddr" {
                        array_add(*instance_funcs, decl.name);
                    }
                }

            }

            if decl.kind == .FUNCTION {
                decl.decl_flags |= .OMIT_FROM_OUTPUT;
            }
        }
        // This is pretty unnecessary.
        if decl.name == {
            case "PFN_vkCreateInstance"; #through;
            case "PFN_vkDebugUtilsMessengerCallbackEXT"; #through;
            case "PFN_vkDeviceMemoryReportCallbackEXT"; #through;
            case "PFN_vkEnumerateInstanceExtensionProperties"; #through;
            case "PFN_vkEnumerateInstanceLayerProperties"; #through;
            case "PFN_vkEnumerateInstanceVersion";
                array_add(*loader_funcs, slice(decl.name, 4, decl.name.count - 4));
        }
    }

    // Omit our OMIT_LIST
    if !parent_decl && array_find(OMIT_LIST, decl.name) {
        //print("OMIT_LIST: %\n", decl.name);
        decl.decl_flags |= .OMIT_FROM_OUTPUT;
        return .STOP;
    }

    if decl.kind == .ENUM {
        en := cast(*Enum)decl;
        if en.name == "VkStructureType" {
            struct_type_decl = en; // Save for later
        }
        
        // Almost all enums should be unsigned
        if en.type && decl.name != "VkResult" {
            if en.type.size == {
                case 1;
                    en.type = context.generator.type_def_u8;
                case 2;
                    en.type = context.generator.type_def_u16;
                case 4;
                    en.type = context.generator.type_def_u32;
                case 8;
                    en.type = context.generator.type_def_u64;
            }
        }

        if contains(decl.name, "FlagBits") {
            en.flags |= .IS_ENUM_FLAGS;
            en.flags |= .VALUES_IN_HEX;

            // Remember this so we can replace the generic VkFlags aliases with the actual enum_flag's type below. :VkFlags
            table_add(*available_flag_bits, decl.name, en);
        }
    }

    // Replace typedef which has "VkFlags" as value. :VkFlags
    // VkAccessFlags :: VkFlags   ->   VkAccessFlags :: VkAccessFlagBits;
    // We don't change the name of the FlagBits enum directly because both the ...FlagBits and the ...Flags aliases are used in declarations.
    if decl.kind == .TYPEDEF && decl.type.type_of_typedef && decl.type.type_of_typedef.name == "VkFlags"  {
        //print("TYPEDEF(VkFlags):%\n", << decl.name);
        flags_name := replace(decl.name, "Flags", "FlagBits");
        found, enum_decl := table_find(*available_flag_bits, flags_name);
        if found {
            type := New(CType);
            type.type_of_enum = enum_decl;
            type.size = enum_decl.type.size;
            decl.type = type;
        }
    }

    // Set the default value for sType.
    if parent_decl && parent_decl.kind == .STRUCT && parent_decl.name != "VkBaseInStructure" && parent_decl.name != "VkBaseOutStructure" && 
            decl.kind == .DECLARATION && decl.name == "sType" {

        enum_value_name := get_sType_default_value_from_struct_name(parent_decl.name);

        // Vulkan has inconsisant naming for things, so the generator can't find these enum values because it splits or doesn't split
        // numbers correctly in newer cases. This manually changes the name of the enum so the generator can find it.
        if enum_value_name == "PHYSICAL_DEVICE_VULKAN_11_FEATURES" then enum_value_name = "PHYSICAL_DEVICE_VULKAN_1_1_FEATURES";
        if enum_value_name == "PHYSICAL_DEVICE_VULKAN_11_PROPERTIES" then enum_value_name = "PHYSICAL_DEVICE_VULKAN_1_1_PROPERTIES";
        if enum_value_name == "PHYSICAL_DEVICE_VULKAN_12_FEATURES" then enum_value_name = "PHYSICAL_DEVICE_VULKAN_1_2_FEATURES";
        if enum_value_name == "PHYSICAL_DEVICE_VULKAN_12_PROPERTIES" then enum_value_name = "PHYSICAL_DEVICE_VULKAN_1_2_PROPERTIES";
        if enum_value_name == "PHYSICAL_DEVICE_VULKAN_13_FEATURES" then enum_value_name = "PHYSICAL_DEVICE_VULKAN_1_3_FEATURES";
        if enum_value_name == "PHYSICAL_DEVICE_VULKAN_13_PROPERTIES" then enum_value_name = "PHYSICAL_DEVICE_VULKAN_1_3_PROPERTIES";
        if enum_value_name == "PHYSICAL_DEVICE_VULKAN_14_FEATURES" then enum_value_name = "PHYSICAL_DEVICE_VULKAN_1_4_FEATURES";
        if enum_value_name == "PHYSICAL_DEVICE_VULKAN_14_PROPERTIES" then enum_value_name = "PHYSICAL_DEVICE_VULKAN_1_4_PROPERTIES";
        if enum_value_name == "PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTCHDR_FEATURES" then enum_value_name = "PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES";
        if enum_value_name == "PHYSICAL_DEVICE_RGBA_10_X_6_FORMATS_FEATURES_EXT" then enum_value_name = "PHYSICAL_DEVICE_RGBA10X6_FORMATS_FEATURES_EXT";
        if enum_value_name == "PHYSICAL_DEVICE_IMAGE_2_D_VIEW_OF_3_D_FEATURES_EXT" then enum_value_name = "PHYSICAL_DEVICE_IMAGE_2D_VIEW_OF_3D_FEATURES_EXT";
        if enum_value_name == "PHYSICAL_DEVICE_IMAGE_SLICED_VIEW_OF_3_D_FEATURES_EXT" then enum_value_name = "PHYSICAL_DEVICE_IMAGE_SLICED_VIEW_OF_3D_FEATURES_EXT";
        if enum_value_name == "D_3_D_12_FENCE_SUBMIT_INFO_KHR" then enum_value_name = "D3D12_FENCE_SUBMIT_INFO_KHR";


        enum_value: *Declaration;
        for struct_type_decl.enumerates {
            if it.output_name == enum_value_name {
                enum_value = it;
                break;
            }
        }
        assert(enum_value != null, "Could not find % enum value for \"%\"", struct_type_decl.name, enum_value_name);

        literal := New(Literal);
        literal.literal_kind = .ENUM;
        literal.enum_type = struct_type_decl;
        literal.enum_value = enum_value;
        decl.expression = literal;
    }

    return .RECURSE;
}

get_sType_default_value_from_struct_name :: (name: string) -> string {
    assert(name.count >= 3);

    is_upper :: (byte: u8) -> bool {
        if byte >= #char "A" && byte <= #char "Z" return true;
        return false;
    }

    is_num :: (byte: u8) -> bool {
        if byte >= #char "0" && byte <= #char "9" return true;
        return false;
    }
    

    builder: String_Builder;
    append(*builder, name[2]);
    for i:3..name.count-1 {
        if is_upper(name[i]) {
            is_first_uppercase := !is_upper(name[i-1]);
            is_end_of_uppercase_word := (i != name.count-1 && !is_upper(name[i+1]) && !is_num(name[i+1]));
            is_bit_count := is_num(name[i-1]) && slice(name, i, 3) == "Bit";
            if (is_first_uppercase || is_end_of_uppercase_word) && !is_bit_count {
                append(*builder, #char "_");
            } else if (i >= 4 && slice(name, i-4, 4) == "AABB") { // Special case hack for names involing AABB
                append(*builder, #char "_");
            }
            append(*builder, name[i]);
        } else if is_num(name[i]) {
            if !is_num(name[i-1]) {

                // Here we check a bunch of special cases where a number should be after a letter without an underscore.
                skip_underscore := false;
                skip_underscore ||= slice(name, i-1, 3) == "H26"; // Special case for H264 and H265
                skip_underscore ||= slice(name, i-2, 2) == "AV"; // AV1
                if i >= 4 {
                    skip_underscore ||= slice(name, i-4, 4) == "loat" && name[i] != "2"; // Bfloat and Float, but not float 2 features
                    skip_underscore ||= slice(name, i-4, 4) == "Uint";
                    skip_underscore ||= slice(name, i-3, 5) == "Win32";
                }
                skip_underscore ||= slice(name, i-3, 3) == "Int";
                if !skip_underscore {
                    append(*builder, #char "_");
                }
            }
            append(*builder, name[i]);
        } else {
            append(*builder, to_upper(name[i]));
        }
    }

    return builder_to_string(*builder);
}


device_funcs: [..]string;
instance_funcs: [..]string;
loader_funcs: [..]string;

Function_Doc :: struct {
    brief: string;
    params: [..]string;
    found: bool;
}

cache_file_path_for :: (func_name: string) -> string {
    return tprint("%/%.txt", DOCS_CACHE_DIR, func_name);
}

normalize_whitespace :: (s: string) -> string {
    builder: String_Builder;
    init_string_builder(*builder);

    last_was_space := false;
    for s {
        ch := it;
        is_space := ch == #char " " || ch == #char "\n" || ch == #char "\r" || ch == #char "\t";
        if is_space {
            if !last_was_space {
                append(*builder, #char " ");
            }
            last_was_space = true;
        } else {
            append(*builder, ch);
            last_was_space = false;
        }
    }

    return trim(builder_to_string(*builder));
}

decode_html_entities :: (s: string) -> string {
    result := s;

    {
        temp := replace(result, "&amp;", "&");
        result = temp;
    }
    {
        temp := replace(result, "&lt;", "<");
        result = temp;
    }
    {
        temp := replace(result, "&gt;", ">");
        result = temp;
    }
    {
        temp := replace(result, "&quot;", "\"");
        result = temp;
    }
    {
        temp := replace(result, "&#39;", "'");
        result = temp;
    }
    {
        temp := replace(result, "&nbsp;", " ");
        result = temp;
    }

    return result;
}

strip_html_tags :: (s: string) -> string {
    builder: String_Builder;
    init_string_builder(*builder);

    in_tag := false;
    for s {
        ch := it;
        if ch == #char "<" {
            in_tag = true;
            continue;
        }
        if ch == #char ">" {
            in_tag = false;
            continue;
        }
        if !in_tag {
            append(*builder, ch);
        }
    }

    return decode_html_entities(builder_to_string(*builder));
}

parse_doc_from_html :: (func_name: string, html: string) -> Function_Doc {
    result: Function_Doc;

    name_marker := "<h2 id=\"_name\"";
    params_marker := "<h2 id=\"_parameters\"";

    name_header_idx := find_index_from_left(html, name_marker);
    if name_header_idx != -1 {
        p_start := find_index_from_left(html, "<p>", name_header_idx);
        if p_start != -1 {
            p_end := find_index_from_left(html, "</p>", p_start);
            if p_end != -1 && p_end > p_start+3 {
                raw_name_line := slice(html, p_start+3, p_end-(p_start+3));
                name_line := normalize_whitespace(strip_html_tags(raw_name_line));

                prefix := tprint("% - ", func_name);
                if begins_with(name_line, prefix) {
                    result.brief = trim(slice(name_line, prefix.count, name_line.count-prefix.count));
                } else {
                    found_dash, _, right := split_from_left(name_line, " - ");
                    if found_dash {
                        result.brief = trim(right);
                    }
                }
            }
        }
    }

    params_header_idx := find_index_from_left(html, params_marker);
    if params_header_idx != -1 {
        params_end_idx := find_index_from_left(html, "<h2 id=\"_", params_header_idx+1);
        if params_end_idx == -1 {
            params_end_idx = html.count;
        }

        params_section := slice(html, params_header_idx, params_end_idx-params_header_idx);
        search_idx := 0;

        while true {
            entry_start := find_index_from_left(params_section, "<p><code>", search_idx);
            if entry_start == -1 break;

            name_start := entry_start + 9;
            name_end := find_index_from_left(params_section, "</code>", name_start);
            if name_end == -1 break;

            param_name := slice(params_section, name_start, name_end-name_start);

            p_end := find_index_from_left(params_section, "</p>", name_end);
            if p_end == -1 break;

            desc_start := name_end + 7;
            raw_desc := slice(params_section, desc_start, p_end-desc_start);
            desc := normalize_whitespace(strip_html_tags(raw_desc));

            if begins_with(desc, "is ") {
                desc = slice(desc, 3, desc.count-3);
            } else if begins_with(desc, "are ") {
                desc = slice(desc, 4, desc.count-4);
            }
            desc = trim(desc);

            if param_name && desc {
                array_add(*result.params, tprint("%: %", param_name, desc));
            }

            search_idx = p_end + 4;
        }
    }

    result.found = result.brief || result.params.count > 0;
    return result;
}

read_doc_cache :: (func_name: string) -> Function_Doc {
    result: Function_Doc;

    path := cache_file_path_for(func_name);
    cache_text, ok := read_entire_file(path, log_errors = false);
    if !ok {
        return result;
    }
    if !cache_text {
        result.brief = DOC_CACHE_NOT_FOUND;
        return result;
    }

    lines := split(cache_text, #char "\n");
    if lines.count == 0 {
        result.brief = DOC_CACHE_NOT_FOUND;
        return result;
    }

    first_line := trim(lines[0]);
    if first_line == DOC_CACHE_NOT_FOUND {
        result.brief = DOC_CACHE_NOT_FOUND;
        return result;
    }

    result.brief = first_line;
    for i: 1..lines.count-1 {
        line := trim(lines[i]);
        if line {
            array_add(*result.params, line);
        }
    }

    result.found = result.brief || result.params.count > 0;
    return result;
}

write_doc_cache_not_found :: (func_name: string) {
    make_directory_if_it_does_not_exist(DOCS_CACHE_DIR, recursive = true);
    success := write_entire_file(cache_file_path_for(func_name), tprint("%\n", DOC_CACHE_NOT_FOUND));
    if !success {
        log_error("Failed to write Vulkan docs cache miss for %", func_name);
    }
}

write_doc_cache :: (func_name: string, doc: Function_Doc) {
    if !doc.found return;

    make_directory_if_it_does_not_exist(DOCS_CACHE_DIR, recursive = true);

    builder: String_Builder;
    init_string_builder(*builder);

    append(*builder, doc.brief);
    append(*builder, "\n");
    for doc.params {
        append(*builder, it);
        append(*builder, "\n");
    }

    success := write_entire_file(cache_file_path_for(func_name), *builder);
    if !success {
        log_error("Failed to write Vulkan docs cache for %", func_name);
    }
}

fetch_doc_html :: (func_name: string) -> string, bool, int {
    url := tprint("%/%.html", VULKAN_DOCS_BASE_URL, func_name);

    process_result, output_string, _, timeout_reached := run_command(
        "curl",
        "-s",
        "-L",
        "--max-time", "10",
        "-w",
        "\n__HTTP_STATUS__:%{http_code}\n",
        url,
        capture_and_return_output = true,
        timeout_ms = 15000
    );

    if timeout_reached {
        log_error("Curl timed out while fetching docs for %", func_name);
        return "", false, 0;
    }
    if process_result.type != .EXITED || process_result.exit_code != 0 {
        return "", false, 0;
    }

    found, body, status_text := split_from_right(output_string, DOC_HTTP_STATUS_MARKER);
    if !found {
        return "", false, 0;
    }

    status_line := trim(status_text);
    status_code, ok := parse_int(*status_line, int);
    if !ok {
        return "", false, 0;
    }

    return body, true, status_code;
}

get_vulkan_function_doc :: (func_name: string) -> Function_Doc {
    cached := read_doc_cache(func_name);
    if cached.brief == DOC_CACHE_NOT_FOUND {
        return .{};
    }
    if cached.found {
        return cached;
    }

    // Fetch from web if not cached
    html, ok, status_code := fetch_doc_html(func_name);
    if !ok {
        log("Fetching docs for % timed out or failed", func_name);
        return .{};
    }
    if status_code == 404 {
        log("Docs not found (404) for %", func_name);
        write_doc_cache_not_found(func_name);
        return .{};
    }
    if status_code != 200 {
        log("Docs fetch returned status % for %", status_code, func_name);
        return .{};
    }

    log("Loaded docs from site: %", func_name);
    doc := parse_doc_from_html(func_name, html);
    if doc.found {
        write_doc_cache(func_name, doc);
    }

    return doc;
}

write_function_doc_comment :: (builder: *String_Builder, func_name: string, indent := "") {
    doc := get_vulkan_function_doc(func_name);
    if !doc.found return;

    append(builder, "\n");

    append(builder, indent);
    append(builder, "// ");
    append(builder, func_name);
if doc.brief {
        append(builder, " - ");
        append(builder, doc.brief);
    }
    append(builder, "\n");

    for doc.params {
        append(builder, indent);
        append(builder, "//   ");
        append(builder, it);
        append(builder, "\n");
    }
}

generate_funcs :: () {
    builder: String_Builder;
    init_string_builder(*builder);

    write_func_variable_declaration :: (builder: *String_Builder, func_name: string, indent := "") {
        append(builder, indent);
        append(builder, func_name);
        append(builder, ": PFN_");
        append(builder, func_name);
        append(builder, ";\n");
    }

    write_func_variable_assignment_device :: (builder: *String_Builder, func_name: string, prefix := "") {
        append(builder, prefix);
        append(builder, func_name);
        append(builder, " = xx vkGetDeviceProcAddr(device, \"");
        append(builder, func_name);
        append(builder, "\");\n");
    }
    write_func_variable_assignment_instance :: (builder: *String_Builder, func_name: string, prefix := "") {
        append(builder, prefix);
        append(builder, func_name);
        append(builder, " = xx vkGetInstanceProcAddr(instance, \"");
        append(builder, func_name);
        append(builder, "\");\n");
    }
    write_func_variable_assignment_loader :: (builder: *String_Builder, func_name: string, prefix := "") {
        append(builder, prefix);
        append(builder, func_name);
        append(builder, " = xx vkGetInstanceProcAddr(null, \"");
        append(builder, func_name);
        append(builder, "\");\n");
    }

    for loader_funcs {
        write_function_doc_comment(*builder, it);
        write_func_variable_declaration(*builder, it);
    }
    for instance_funcs {
        write_function_doc_comment(*builder, it);
        write_func_variable_declaration(*builder, it);
    }
    for device_funcs {
        write_function_doc_comment(*builder, it);
        write_func_variable_declaration(*builder, it);
    }

    append(*builder, "\n\nDevice_VTable :: struct {\n");

    for device_funcs {
        write_func_variable_declaration(*builder, it, "    ");
    }

    append(*builder, "};\n\nload_proc_addresses_vtable :: (device: VkDevice, vtable: *Device_VTable) {\n");

    for device_funcs {
        write_func_variable_assignment_device(*builder, it, "    vtable.");
    }

    append(*builder, "}\n\nload_device_proc_addresses :: (device: VkDevice) {\n");

    for device_funcs {
        write_func_variable_assignment_device(*builder, it, "    ");
    }

    append(*builder, "}\n\nload_instance_proc_addresses :: (instance: VkInstance) {\n");

    for instance_funcs {
        write_func_variable_assignment_instance(*builder, it, "    ");
    }
    for device_funcs {
        write_func_variable_assignment_instance(*builder, it, "    ");
    }

    append(*builder, "}\n\nload_global_proc_addresses :: () {\n\n");

    for loader_funcs {
        write_func_variable_assignment_loader(*builder, it, "    ");
    }

    append(*builder, "}\n");


    success := write_entire_file(GENERATED_FUNC_FILE, *builder);
}

#scope_file
#import "Basic";
#import "Compiler";
#import "Check";
#import "Bindings_Generator";
#import "File";
#import "String";
#import "Hash_Table";
#import "Process";

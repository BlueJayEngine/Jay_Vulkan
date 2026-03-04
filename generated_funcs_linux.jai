
// vkCreateInstance - Create a new Vulkan instance
//   pCreateInfo: a pointer to a VkInstanceCreateInfo structure controlling creation of the instance.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pInstance: points a VkInstance handle in which the resulting instance is returned.
vkCreateInstance: PFN_vkCreateInstance;

// vkEnumerateInstanceExtensionProperties - Returns up to requested number of global extension properties
//   pLayerName: either NULL or a pointer to a null-terminated UTF-8 string naming the layer to retrieve extensions from.
//   pPropertyCount: a pointer to an integer related to the number of extension properties available or queried, as described below.
//   pProperties: either NULL or a pointer to an array of VkExtensionProperties structures.
vkEnumerateInstanceExtensionProperties: PFN_vkEnumerateInstanceExtensionProperties;

// vkEnumerateInstanceLayerProperties - Returns up to requested number of global layer properties
//   pPropertyCount: a pointer to an integer related to the number of layer properties available or queried, as described below.
//   pProperties: either NULL or a pointer to an array of VkLayerProperties structures.
vkEnumerateInstanceLayerProperties: PFN_vkEnumerateInstanceLayerProperties;

// vkEnumerateInstanceVersion - Query instance-level version before instance creation
//   pApiVersion: a pointer to a uint32_t, which is the version of Vulkan supported by instance-level functionality, encoded as described in Version Numbers.
vkEnumerateInstanceVersion: PFN_vkEnumerateInstanceVersion;
vkDebugUtilsMessengerCallbackEXT: PFN_vkDebugUtilsMessengerCallbackEXT;
vkDeviceMemoryReportCallbackEXT: PFN_vkDeviceMemoryReportCallbackEXT;

// vkDestroyInstance - Destroy an instance of Vulkan
//   instance: the handle of the instance to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyInstance: PFN_vkDestroyInstance;

// vkEnumeratePhysicalDevices - Enumerates the physical devices accessible to a Vulkan instance
//   instance: a handle to a Vulkan instance previously created with vkCreateInstance.
//   pPhysicalDeviceCount: a pointer to an integer related to the number of physical devices available or queried, as described below.
//   pPhysicalDevices: either NULL or a pointer to an array of VkPhysicalDevice handles.
vkEnumeratePhysicalDevices: PFN_vkEnumeratePhysicalDevices;

// vkGetPhysicalDeviceFeatures - Reports capabilities of a physical device
//   physicalDevice: the physical device from which to query the supported features.
//   pFeatures: a pointer to a VkPhysicalDeviceFeatures structure in which the physical device features are returned. For each feature, a value of VK_TRUE specifies that the feature is supported on this physical device, and VK_FALSE specifies that the feature is not supported.
vkGetPhysicalDeviceFeatures: PFN_vkGetPhysicalDeviceFeatures;

// vkGetPhysicalDeviceFormatProperties - Lists physical device&#8217;s format capabilities
//   physicalDevice: the physical device from which to query the format properties.
//   format: the format whose properties are queried.
//   pFormatProperties: a pointer to a VkFormatProperties structure in which physical device properties for format are returned.
vkGetPhysicalDeviceFormatProperties: PFN_vkGetPhysicalDeviceFormatProperties;

// vkGetPhysicalDeviceImageFormatProperties - Lists physical device&#8217;s image format capabilities
//   physicalDevice: the physical device from which to query the image capabilities.
//   format: a VkFormat value specifying the image format, corresponding to VkImageCreateInfo::format.
//   type: a VkImageType value specifying the image type, corresponding to VkImageCreateInfo::imageType.
//   tiling: a VkImageTiling value specifying the image tiling, corresponding to VkImageCreateInfo::tiling.
//   usage: a bitmask of VkImageUsageFlagBits specifying the intended usage of the image, corresponding to VkImageCreateInfo::usage.
//   flags: a bitmask of VkImageCreateFlagBits specifying additional parameters of the image, corresponding to VkImageCreateInfo::flags.
//   pImageFormatProperties: a pointer to a VkImageFormatProperties structure in which capabilities are returned.
vkGetPhysicalDeviceImageFormatProperties: PFN_vkGetPhysicalDeviceImageFormatProperties;

// vkGetPhysicalDeviceProperties - Returns properties of a physical device
//   physicalDevice: the handle to the physical device whose properties will be queried.
//   pProperties: a pointer to a VkPhysicalDeviceProperties structure in which properties are returned.
vkGetPhysicalDeviceProperties: PFN_vkGetPhysicalDeviceProperties;

// vkGetPhysicalDeviceQueueFamilyProperties - Reports properties of the queues of the specified physical device
//   physicalDevice: the handle to the physical device whose properties will be queried.
//   pQueueFamilyPropertyCount: a pointer to an integer related to the number of queue families available or queried, as described below.
//   pQueueFamilyProperties: either NULL or a pointer to an array of VkQueueFamilyProperties structures.
vkGetPhysicalDeviceQueueFamilyProperties: PFN_vkGetPhysicalDeviceQueueFamilyProperties;

// vkGetPhysicalDeviceMemoryProperties - Reports memory information for the specified physical device
//   physicalDevice: the handle to the device to query.
//   pMemoryProperties: a pointer to a VkPhysicalDeviceMemoryProperties structure in which the properties are returned.
vkGetPhysicalDeviceMemoryProperties: PFN_vkGetPhysicalDeviceMemoryProperties;

// vkGetDeviceProcAddr - Return a function pointer for a command
vkGetDeviceProcAddr: PFN_vkGetDeviceProcAddr;

// vkCreateDevice - Create a new device instance
//   physicalDevice: must be one of the device handles returned from a call to vkEnumeratePhysicalDevices (see Physical Device Enumeration).
//   pCreateInfo: a pointer to a VkDeviceCreateInfo structure containing information about how to create the device.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pDevice: a pointer to a handle in which the created VkDevice is returned.
vkCreateDevice: PFN_vkCreateDevice;

// vkEnumerateDeviceExtensionProperties - Returns properties of available physical device extensions
//   physicalDevice: the physical device that will be queried.
//   pLayerName: either NULL or a pointer to a null-terminated UTF-8 string naming the layer to retrieve extensions from.
//   pPropertyCount: a pointer to an integer related to the number of extension properties available or queried, and is treated in the same fashion as the vkEnumerateInstanceExtensionProperties::pPropertyCount parameter.
//   pProperties: either NULL or a pointer to an array of VkExtensionProperties structures.
vkEnumerateDeviceExtensionProperties: PFN_vkEnumerateDeviceExtensionProperties;

// vkEnumerateDeviceLayerProperties - Returns properties of available physical device layers
//   physicalDevice: the physical device that will be queried.
//   pPropertyCount: a pointer to an integer related to the number of layer properties available or queried.
//   pProperties: either NULL or a pointer to an array of VkLayerProperties structures.
vkEnumerateDeviceLayerProperties: PFN_vkEnumerateDeviceLayerProperties;

// vkGetPhysicalDeviceSparseImageFormatProperties - Retrieve properties of an image format applied to sparse images
//   physicalDevice: the physical device from which to query the sparse image format properties.
//   format: the image format.
//   type: the dimensionality of the image.
//   samples: a VkSampleCountFlagBits value specifying the number of samples per texel.
//   usage: a bitmask describing the intended usage of the image.
//   tiling: the tiling arrangement of the texel blocks in memory.
//   pPropertyCount: a pointer to an integer related to the number of sparse format properties available or queried, as described below.
//   pProperties: either NULL or a pointer to an array of VkSparseImageFormatProperties structures.
vkGetPhysicalDeviceSparseImageFormatProperties: PFN_vkGetPhysicalDeviceSparseImageFormatProperties;

// vkEnumeratePhysicalDeviceGroups - Enumerates groups of physical devices that can be used to create a single logical device
//   instance: a handle to a Vulkan instance previously created with vkCreateInstance.
//   pPhysicalDeviceGroupCount: a pointer to an integer related to the number of device groups available or queried, as described below.
//   pPhysicalDeviceGroupProperties: either NULL or a pointer to an array of VkPhysicalDeviceGroupProperties structures.
vkEnumeratePhysicalDeviceGroups: PFN_vkEnumeratePhysicalDeviceGroups;

// vkGetPhysicalDeviceFeatures2 - Reports capabilities of a physical device
//   physicalDevice: the physical device from which to query the supported features.
//   pFeatures: a pointer to a VkPhysicalDeviceFeatures2 structure in which the physical device features are returned.
vkGetPhysicalDeviceFeatures2: PFN_vkGetPhysicalDeviceFeatures2;

// vkGetPhysicalDeviceProperties2 - Returns properties of a physical device
//   physicalDevice: the handle to the physical device whose properties will be queried.
//   pProperties: a pointer to a VkPhysicalDeviceProperties2 structure in which properties are returned.
vkGetPhysicalDeviceProperties2: PFN_vkGetPhysicalDeviceProperties2;

// vkGetPhysicalDeviceFormatProperties2 - Lists physical device&#8217;s format capabilities
//   physicalDevice: the physical device from which to query the format properties.
//   format: the format whose properties are queried.
//   pFormatProperties: a pointer to a VkFormatProperties2 structure in which physical device properties for format are returned.
vkGetPhysicalDeviceFormatProperties2: PFN_vkGetPhysicalDeviceFormatProperties2;

// vkGetPhysicalDeviceImageFormatProperties2 - Lists physical device&#8217;s image format capabilities
//   physicalDevice: the physical device from which to query the image capabilities.
//   pImageFormatInfo: a pointer to a VkPhysicalDeviceImageFormatInfo2 structure describing the parameters that would be consumed by vkCreateImage.
//   pImageFormatProperties: a pointer to a VkImageFormatProperties2 structure in which capabilities are returned.
vkGetPhysicalDeviceImageFormatProperties2: PFN_vkGetPhysicalDeviceImageFormatProperties2;

// vkGetPhysicalDeviceQueueFamilyProperties2 - Reports properties of the queues of the specified physical device
//   physicalDevice: the handle to the physical device whose properties will be queried.
//   pQueueFamilyPropertyCount: a pointer to an integer related to the number of queue families available or queried, as described in vkGetPhysicalDeviceQueueFamilyProperties.
//   pQueueFamilyProperties: either NULL or a pointer to an array of VkQueueFamilyProperties2 structures.
vkGetPhysicalDeviceQueueFamilyProperties2: PFN_vkGetPhysicalDeviceQueueFamilyProperties2;

// vkGetPhysicalDeviceMemoryProperties2 - Reports memory information for the specified physical device
//   physicalDevice: the handle to the device to query.
//   pMemoryProperties: a pointer to a VkPhysicalDeviceMemoryProperties2 structure in which the properties are returned.
vkGetPhysicalDeviceMemoryProperties2: PFN_vkGetPhysicalDeviceMemoryProperties2;

// vkGetPhysicalDeviceSparseImageFormatProperties2 - Retrieve properties of an image format applied to sparse images
//   physicalDevice: the physical device from which to query the sparse image format properties.
//   pFormatInfo: a pointer to a VkPhysicalDeviceSparseImageFormatInfo2 structure containing input parameters to the command.
//   pPropertyCount: a pointer to an integer related to the number of sparse format properties available or queried, as described below.
//   pProperties: either NULL or a pointer to an array of VkSparseImageFormatProperties2 structures.
vkGetPhysicalDeviceSparseImageFormatProperties2: PFN_vkGetPhysicalDeviceSparseImageFormatProperties2;

// vkGetPhysicalDeviceExternalBufferProperties - Query external handle types supported by buffers
//   physicalDevice: the physical device from which to query the buffer capabilities.
//   pExternalBufferInfo: a pointer to a VkPhysicalDeviceExternalBufferInfo structure describing the parameters that would be consumed by vkCreateBuffer.
//   pExternalBufferProperties: a pointer to a VkExternalBufferProperties structure in which capabilities are returned.
vkGetPhysicalDeviceExternalBufferProperties: PFN_vkGetPhysicalDeviceExternalBufferProperties;

// vkGetPhysicalDeviceExternalFenceProperties - Function for querying external fence handle capabilities.
//   physicalDevice: the physical device from which to query the fence capabilities.
//   pExternalFenceInfo: a pointer to a VkPhysicalDeviceExternalFenceInfo structure describing the parameters that would be consumed by vkCreateFence.
//   pExternalFenceProperties: a pointer to a VkExternalFenceProperties structure in which capabilities are returned.
vkGetPhysicalDeviceExternalFenceProperties: PFN_vkGetPhysicalDeviceExternalFenceProperties;

// vkGetPhysicalDeviceExternalSemaphoreProperties - Function for querying external semaphore handle capabilities.
//   physicalDevice: the physical device from which to query the semaphore capabilities.
//   pExternalSemaphoreInfo: a pointer to a VkPhysicalDeviceExternalSemaphoreInfo structure describing the parameters that would be consumed by vkCreateSemaphore.
//   pExternalSemaphoreProperties: a pointer to a VkExternalSemaphoreProperties structure in which capabilities are returned.
vkGetPhysicalDeviceExternalSemaphoreProperties: PFN_vkGetPhysicalDeviceExternalSemaphoreProperties;

// vkGetPhysicalDeviceToolProperties - Reports properties of tools active on the specified physical device
//   physicalDevice: the handle to the physical device to query for active tools.
//   pToolCount: a pointer to an integer describing the number of tools active on physicalDevice.
//   pToolProperties: either NULL or a pointer to an array of VkPhysicalDeviceToolProperties structures.
vkGetPhysicalDeviceToolProperties: PFN_vkGetPhysicalDeviceToolProperties;

// vkDestroySurfaceKHR - Destroy a VkSurfaceKHR object
//   instance: the instance used to create the surface.
//   surface: the surface to destroy.
//   pAllocator: the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see Memory Allocation).
vkDestroySurfaceKHR: PFN_vkDestroySurfaceKHR;

// vkGetPhysicalDeviceSurfaceSupportKHR - Query if presentation is supported
//   physicalDevice: the physical device.
//   queueFamilyIndex: the queue family.
//   surface: the surface.
//   pSupported: a pointer to a VkBool32. VK_TRUE indicates support, and VK_FALSE indicates no support.
vkGetPhysicalDeviceSurfaceSupportKHR: PFN_vkGetPhysicalDeviceSurfaceSupportKHR;

// vkGetPhysicalDeviceSurfaceCapabilitiesKHR - Query surface capabilities
//   physicalDevice: the physical device that will be associated with the swapchain to be created, as described for vkCreateSwapchainKHR.
//   surface: the surface that will be associated with the swapchain.
//   pSurfaceCapabilities: a pointer to a VkSurfaceCapabilitiesKHR structure in which the capabilities are returned.
vkGetPhysicalDeviceSurfaceCapabilitiesKHR: PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR;

// vkGetPhysicalDeviceSurfaceFormatsKHR - Query color formats supported by surface
//   physicalDevice: the physical device that will be associated with the swapchain to be created, as described for vkCreateSwapchainKHR.
//   surface: the surface that will be associated with the swapchain.
//   pSurfaceFormatCount: a pointer to an integer related to the number of format pairs available or queried, as described below.
//   pSurfaceFormats: either NULL or a pointer to an array of VkSurfaceFormatKHR structures.
vkGetPhysicalDeviceSurfaceFormatsKHR: PFN_vkGetPhysicalDeviceSurfaceFormatsKHR;

// vkGetPhysicalDeviceSurfacePresentModesKHR - Query supported presentation modes
//   physicalDevice: the physical device that will be associated with the swapchain to be created, as described for vkCreateSwapchainKHR.
//   surface: the surface that will be associated with the swapchain.
//   pPresentModeCount: a pointer to an integer related to the number of presentation modes available or queried, as described below.
//   pPresentModes: either NULL or a pointer to an array of VkPresentModeKHR values, indicating the supported presentation modes.
vkGetPhysicalDeviceSurfacePresentModesKHR: PFN_vkGetPhysicalDeviceSurfacePresentModesKHR;

// vkGetPhysicalDevicePresentRectanglesKHR - Query present rectangles for a surface on a physical device
//   physicalDevice: the physical device.
//   surface: the surface.
//   pRectCount: a pointer to an integer related to the number of rectangles available or queried, as described below.
//   pRects: either NULL or a pointer to an array of VkRect2D structures.
vkGetPhysicalDevicePresentRectanglesKHR: PFN_vkGetPhysicalDevicePresentRectanglesKHR;

// vkGetPhysicalDeviceDisplayPropertiesKHR - Query information about the available displays
//   physicalDevice: a physical device.
//   pPropertyCount: a pointer to an integer related to the number of display devices available or queried, as described below.
//   pProperties: either NULL or a pointer to an array of VkDisplayPropertiesKHR structures.
vkGetPhysicalDeviceDisplayPropertiesKHR: PFN_vkGetPhysicalDeviceDisplayPropertiesKHR;

// vkGetPhysicalDeviceDisplayPlanePropertiesKHR - Query the plane properties
//   physicalDevice: a physical device.
//   pPropertyCount: a pointer to an integer related to the number of display planes available or queried, as described below.
//   pProperties: either NULL or a pointer to an array of VkDisplayPlanePropertiesKHR structures.
vkGetPhysicalDeviceDisplayPlanePropertiesKHR: PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR;

// vkGetDisplayPlaneSupportedDisplaysKHR - Query the list of displays a plane supports
//   physicalDevice: a physical device.
//   planeIndex: the plane which the application wishes to use, and must be in the range [0, physical device plane count - 1].
//   pDisplayCount: a pointer to an integer related to the number of displays available or queried, as described below.
//   pDisplays: either NULL or a pointer to an array of VkDisplayKHR handles.
vkGetDisplayPlaneSupportedDisplaysKHR: PFN_vkGetDisplayPlaneSupportedDisplaysKHR;

// vkGetDisplayModePropertiesKHR - Query the set of mode properties supported by the display
//   physicalDevice: the physical device associated with display.
//   display: the display to query.
//   pPropertyCount: a pointer to an integer related to the number of display modes available or queried, as described below.
//   pProperties: either NULL or a pointer to an array of VkDisplayModePropertiesKHR structures.
vkGetDisplayModePropertiesKHR: PFN_vkGetDisplayModePropertiesKHR;

// vkCreateDisplayModeKHR - Create a display mode
//   physicalDevice: the physical device associated with display.
//   display: the display to create an additional mode for.
//   pCreateInfo: a pointer to a VkDisplayModeCreateInfoKHR structure describing the new mode to create.
//   pAllocator: the allocator used for host memory allocated for the display mode object when there is no more specific allocator available (see Memory Allocation).
//   pMode: a pointer to a VkDisplayModeKHR handle in which the mode created is returned.
vkCreateDisplayModeKHR: PFN_vkCreateDisplayModeKHR;

// vkGetDisplayPlaneCapabilitiesKHR - Query capabilities of a mode and plane combination
//   physicalDevice: the physical device associated with the display specified by mode
//   mode: the display mode the application intends to program when using the specified plane. Note this parameter also implicitly specifies a display.
//   planeIndex: the plane which the application intends to use with the display, and is less than the number of display planes supported by the device.
//   pCapabilities: a pointer to a VkDisplayPlaneCapabilitiesKHR structure in which the capabilities are returned.
vkGetDisplayPlaneCapabilitiesKHR: PFN_vkGetDisplayPlaneCapabilitiesKHR;

// vkCreateDisplayPlaneSurfaceKHR - Create a VkSurfaceKHR structure representing a display plane and mode
//   instance: the instance corresponding to the physical device the targeted display is on.
//   pCreateInfo: a pointer to a VkDisplaySurfaceCreateInfoKHR structure specifying which mode, plane, and other parameters to use, as described below.
//   pAllocator: the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see Memory Allocation).
//   pSurface: a pointer to a VkSurfaceKHR handle in which the created surface is returned.
vkCreateDisplayPlaneSurfaceKHR: PFN_vkCreateDisplayPlaneSurfaceKHR;

// vkGetPhysicalDeviceVideoCapabilitiesKHR - Query video coding capabilities
//   physicalDevice: the physical device from which to query the video decode or encode capabilities.
//   pVideoProfile: a pointer to a VkVideoProfileInfoKHR structure.
//   pCapabilities: a pointer to a VkVideoCapabilitiesKHR structure in which the capabilities are returned.
vkGetPhysicalDeviceVideoCapabilitiesKHR: PFN_vkGetPhysicalDeviceVideoCapabilitiesKHR;

// vkGetPhysicalDeviceVideoFormatPropertiesKHR - Query supported video decode and encode image formats and capabilities
//   physicalDevice: the physical device from which to query the video format properties.
//   pVideoFormatInfo: a pointer to a VkPhysicalDeviceVideoFormatInfoKHR structure specifying the usage and video profiles for which supported image formats and capabilities are returned.
//   pVideoFormatPropertyCount: a pointer to an integer related to the number of video format properties available or queried, as described below.
//   pVideoFormatProperties: a pointer to an array of VkVideoFormatPropertiesKHR structures in which supported image formats and capabilities are returned.
vkGetPhysicalDeviceVideoFormatPropertiesKHR: PFN_vkGetPhysicalDeviceVideoFormatPropertiesKHR;
vkGetPhysicalDeviceFeatures2KHR: PFN_vkGetPhysicalDeviceFeatures2KHR;
vkGetPhysicalDeviceProperties2KHR: PFN_vkGetPhysicalDeviceProperties2KHR;
vkGetPhysicalDeviceFormatProperties2KHR: PFN_vkGetPhysicalDeviceFormatProperties2KHR;
vkGetPhysicalDeviceImageFormatProperties2KHR: PFN_vkGetPhysicalDeviceImageFormatProperties2KHR;
vkGetPhysicalDeviceQueueFamilyProperties2KHR: PFN_vkGetPhysicalDeviceQueueFamilyProperties2KHR;
vkGetPhysicalDeviceMemoryProperties2KHR: PFN_vkGetPhysicalDeviceMemoryProperties2KHR;
vkGetPhysicalDeviceSparseImageFormatProperties2KHR: PFN_vkGetPhysicalDeviceSparseImageFormatProperties2KHR;
vkEnumeratePhysicalDeviceGroupsKHR: PFN_vkEnumeratePhysicalDeviceGroupsKHR;
vkGetPhysicalDeviceExternalBufferPropertiesKHR: PFN_vkGetPhysicalDeviceExternalBufferPropertiesKHR;
vkGetPhysicalDeviceExternalSemaphorePropertiesKHR: PFN_vkGetPhysicalDeviceExternalSemaphorePropertiesKHR;
vkGetPhysicalDeviceExternalFencePropertiesKHR: PFN_vkGetPhysicalDeviceExternalFencePropertiesKHR;

// vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR - Reports properties of the performance query counters available on a queue family of a device
//   physicalDevice: the handle to the physical device whose queue family performance query counter properties will be queried.
//   queueFamilyIndex: the index into the queue family of the physical device we want to get properties for.
//   pCounterCount: a pointer to an integer related to the number of counters available or queried, as described below.
//   pCounters: either NULL or a pointer to an array of VkPerformanceCounterKHR structures.
//   pCounterDescriptions: either NULL or a pointer to an array of VkPerformanceCounterDescriptionKHR structures.
vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR: PFN_vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR;

// vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR - Reports the number of passes require for a performance query pool type
//   physicalDevice: the handle to the physical device whose queue family performance query counter properties will be queried.
//   pPerformanceQueryCreateInfo: a pointer to a VkQueryPoolPerformanceCreateInfoKHR of the performance query that is to be created.
//   pNumPasses: a pointer to an integer related to the number of passes required to query the performance query pool, as described below.
vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR: PFN_vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR;

// vkGetPhysicalDeviceSurfaceCapabilities2KHR - Reports capabilities of a surface on a physical device
//   physicalDevice: the physical device that will be associated with the swapchain to be created, as described for vkCreateSwapchainKHR.
//   pSurfaceInfo: a pointer to a VkPhysicalDeviceSurfaceInfo2KHR structure describing the surface and other fixed parameters that would be consumed by vkCreateSwapchainKHR.
//   pSurfaceCapabilities: a pointer to a VkSurfaceCapabilities2KHR structure in which the capabilities are returned.
vkGetPhysicalDeviceSurfaceCapabilities2KHR: PFN_vkGetPhysicalDeviceSurfaceCapabilities2KHR;

// vkGetPhysicalDeviceSurfaceFormats2KHR - Query color formats supported by surface
//   physicalDevice: the physical device that will be associated with the swapchain to be created, as described for vkCreateSwapchainKHR.
//   pSurfaceInfo: a pointer to a VkPhysicalDeviceSurfaceInfo2KHR structure describing the surface and other fixed parameters that would be consumed by vkCreateSwapchainKHR.
//   pSurfaceFormatCount: a pointer to an integer related to the number of format tuples available or queried, as described below.
//   pSurfaceFormats: either NULL or a pointer to an array of VkSurfaceFormat2KHR structures.
vkGetPhysicalDeviceSurfaceFormats2KHR: PFN_vkGetPhysicalDeviceSurfaceFormats2KHR;

// vkGetPhysicalDeviceDisplayProperties2KHR - Query information about the available displays
//   physicalDevice: a physical device.
//   pPropertyCount: a pointer to an integer related to the number of display devices available or queried, as described below.
//   pProperties: either NULL or a pointer to an array of VkDisplayProperties2KHR structures.
vkGetPhysicalDeviceDisplayProperties2KHR: PFN_vkGetPhysicalDeviceDisplayProperties2KHR;

// vkGetPhysicalDeviceDisplayPlaneProperties2KHR - Query information about the available display planes.
//   physicalDevice: a physical device.
//   pPropertyCount: a pointer to an integer related to the number of display planes available or queried, as described below.
//   pProperties: either NULL or a pointer to an array of VkDisplayPlaneProperties2KHR structures.
vkGetPhysicalDeviceDisplayPlaneProperties2KHR: PFN_vkGetPhysicalDeviceDisplayPlaneProperties2KHR;

// vkGetDisplayModeProperties2KHR - Query information about the available display modes.
//   physicalDevice: the physical device associated with display.
//   display: the display to query.
//   pPropertyCount: a pointer to an integer related to the number of display modes available or queried, as described below.
//   pProperties: either NULL or a pointer to an array of VkDisplayModeProperties2KHR structures.
vkGetDisplayModeProperties2KHR: PFN_vkGetDisplayModeProperties2KHR;

// vkGetDisplayPlaneCapabilities2KHR - Query capabilities of a mode and plane combination
//   physicalDevice: the physical device associated with pDisplayPlaneInfo.
//   pDisplayPlaneInfo: a pointer to a VkDisplayPlaneInfo2KHR structure describing the plane and mode.
//   pCapabilities: a pointer to a VkDisplayPlaneCapabilities2KHR structure in which the capabilities are returned.
vkGetDisplayPlaneCapabilities2KHR: PFN_vkGetDisplayPlaneCapabilities2KHR;

// vkGetPhysicalDeviceFragmentShadingRatesKHR - Get available shading rates for a physical device
//   physicalDevice: the handle to the physical device whose properties will be queried.
//   pFragmentShadingRateCount: a pointer to an integer related to the number of fragment shading rates available or queried, as described below.
//   pFragmentShadingRates: either NULL or a pointer to an array of VkPhysicalDeviceFragmentShadingRateKHR structures.
vkGetPhysicalDeviceFragmentShadingRatesKHR: PFN_vkGetPhysicalDeviceFragmentShadingRatesKHR;

// vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR - Query video encode quality level properties
//   physicalDevice: the physical device to query the video encode quality level properties for.
//   pQualityLevelInfo: a pointer to a VkPhysicalDeviceVideoEncodeQualityLevelInfoKHR structure specifying the video encode profile and quality level to query properties for.
//   pQualityLevelProperties: a pointer to a VkVideoEncodeQualityLevelPropertiesKHR structure in which the properties are returned.
vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR: PFN_vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR;

// vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR - Returns properties describing what cooperative matrix types are supported
//   physicalDevice: the physical device.
//   pPropertyCount: a pointer to an integer related to the number of cooperative matrix properties available or queried.
//   pProperties: either NULL or a pointer to an array of VkCooperativeMatrixPropertiesKHR structures.
vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR: PFN_vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR;

// vkGetPhysicalDeviceCalibrateableTimeDomainsKHR - Query calibrateable time domains
//   physicalDevice: the physical device from which to query the set of calibrateable time domains.
//   pTimeDomainCount: a pointer to an integer related to the number of calibrateable time domains available or queried, as described below.
//   pTimeDomains: either NULL or a pointer to an array of VkTimeDomainKHR values, indicating the supported calibrateable time domains.
vkGetPhysicalDeviceCalibrateableTimeDomainsKHR: PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsKHR;

// vkCreateDebugReportCallbackEXT - Create a debug report callback object
//   instance: the instance the callback will be logged on.
//   pCreateInfo: a pointer to a VkDebugReportCallbackCreateInfoEXT structure defining the conditions under which this callback will be called.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pCallback: a pointer to a VkDebugReportCallbackEXT handle in which the created object is returned.
vkCreateDebugReportCallbackEXT: PFN_vkCreateDebugReportCallbackEXT;

// vkDestroyDebugReportCallbackEXT - Destroy a debug report callback object
//   instance: the instance where the callback was created.
//   callback: the VkDebugReportCallbackEXT object to destroy. callback is an externally synchronized object and must not be used on more than one thread at a time. This means that vkDestroyDebugReportCallbackEXT must not be called when a callback is active.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyDebugReportCallbackEXT: PFN_vkDestroyDebugReportCallbackEXT;

// vkDebugReportMessageEXT - Inject a message into a debug stream
//   instance: the debug stream&#8217;s VkInstance.
//   flags: specifies the VkDebugReportFlagBitsEXT classification of this event/message.
//   objectType: a VkDebugReportObjectTypeEXT specifying the type of object being used or created at the time the event was triggered.
//   object: the object where the issue was detected. object can be VK_NULL_HANDLE if there is no object associated with the event.
//   location: an application-defined value.
//   messageCode: an application-defined value.
//   pLayerPrefix: the abbreviation of the component making this event/message.
//   pMessage: a null-terminated UTF-8 string detailing the trigger conditions.
vkDebugReportMessageEXT: PFN_vkDebugReportMessageEXT;

// vkGetPhysicalDeviceExternalImageFormatPropertiesNV - Determine image capabilities compatible with external memory handle types
//   physicalDevice: the physical device from which to query the image capabilities
//   format: the image format, corresponding to VkImageCreateInfo::format.
//   type: the image type, corresponding to VkImageCreateInfo::imageType.
//   tiling: the image tiling, corresponding to VkImageCreateInfo::tiling.
//   usage: the intended usage of the image, corresponding to VkImageCreateInfo::usage.
//   flags: a bitmask describing additional parameters of the image, corresponding to VkImageCreateInfo::flags.
//   externalHandleType: either one of the bits from VkExternalMemoryHandleTypeFlagBitsNV, or 0.
//   pExternalImageFormatProperties: a pointer to a VkExternalImageFormatPropertiesNV structure in which capabilities are returned.
vkGetPhysicalDeviceExternalImageFormatPropertiesNV: PFN_vkGetPhysicalDeviceExternalImageFormatPropertiesNV;

// vkReleaseDisplayEXT - Release access to an acquired VkDisplayKHR
//   physicalDevice: The physical device the display is on.
//   display: The display to release control of.
vkReleaseDisplayEXT: PFN_vkReleaseDisplayEXT;

// vkGetPhysicalDeviceSurfaceCapabilities2EXT - Query surface capabilities
//   physicalDevice: the physical device that will be associated with the swapchain to be created, as described for vkCreateSwapchainKHR.
//   surface: the surface that will be associated with the swapchain.
//   pSurfaceCapabilities: a pointer to a VkSurfaceCapabilities2EXT structure in which the capabilities are returned.
vkGetPhysicalDeviceSurfaceCapabilities2EXT: PFN_vkGetPhysicalDeviceSurfaceCapabilities2EXT;

// vkCreateDebugUtilsMessengerEXT - Create a debug messenger object
//   instance: the instance the messenger will be used with.
//   pCreateInfo: a pointer to a VkDebugUtilsMessengerCreateInfoEXT structure containing the callback pointer, as well as defining conditions under which this messenger will trigger the callback.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pMessenger: a pointer to a VkDebugUtilsMessengerEXT handle in which the created object is returned.
vkCreateDebugUtilsMessengerEXT: PFN_vkCreateDebugUtilsMessengerEXT;

// vkDestroyDebugUtilsMessengerEXT - Destroy a debug messenger object
//   instance: the instance where the callback was created.
//   messenger: the VkDebugUtilsMessengerEXT object to destroy. messenger is an externally synchronized object and must not be used on more than one thread at a time. This means that vkDestroyDebugUtilsMessengerEXT must not be called when a callback is active.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyDebugUtilsMessengerEXT: PFN_vkDestroyDebugUtilsMessengerEXT;

// vkSubmitDebugUtilsMessageEXT - Inject a message into a debug stream
//   instance: the debug stream&#8217;s VkInstance.
//   messageSeverity: a VkDebugUtilsMessageSeverityFlagBitsEXT value specifying the severity of this event/message.
//   messageTypes: a bitmask of VkDebugUtilsMessageTypeFlagBitsEXT specifying which type of event(s) to identify with this message.
//   pCallbackData: contains all the callback related data in the VkDebugUtilsMessengerCallbackDataEXT structure.
vkSubmitDebugUtilsMessageEXT: PFN_vkSubmitDebugUtilsMessageEXT;

// vkGetPhysicalDeviceMultisamplePropertiesEXT - Report sample count specific multisampling capabilities of a physical device
//   physicalDevice: the physical device from which to query the additional multisampling capabilities.
//   samples: a VkSampleCountFlagBits value specifying the sample count to query capabilities for.
//   pMultisampleProperties: a pointer to a VkMultisamplePropertiesEXT structure in which information about additional multisampling capabilities specific to the sample count is returned.
vkGetPhysicalDeviceMultisamplePropertiesEXT: PFN_vkGetPhysicalDeviceMultisamplePropertiesEXT;
vkGetPhysicalDeviceCalibrateableTimeDomainsEXT: PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsEXT;
vkGetPhysicalDeviceToolPropertiesEXT: PFN_vkGetPhysicalDeviceToolPropertiesEXT;

// vkGetPhysicalDeviceCooperativeMatrixPropertiesNV - Returns properties describing what cooperative matrix types are supported
//   physicalDevice: the physical device.
//   pPropertyCount: a pointer to an integer related to the number of cooperative matrix properties available or queried.
//   pProperties: either NULL or a pointer to an array of VkCooperativeMatrixPropertiesNV structures.
vkGetPhysicalDeviceCooperativeMatrixPropertiesNV: PFN_vkGetPhysicalDeviceCooperativeMatrixPropertiesNV;

// vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV - Query supported sample count combinations
//   physicalDevice: the physical device from which to query the set of combinations.
//   pCombinationCount: a pointer to an integer related to the number of combinations available or queried, as described below.
//   pCombinations: either NULL or a pointer to an array of VkFramebufferMixedSamplesCombinationNV values, indicating the supported combinations of coverage reduction mode, rasterization samples, and color, depth, stencil attachment sample counts.
vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV: PFN_vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV;

// vkCreateHeadlessSurfaceEXT - Create a headless VkSurfaceKHR object
//   instance: the instance to associate the surface with.
//   pCreateInfo: a pointer to a VkHeadlessSurfaceCreateInfoEXT structure containing parameters affecting the creation of the surface object.
//   pAllocator: the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see Memory Allocation).
//   pSurface: a pointer to a VkSurfaceKHR handle in which the created surface object is returned.
vkCreateHeadlessSurfaceEXT: PFN_vkCreateHeadlessSurfaceEXT;

// vkAcquireDrmDisplayEXT - Acquire access to a VkDisplayKHR using DRM
//   physicalDevice: The physical device the display is on.
//   drmFd: DRM primary file descriptor.
//   display: The display the caller wishes Vulkan to control.
vkAcquireDrmDisplayEXT: PFN_vkAcquireDrmDisplayEXT;

// vkGetDrmDisplayEXT - Query the VkDisplayKHR corresponding to a DRM connector ID
//   physicalDevice: The physical device to query the display from.
//   drmFd: DRM primary file descriptor.
//   connectorId: Identifier of the specified DRM connector.
//   display: The corresponding VkDisplayKHR handle will be returned here.
vkGetDrmDisplayEXT: PFN_vkGetDrmDisplayEXT;

// vkGetPhysicalDeviceOpticalFlowImageFormatsNV - Query image formats for optical flow
//   physicalDevice: the physical device being queried.
vkGetPhysicalDeviceOpticalFlowImageFormatsNV: PFN_vkGetPhysicalDeviceOpticalFlowImageFormatsNV;

// vkGetPhysicalDeviceCooperativeVectorPropertiesNV - Returns properties describing what cooperative vector types are supported
//   physicalDevice: the physical device.
//   pPropertyCount: a pointer to an integer related to the number of cooperative vector properties available or queried.
//   pProperties: either NULL or a pointer to an array of VkCooperativeVectorPropertiesNV structures.
vkGetPhysicalDeviceCooperativeVectorPropertiesNV: PFN_vkGetPhysicalDeviceCooperativeVectorPropertiesNV;

// vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV - Returns properties describing what cooperative matrix types are supported
//   physicalDevice: the physical device.
//   pPropertyCount: a pointer to an integer related to the number of cooperative matrix properties available or queried.
//   pProperties: either NULL or a pointer to an array of VkCooperativeMatrixFlexibleDimensionsPropertiesNV structures.
vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV: PFN_vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV;

// vkCreateAndroidSurfaceKHR - Create a VkSurfaceKHR object for an Android native window
//   instance: the instance to associate the surface with.
//   pCreateInfo: a pointer to a VkAndroidSurfaceCreateInfoKHR structure containing parameters affecting the creation of the surface object.
//   pAllocator: the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see Memory Allocation).
//   pSurface: a pointer to a VkSurfaceKHR handle in which the created surface object is returned.
vkCreateAndroidSurfaceKHR: PFN_vkCreateAndroidSurfaceKHR;

// vkCreateWaylandSurfaceKHR - Create a VkSurfaceKHR object for a Wayland window
//   instance: the instance to associate the surface with.
//   pCreateInfo: a pointer to a VkWaylandSurfaceCreateInfoKHR structure containing parameters affecting the creation of the surface object.
//   pAllocator: the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see Memory Allocation).
//   pSurface: a pointer to a VkSurfaceKHR handle in which the created surface object is returned.
vkCreateWaylandSurfaceKHR: PFN_vkCreateWaylandSurfaceKHR;

// vkGetPhysicalDeviceWaylandPresentationSupportKHR - Query physical device for presentation to Wayland
//   physicalDevice: the physical device.
//   queueFamilyIndex: the queue family index.
//   display: a pointer to the wl_display associated with a Wayland compositor.
vkGetPhysicalDeviceWaylandPresentationSupportKHR: PFN_vkGetPhysicalDeviceWaylandPresentationSupportKHR;

// vkCreateXcbSurfaceKHR - Create a VkSurfaceKHR object for a X11 window, using the XCB client-side library
//   instance: the instance to associate the surface with.
//   pCreateInfo: a pointer to a VkXcbSurfaceCreateInfoKHR structure containing parameters affecting the creation of the surface object.
//   pAllocator: the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see Memory Allocation).
//   pSurface: a pointer to a VkSurfaceKHR handle in which the created surface object is returned.
vkCreateXcbSurfaceKHR: PFN_vkCreateXcbSurfaceKHR;

// vkGetPhysicalDeviceXcbPresentationSupportKHR - Query physical device for presentation to X11 server using XCB
//   physicalDevice: the physical device.
//   queueFamilyIndex: the queue family index.
//   connection: a pointer to an xcb_connection_t to the X server.
//   visual_id: an X11 visual (xcb_visualid_t).
vkGetPhysicalDeviceXcbPresentationSupportKHR: PFN_vkGetPhysicalDeviceXcbPresentationSupportKHR;

// vkCreateXlibSurfaceKHR - Create a VkSurfaceKHR object for an X11 window, using the Xlib client-side library
//   instance: the instance to associate the surface with.
//   pCreateInfo: a pointer to a VkXlibSurfaceCreateInfoKHR structure containing the parameters affecting the creation of the surface object.
//   pAllocator: the allocator used for host memory allocated for the surface object when there is no more specific allocator available (see Memory Allocation).
//   pSurface: a pointer to a VkSurfaceKHR handle in which the created surface object is returned.
vkCreateXlibSurfaceKHR: PFN_vkCreateXlibSurfaceKHR;

// vkGetPhysicalDeviceXlibPresentationSupportKHR - Query physical device for presentation to X11 server using Xlib
//   physicalDevice: the physical device.
//   queueFamilyIndex: the queue family index.
//   dpy: a pointer to an Xlib Display connection to the server.
//   visualID: an X11 visual (VisualID).
vkGetPhysicalDeviceXlibPresentationSupportKHR: PFN_vkGetPhysicalDeviceXlibPresentationSupportKHR;

// vkDestroyDevice - Destroy a logical device
//   device: the logical device to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyDevice: PFN_vkDestroyDevice;

// vkGetDeviceQueue - Get a queue handle from a device
//   device: the logical device that owns the queue.
//   queueFamilyIndex: the index of the queue family to which the queue belongs.
//   queueIndex: the index within this queue family of the queue to retrieve.
//   pQueue: a pointer to a VkQueue object that will be filled with the handle for the requested queue.
vkGetDeviceQueue: PFN_vkGetDeviceQueue;

// vkQueueSubmit - Submits a sequence of semaphores or command buffers to a queue
//   queue: the queue that the command buffers will be submitted to.
//   submitCount: the number of elements in the pSubmits array.
//   pSubmits: a pointer to an array of VkSubmitInfo structures, each specifying a command buffer submission batch. Command buffers and semaphores specified in this array may be accessed at any point until the queue operations they define complete execution on the device.
//   fence: an optional handle to a fence to be signaled once all submitted command buffers have completed execution. If fence is not VK_NULL_HANDLE, it defines a fence signal operation. If it is not VK_NULL_HANDLE, fence may be accessed at any point until this command completes on the device.
vkQueueSubmit: PFN_vkQueueSubmit;

// vkQueueWaitIdle - Wait for a queue to become idle
//   queue: the queue on which to wait.
vkQueueWaitIdle: PFN_vkQueueWaitIdle;

// vkDeviceWaitIdle - Wait for a device to become idle
//   device: the logical device to idle.
vkDeviceWaitIdle: PFN_vkDeviceWaitIdle;

// vkAllocateMemory - Allocate device memory
//   device: the logical device that owns the memory.
//   pAllocateInfo: a pointer to a VkMemoryAllocateInfo structure describing parameters of the allocation. A successfully returned allocation must use the requested parameters&#8201;&#8212;&#8201;no substitution is permitted by the implementation.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pMemory: a pointer to a VkDeviceMemory handle in which information about the allocated memory is returned.
vkAllocateMemory: PFN_vkAllocateMemory;

// vkFreeMemory - Free device memory
//   device: the logical device that owns the memory.
//   memory: the VkDeviceMemory object to be freed.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkFreeMemory: PFN_vkFreeMemory;

// vkMapMemory - Map a memory object into application address space
//   device: the logical device that owns the memory.
//   memory: the VkDeviceMemory object to be mapped.
//   offset: a zero-based byte offset from the beginning of the memory object.
//   size: the size of the memory range to map, or VK_WHOLE_SIZE to map from offset to the end of the allocation.
//   flags: a bitmask of VkMemoryMapFlagBits specifying additional parameters of the memory map operation.
//   ppData: a pointer to a void* variable in which a host-accessible pointer to the beginning of the mapped range is returned. The value of the returned pointer minus offset must be aligned to VkPhysicalDeviceLimits::minMemoryMapAlignment.
vkMapMemory: PFN_vkMapMemory;

// vkUnmapMemory - Unmap a previously mapped memory object
//   device: the logical device that owns the memory.
//   memory: the memory object to be unmapped.
vkUnmapMemory: PFN_vkUnmapMemory;

// vkFlushMappedMemoryRanges - Flush mapped memory ranges
//   device: the logical device that owns the memory ranges.
//   memoryRangeCount: the length of the pMemoryRanges array.
//   pMemoryRanges: a pointer to an array of VkMappedMemoryRange structures describing the memory ranges to flush.
vkFlushMappedMemoryRanges: PFN_vkFlushMappedMemoryRanges;

// vkInvalidateMappedMemoryRanges - Invalidate ranges of mapped memory objects
//   device: the logical device that owns the memory ranges.
//   memoryRangeCount: the length of the pMemoryRanges array.
//   pMemoryRanges: a pointer to an array of VkMappedMemoryRange structures describing the memory ranges to invalidate.
vkInvalidateMappedMemoryRanges: PFN_vkInvalidateMappedMemoryRanges;

// vkGetDeviceMemoryCommitment - Query the current commitment for a VkDeviceMemory
//   device: the logical device that owns the memory.
//   memory: the memory object being queried.
//   pCommittedMemoryInBytes: a pointer to a VkDeviceSize value in which the number of bytes currently committed is returned, on success.
vkGetDeviceMemoryCommitment: PFN_vkGetDeviceMemoryCommitment;

// vkBindBufferMemory - Bind device memory to a buffer object
//   device: the logical device that owns the buffer and memory.
//   buffer: the buffer to be attached to memory.
//   memory: a VkDeviceMemory object describing the device memory to attach.
//   memoryOffset: the start offset of the region of memory which is to be bound to the buffer. The number of bytes returned in the VkMemoryRequirements::size member in memory, starting from memoryOffset bytes, will be bound to the specified buffer.
vkBindBufferMemory: PFN_vkBindBufferMemory;

// vkBindImageMemory - Bind device memory to an image object
//   device: the logical device that owns the image and memory.
//   image: the image.
//   memory: the VkDeviceMemory object describing the device memory to attach.
//   memoryOffset: the start offset of the region of memory which is to be bound to the image. The number of bytes returned in the VkMemoryRequirements::size member in memory, starting from memoryOffset bytes, will be bound to the specified image.
vkBindImageMemory: PFN_vkBindImageMemory;

// vkGetBufferMemoryRequirements - Returns the memory requirements for specified Vulkan object
//   device: the logical device that owns the buffer.
//   buffer: the buffer to query.
//   pMemoryRequirements: a pointer to a VkMemoryRequirements structure in which the memory requirements of the buffer object are returned.
vkGetBufferMemoryRequirements: PFN_vkGetBufferMemoryRequirements;

// vkGetImageMemoryRequirements - Returns the memory requirements for specified Vulkan object
//   device: the logical device that owns the image.
//   image: the image to query.
//   pMemoryRequirements: a pointer to a VkMemoryRequirements structure in which the memory requirements of the image object are returned.
vkGetImageMemoryRequirements: PFN_vkGetImageMemoryRequirements;

// vkGetImageSparseMemoryRequirements - Query the memory requirements for a sparse image
//   device: the logical device that owns the image.
//   image: the VkImage object to get the memory requirements for.
//   pSparseMemoryRequirementCount: a pointer to an integer related to the number of sparse memory requirements available or queried, as described below.
//   pSparseMemoryRequirements: either NULL or a pointer to an array of VkSparseImageMemoryRequirements structures.
vkGetImageSparseMemoryRequirements: PFN_vkGetImageSparseMemoryRequirements;

// vkQueueBindSparse - Bind device memory to a sparse resource object
//   queue: the queue that the sparse binding operations will be submitted to.
//   bindInfoCount: the number of elements in the pBindInfo array.
//   pBindInfo: a pointer to an array of VkBindSparseInfo structures, each specifying a sparse binding submission batch.
//   fence: an optional handle to a fence to be signaled. If fence is not VK_NULL_HANDLE, it defines a fence signal operation.
vkQueueBindSparse: PFN_vkQueueBindSparse;

// vkCreateFence - Create a new fence object
//   device: the logical device that creates the fence.
//   pCreateInfo: a pointer to a VkFenceCreateInfo structure containing information about how the fence is to be created.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pFence: a pointer to a handle in which the resulting fence object is returned.
vkCreateFence: PFN_vkCreateFence;

// vkDestroyFence - Destroy a fence object
//   device: the logical device that destroys the fence.
//   fence: the handle of the fence to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyFence: PFN_vkDestroyFence;

// vkResetFences - Resets one or more fence objects
//   device: the logical device that owns the fences.
//   fenceCount: the number of fences to reset.
//   pFences: a pointer to an array of fence handles to reset.
vkResetFences: PFN_vkResetFences;

// vkGetFenceStatus - Return the status of a fence
//   device: the logical device that owns the fence.
//   fence: the handle of the fence to query.
vkGetFenceStatus: PFN_vkGetFenceStatus;

// vkWaitForFences - Wait for one or more fences to become signaled
//   device: the logical device that owns the fences.
//   fenceCount: the number of fences to wait on.
//   pFences: a pointer to an array of fenceCount fence handles.
//   waitAll: the condition that must be satisfied to successfully unblock the wait. If waitAll is VK_TRUE, then the condition is that all fences in pFences are signaled. Otherwise, the condition is that at least one fence in pFences is signaled.
//   timeout: the timeout period in units of nanoseconds. timeout is adjusted to the closest value allowed by the implementation-dependent timeout accuracy, which may be substantially longer than one nanosecond, and may be longer than the requested period.
vkWaitForFences: PFN_vkWaitForFences;

// vkCreateSemaphore - Create a new queue semaphore object
//   device: the logical device that creates the semaphore.
//   pCreateInfo: a pointer to a VkSemaphoreCreateInfo structure containing information about how the semaphore is to be created.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pSemaphore: a pointer to a handle in which the resulting semaphore object is returned.
vkCreateSemaphore: PFN_vkCreateSemaphore;

// vkDestroySemaphore - Destroy a semaphore object
//   device: the logical device that destroys the semaphore.
//   semaphore: the handle of the semaphore to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroySemaphore: PFN_vkDestroySemaphore;

// vkCreateEvent - Create a new event object
//   device: the logical device that creates the event.
//   pCreateInfo: a pointer to a VkEventCreateInfo structure containing information about how the event is to be created.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pEvent: a pointer to a handle in which the resulting event object is returned.
vkCreateEvent: PFN_vkCreateEvent;

// vkDestroyEvent - Destroy an event object
//   device: the logical device that destroys the event.
//   event: the handle of the event to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyEvent: PFN_vkDestroyEvent;

// vkGetEventStatus - Retrieve the status of an event object
//   device: the logical device that owns the event.
//   event: the handle of the event to query.
vkGetEventStatus: PFN_vkGetEventStatus;

// vkSetEvent - Set an event to signaled state
//   device: the logical device that owns the event.
//   event: the event to set.
vkSetEvent: PFN_vkSetEvent;

// vkResetEvent - Reset an event to non-signaled state
//   device: the logical device that owns the event.
//   event: the event to reset.
vkResetEvent: PFN_vkResetEvent;

// vkCreateQueryPool - Create a new query pool object
//   device: the logical device that creates the query pool.
//   pCreateInfo: a pointer to a VkQueryPoolCreateInfo structure containing the number and type of queries to be managed by the pool.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pQueryPool: a pointer to a VkQueryPool handle in which the resulting query pool object is returned.
vkCreateQueryPool: PFN_vkCreateQueryPool;

// vkDestroyQueryPool - Destroy a query pool object
//   device: the logical device that destroys the query pool.
//   queryPool: the query pool to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyQueryPool: PFN_vkDestroyQueryPool;

// vkGetQueryPoolResults - Copy results of queries in a query pool to a host memory region
//   device: the logical device that owns the query pool.
//   queryPool: the query pool managing the queries containing the desired results.
//   firstQuery: the initial query index.
//   queryCount: the number of queries to read.
//   dataSize: the size in bytes of the buffer pointed to by pData.
//   pData: a pointer to an application-allocated buffer where the results will be written
//   stride: the stride in bytes between results for individual queries within pData.
//   flags: a bitmask of VkQueryResultFlagBits specifying how and when results are returned.
vkGetQueryPoolResults: PFN_vkGetQueryPoolResults;

// vkCreateBuffer - Create a new buffer object
//   device: the logical device that creates the buffer object.
//   pCreateInfo: a pointer to a VkBufferCreateInfo structure containing parameters affecting creation of the buffer.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pBuffer: a pointer to a VkBuffer handle in which the resulting buffer object is returned.
vkCreateBuffer: PFN_vkCreateBuffer;

// vkDestroyBuffer - Destroy a buffer object
//   device: the logical device that destroys the buffer.
//   buffer: the buffer to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyBuffer: PFN_vkDestroyBuffer;

// vkCreateBufferView - Create a new buffer view object
//   device: the logical device that creates the buffer view.
//   pCreateInfo: a pointer to a VkBufferViewCreateInfo structure containing parameters to be used to create the buffer view.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pView: a pointer to a VkBufferView handle in which the resulting buffer view object is returned.
vkCreateBufferView: PFN_vkCreateBufferView;

// vkDestroyBufferView - Destroy a buffer view object
//   device: the logical device that destroys the buffer view.
//   bufferView: the buffer view to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyBufferView: PFN_vkDestroyBufferView;

// vkCreateImage - Create a new image object
//   device: the logical device that creates the image.
//   pCreateInfo: a pointer to a VkImageCreateInfo structure containing parameters to be used to create the image.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pImage: a pointer to a VkImage handle in which the resulting image object is returned.
vkCreateImage: PFN_vkCreateImage;

// vkDestroyImage - Destroy an image object
//   device: the logical device that destroys the image.
//   image: the image to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyImage: PFN_vkDestroyImage;

// vkGetImageSubresourceLayout - Retrieve information about an image subresource
//   device: the logical device that owns the image.
//   image: the image whose layout is being queried.
//   pSubresource: a pointer to a VkImageSubresource structure selecting a specific image subresource from the image.
//   pLayout: a pointer to a VkSubresourceLayout structure in which the layout is returned.
vkGetImageSubresourceLayout: PFN_vkGetImageSubresourceLayout;

// vkCreateImageView - Create an image view from an existing image
//   device: the logical device that creates the image view.
//   pCreateInfo: a pointer to a VkImageViewCreateInfo structure containing parameters to be used to create the image view.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pView: a pointer to a VkImageView handle in which the resulting image view object is returned.
vkCreateImageView: PFN_vkCreateImageView;

// vkDestroyImageView - Destroy an image view object
//   device: the logical device that destroys the image view.
//   imageView: the image view to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyImageView: PFN_vkDestroyImageView;

// vkCreateShaderModule - Creates a new shader module object
//   device: the logical device that creates the shader module.
//   pCreateInfo: a pointer to a VkShaderModuleCreateInfo structure.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pShaderModule: a pointer to a VkShaderModule handle in which the resulting shader module object is returned.
vkCreateShaderModule: PFN_vkCreateShaderModule;

// vkDestroyShaderModule - Destroy a shader module
//   device: the logical device that destroys the shader module.
//   shaderModule: the handle of the shader module to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyShaderModule: PFN_vkDestroyShaderModule;

// vkCreatePipelineCache - Creates a new pipeline cache
//   device: the logical device that creates the pipeline cache object.
//   pCreateInfo: a pointer to a VkPipelineCacheCreateInfo structure containing initial parameters for the pipeline cache object.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pPipelineCache: a pointer to a VkPipelineCache handle in which the resulting pipeline cache object is returned.
vkCreatePipelineCache: PFN_vkCreatePipelineCache;

// vkDestroyPipelineCache - Destroy a pipeline cache object
//   device: the logical device that destroys the pipeline cache object.
//   pipelineCache: the handle of the pipeline cache to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyPipelineCache: PFN_vkDestroyPipelineCache;

// vkGetPipelineCacheData - Get the data store from a pipeline cache
//   device: the logical device that owns the pipeline cache.
//   pipelineCache: the pipeline cache to retrieve data from.
//   pDataSize: a pointer to a size_t value related to the amount of data in the pipeline cache, as described below.
//   pData: either NULL or a pointer to a buffer.
vkGetPipelineCacheData: PFN_vkGetPipelineCacheData;

// vkMergePipelineCaches - Combine the data stores of pipeline caches
//   device: the logical device that owns the pipeline cache objects.
//   dstCache: the handle of the pipeline cache to merge results into.
//   srcCacheCount: the length of the pSrcCaches array.
//   pSrcCaches: a pointer to an array of pipeline cache handles, which will be merged into dstCache. The previous contents of dstCache are included after the merge.
vkMergePipelineCaches: PFN_vkMergePipelineCaches;

// vkCreateGraphicsPipelines - Create graphics pipelines
//   device: the logical device that creates the graphics pipelines.
//   pipelineCache: either VK_NULL_HANDLE, indicating that pipeline caching is disabled, or to enable caching, the handle of a valid VkPipelineCache object. The implementation must not access this object outside of the duration of this command.
//   createInfoCount: the length of the pCreateInfos and pPipelines arrays.
//   pCreateInfos: a pointer to an array of VkGraphicsPipelineCreateInfo structures.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pPipelines: a pointer to an array of VkPipeline handles in which the resulting graphics pipeline objects are returned.
vkCreateGraphicsPipelines: PFN_vkCreateGraphicsPipelines;

// vkCreateComputePipelines - Creates a new compute pipeline object
//   device: the logical device that creates the compute pipelines.
//   pipelineCache: either VK_NULL_HANDLE, indicating that pipeline caching is disabled, or to enable caching, the handle of a valid VkPipelineCache object. The implementation must not access this object outside of the duration of this command.
//   createInfoCount: the length of the pCreateInfos and pPipelines arrays.
//   pCreateInfos: a pointer to an array of VkComputePipelineCreateInfo structures.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pPipelines: a pointer to an array of VkPipeline handles in which the resulting compute pipeline objects are returned.
vkCreateComputePipelines: PFN_vkCreateComputePipelines;

// vkDestroyPipeline - Destroy a pipeline object
//   device: the logical device that destroys the pipeline.
//   pipeline: the handle of the pipeline to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyPipeline: PFN_vkDestroyPipeline;

// vkCreatePipelineLayout - Creates a new pipeline layout object
//   device: the logical device that creates the pipeline layout.
//   pCreateInfo: a pointer to a VkPipelineLayoutCreateInfo structure specifying the state of the pipeline layout object.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pPipelineLayout: a pointer to a VkPipelineLayout handle in which the resulting pipeline layout object is returned.
vkCreatePipelineLayout: PFN_vkCreatePipelineLayout;

// vkDestroyPipelineLayout - Destroy a pipeline layout object
//   device: the logical device that destroys the pipeline layout.
//   pipelineLayout: the pipeline layout to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyPipelineLayout: PFN_vkDestroyPipelineLayout;

// vkCreateSampler - Create a new sampler object
//   device: the logical device that creates the sampler.
//   pCreateInfo: a pointer to a VkSamplerCreateInfo structure specifying the state of the sampler object.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pSampler: a pointer to a VkSampler handle in which the resulting sampler object is returned.
vkCreateSampler: PFN_vkCreateSampler;

// vkDestroySampler - Destroy a sampler object
//   device: the logical device that destroys the sampler.
//   sampler: the sampler to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroySampler: PFN_vkDestroySampler;

// vkCreateDescriptorSetLayout - Create a new descriptor set layout
//   device: the logical device that creates the descriptor set layout.
//   pCreateInfo: a pointer to a VkDescriptorSetLayoutCreateInfo structure specifying the state of the descriptor set layout object.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pSetLayout: a pointer to a VkDescriptorSetLayout handle in which the resulting descriptor set layout object is returned.
vkCreateDescriptorSetLayout: PFN_vkCreateDescriptorSetLayout;

// vkDestroyDescriptorSetLayout - Destroy a descriptor set layout object
//   device: the logical device that destroys the descriptor set layout.
//   descriptorSetLayout: the descriptor set layout to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyDescriptorSetLayout: PFN_vkDestroyDescriptorSetLayout;

// vkCreateDescriptorPool - Creates a descriptor pool object
//   device: the logical device that creates the descriptor pool.
//   pCreateInfo: a pointer to a VkDescriptorPoolCreateInfo structure specifying the state of the descriptor pool object.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pDescriptorPool: a pointer to a VkDescriptorPool handle in which the resulting descriptor pool object is returned.
vkCreateDescriptorPool: PFN_vkCreateDescriptorPool;

// vkDestroyDescriptorPool - Destroy a descriptor pool object
//   device: the logical device that destroys the descriptor pool.
//   descriptorPool: the descriptor pool to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyDescriptorPool: PFN_vkDestroyDescriptorPool;

// vkResetDescriptorPool - Resets a descriptor pool object
//   device: the logical device that owns the descriptor pool.
//   descriptorPool: the descriptor pool to be reset.
//   flags: reserved for future use.
vkResetDescriptorPool: PFN_vkResetDescriptorPool;

// vkAllocateDescriptorSets - Allocate one or more descriptor sets
//   device: the logical device that owns the descriptor pool.
//   pAllocateInfo: a pointer to a VkDescriptorSetAllocateInfo structure describing parameters of the allocation.
//   pDescriptorSets: a pointer to an array of VkDescriptorSet handles in which the resulting descriptor set objects are returned.
vkAllocateDescriptorSets: PFN_vkAllocateDescriptorSets;

// vkFreeDescriptorSets - Free one or more descriptor sets
//   device: the logical device that owns the descriptor pool.
//   descriptorPool: the descriptor pool from which the descriptor sets were allocated.
//   descriptorSetCount: the number of elements in the pDescriptorSets array.
//   pDescriptorSets: a pointer to an array of handles to VkDescriptorSet objects.
vkFreeDescriptorSets: PFN_vkFreeDescriptorSets;

// vkUpdateDescriptorSets - Update the contents of a descriptor set object
//   device: the logical device that updates the descriptor sets.
//   descriptorWriteCount: the number of elements in the pDescriptorWrites array.
//   pDescriptorWrites: a pointer to an array of VkWriteDescriptorSet structures describing the descriptor sets to write to.
//   descriptorCopyCount: the number of elements in the pDescriptorCopies array.
//   pDescriptorCopies: a pointer to an array of VkCopyDescriptorSet structures describing the descriptor sets to copy between.
vkUpdateDescriptorSets: PFN_vkUpdateDescriptorSets;

// vkCreateFramebuffer - Create a new framebuffer object
//   device: the logical device that creates the framebuffer.
//   pCreateInfo: a pointer to a VkFramebufferCreateInfo structure describing additional information about framebuffer creation.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pFramebuffer: a pointer to a VkFramebuffer handle in which the resulting framebuffer object is returned.
vkCreateFramebuffer: PFN_vkCreateFramebuffer;

// vkDestroyFramebuffer - Destroy a framebuffer object
//   device: the logical device that destroys the framebuffer.
//   framebuffer: the handle of the framebuffer to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyFramebuffer: PFN_vkDestroyFramebuffer;

// vkCreateRenderPass - Create a new render pass object
//   device: the logical device that creates the render pass.
//   pCreateInfo: a pointer to a VkRenderPassCreateInfo structure describing the parameters of the render pass.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pRenderPass: a pointer to a VkRenderPass handle in which the resulting render pass object is returned.
vkCreateRenderPass: PFN_vkCreateRenderPass;

// vkDestroyRenderPass - Destroy a render pass object
//   device: the logical device that destroys the render pass.
//   renderPass: the handle of the render pass to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyRenderPass: PFN_vkDestroyRenderPass;

// vkGetRenderAreaGranularity - Returns the granularity for optimal render area
//   device: the logical device that owns the render pass.
//   renderPass: a handle to a render pass.
//   pGranularity: a pointer to a VkExtent2D structure in which the granularity is returned.
vkGetRenderAreaGranularity: PFN_vkGetRenderAreaGranularity;

// vkCreateCommandPool - Create a new command pool object
//   device: the logical device that creates the command pool.
//   pCreateInfo: a pointer to a VkCommandPoolCreateInfo structure specifying the state of the command pool object.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pCommandPool: a pointer to a VkCommandPool handle in which the created pool is returned.
vkCreateCommandPool: PFN_vkCreateCommandPool;

// vkDestroyCommandPool - Destroy a command pool object
//   device: the logical device that destroys the command pool.
//   commandPool: the handle of the command pool to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyCommandPool: PFN_vkDestroyCommandPool;

// vkResetCommandPool - Reset a command pool
//   device: the logical device that owns the command pool.
//   commandPool: the command pool to reset.
//   flags: a bitmask of VkCommandPoolResetFlagBits controlling the reset operation.
vkResetCommandPool: PFN_vkResetCommandPool;

// vkAllocateCommandBuffers - Allocate command buffers from an existing command pool
//   device: the logical device that owns the command pool.
//   pAllocateInfo: a pointer to a VkCommandBufferAllocateInfo structure describing parameters of the allocation. commandPool may be accessed any time one of the resulting command buffers is accessed.
//   pCommandBuffers: a pointer to an array of VkCommandBuffer handles in which the resulting command buffer objects are returned. The array must be at least the length specified by the commandBufferCount member of pAllocateInfo. Each allocated command buffer begins in the initial state.
vkAllocateCommandBuffers: PFN_vkAllocateCommandBuffers;

// vkFreeCommandBuffers - Free command buffers
//   device: the logical device that owns the command pool.
//   commandPool: the command pool from which the command buffers were allocated.
//   commandBufferCount: the length of the pCommandBuffers array.
//   pCommandBuffers: a pointer to an array of handles of command buffers to free.
vkFreeCommandBuffers: PFN_vkFreeCommandBuffers;

// vkBeginCommandBuffer - Start recording a command buffer
//   commandBuffer: the handle of the command buffer which is to be put in the recording state.
//   pBeginInfo: a pointer to a VkCommandBufferBeginInfo structure defining additional information about how the command buffer begins recording.
vkBeginCommandBuffer: PFN_vkBeginCommandBuffer;

// vkEndCommandBuffer - Finish recording a command buffer
//   commandBuffer: the command buffer to complete recording.
vkEndCommandBuffer: PFN_vkEndCommandBuffer;

// vkResetCommandBuffer - Reset a command buffer to the initial state
//   commandBuffer: the command buffer to reset. The command buffer can be in any state other than pending, and is moved into the initial state.
//   flags: a bitmask of VkCommandBufferResetFlagBits controlling the reset operation.
vkResetCommandBuffer: PFN_vkResetCommandBuffer;

// vkCmdBindPipeline - Bind a pipeline object to a command buffer
//   commandBuffer: the command buffer that the pipeline will be bound to.
//   pipelineBindPoint: a VkPipelineBindPoint value specifying to which bind point the pipeline is bound. Binding one does not disturb the others.
//   pipeline: the pipeline to be bound.
vkCmdBindPipeline: PFN_vkCmdBindPipeline;

// vkCmdSetViewport - Set the viewport dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   firstViewport: the index of the first viewport whose parameters are updated by the command.
//   viewportCount: the number of viewports whose parameters are updated by the command.
//   pViewports: a pointer to an array of VkViewport structures specifying viewport parameters.
vkCmdSetViewport: PFN_vkCmdSetViewport;

// vkCmdSetScissor - Set scissor rectangles dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   firstScissor: the index of the first scissor whose state is updated by the command.
//   scissorCount: the number of scissors whose rectangles are updated by the command.
//   pScissors: a pointer to an array of VkRect2D structures defining scissor rectangles.
vkCmdSetScissor: PFN_vkCmdSetScissor;

// vkCmdSetLineWidth - Set line width dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   lineWidth: the width of rasterized line segments.
vkCmdSetLineWidth: PFN_vkCmdSetLineWidth;

// vkCmdSetDepthBias - Set depth bias factors and clamp dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   depthBiasConstantFactor: a scalar factor controlling the constant depth value added to each fragment.
//   depthBiasClamp: the maximum (or minimum) depth bias of a fragment.
//   depthBiasSlopeFactor: a scalar factor applied to a fragment&#8217;s slope in depth bias calculations.
vkCmdSetDepthBias: PFN_vkCmdSetDepthBias;

// vkCmdSetBlendConstants - Set the values of blend constants
//   commandBuffer: the command buffer into which the command will be recorded.
//   blendConstants: a pointer to an array of four values specifying the Rc, Gc, Bc, and Ac components of the blend constant color used in blending, depending on the blend factor.
vkCmdSetBlendConstants: PFN_vkCmdSetBlendConstants;

// vkCmdSetDepthBounds - Set depth bounds range dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   minDepthBounds: the minimum depth bound.
//   maxDepthBounds: the maximum depth bound.
vkCmdSetDepthBounds: PFN_vkCmdSetDepthBounds;

// vkCmdSetStencilCompareMask - Set stencil compare mask dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   faceMask: a bitmask of VkStencilFaceFlagBits specifying the set of stencil state for which to update the compare mask.
//   compareMask: the new value to use as the stencil compare mask.
vkCmdSetStencilCompareMask: PFN_vkCmdSetStencilCompareMask;

// vkCmdSetStencilWriteMask - Set stencil write mask dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   faceMask: a bitmask of VkStencilFaceFlagBits specifying the set of stencil state for which to update the write mask, as described above for vkCmdSetStencilCompareMask.
//   writeMask: the new value to use as the stencil write mask.
vkCmdSetStencilWriteMask: PFN_vkCmdSetStencilWriteMask;

// vkCmdSetStencilReference - Set stencil reference value dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   faceMask: a bitmask of VkStencilFaceFlagBits specifying the set of stencil state for which to update the reference value, as described above for vkCmdSetStencilCompareMask.
//   reference: the new value to use as the stencil reference value.
vkCmdSetStencilReference: PFN_vkCmdSetStencilReference;

// vkCmdBindDescriptorSets - Binds descriptor sets to a command buffer
//   commandBuffer: the command buffer that the descriptor sets will be bound to.
//   pipelineBindPoint: a VkPipelineBindPoint indicating the type of the pipeline that will use the descriptors. There is a separate set of bind points for each pipeline type, so binding one does not disturb the others.
//   layout: a VkPipelineLayout object used to program the bindings.
//   firstSet: the set number of the first descriptor set to be bound.
//   descriptorSetCount: the number of elements in the pDescriptorSets array.
//   pDescriptorSets: a pointer to an array of handles to VkDescriptorSet objects describing the descriptor sets to bind to.
//   dynamicOffsetCount: the number of dynamic offsets in the pDynamicOffsets array.
//   pDynamicOffsets: a pointer to an array of uint32_t values specifying dynamic offsets.
vkCmdBindDescriptorSets: PFN_vkCmdBindDescriptorSets;

// vkCmdBindIndexBuffer - Bind an index buffer to a command buffer
//   commandBuffer: the command buffer into which the command is recorded.
//   buffer: the buffer being bound.
//   offset: the starting offset in bytes within buffer used in index buffer address calculations.
//   indexType: a VkIndexType value specifying the size of the indices.
vkCmdBindIndexBuffer: PFN_vkCmdBindIndexBuffer;

// vkCmdBindVertexBuffers - Bind vertex buffers to a command buffer
//   commandBuffer: the command buffer into which the command is recorded.
//   firstBinding: the index of the first vertex input binding whose state is updated by the command.
//   bindingCount: the number of vertex input bindings whose state is updated by the command.
//   pBuffers: a pointer to an array of buffer handles.
//   pOffsets: a pointer to an array of buffer offsets.
vkCmdBindVertexBuffers: PFN_vkCmdBindVertexBuffers;

// vkCmdDraw - Draw primitives
//   commandBuffer: the command buffer into which the command is recorded.
//   vertexCount: the number of vertices to draw.
//   instanceCount: the number of instances to draw.
//   firstVertex: the index of the first vertex to draw.
//   firstInstance: the instance ID of the first instance to draw.
vkCmdDraw: PFN_vkCmdDraw;

// vkCmdDrawIndexed - Draw primitives with indexed vertices
//   commandBuffer: the command buffer into which the command is recorded.
//   indexCount: the number of vertices to draw.
//   instanceCount: the number of instances to draw.
//   firstIndex: the base index within the index buffer.
//   vertexOffset: the value added to the vertex index before indexing into the vertex buffer.
//   firstInstance: the instance ID of the first instance to draw.
vkCmdDrawIndexed: PFN_vkCmdDrawIndexed;

// vkCmdDrawIndirect - Draw primitives with indirect parameters
//   commandBuffer: the command buffer into which the command is recorded.
//   buffer: the buffer containing draw parameters.
//   offset: the byte offset into buffer where parameters begin.
//   drawCount: the number of draws to execute, and can be zero.
//   stride: the byte stride between successive sets of draw parameters.
vkCmdDrawIndirect: PFN_vkCmdDrawIndirect;

// vkCmdDrawIndexedIndirect - Draw primitives with indirect parameters and indexed vertices
//   commandBuffer: the command buffer into which the command is recorded.
//   buffer: the buffer containing draw parameters.
//   offset: the byte offset into buffer where parameters begin.
//   drawCount: the number of draws to execute, and can be zero.
//   stride: the byte stride between successive sets of draw parameters.
vkCmdDrawIndexedIndirect: PFN_vkCmdDrawIndexedIndirect;

// vkCmdDispatch - Dispatch compute work items
//   commandBuffer: the command buffer into which the command will be recorded.
//   groupCountX: the number of local workgroups to dispatch in the X dimension.
//   groupCountY: the number of local workgroups to dispatch in the Y dimension.
//   groupCountZ: the number of local workgroups to dispatch in the Z dimension.
vkCmdDispatch: PFN_vkCmdDispatch;

// vkCmdDispatchIndirect - Dispatch compute work items with indirect parameters
//   commandBuffer: the command buffer into which the command will be recorded.
//   buffer: the buffer containing dispatch parameters.
//   offset: the byte offset into buffer where parameters begin.
vkCmdDispatchIndirect: PFN_vkCmdDispatchIndirect;

// vkCmdCopyBuffer - Copy data between buffer regions
//   commandBuffer: the command buffer into which the command will be recorded.
//   srcBuffer: the source buffer.
//   dstBuffer: the destination buffer.
//   regionCount: the number of regions to copy.
//   pRegions: a pointer to an array of VkBufferCopy structures specifying the regions to copy.
vkCmdCopyBuffer: PFN_vkCmdCopyBuffer;

// vkCmdCopyImage - Copy data between images
//   commandBuffer: the command buffer into which the command will be recorded.
//   srcImage: the source image.
//   srcImageLayout: the current layout of the source image subresource.
//   dstImage: the destination image.
//   dstImageLayout: the current layout of the destination image subresource.
//   regionCount: the number of regions to copy.
//   pRegions: a pointer to an array of VkImageCopy structures specifying the regions to copy.
vkCmdCopyImage: PFN_vkCmdCopyImage;

// vkCmdBlitImage - Copy regions of an image, potentially performing format conversion,
//   commandBuffer: the command buffer into which the command will be recorded.
//   srcImage: the source image.
//   srcImageLayout: the layout of the source image subresources for the blit.
//   dstImage: the destination image.
//   dstImageLayout: the layout of the destination image subresources for the blit.
//   regionCount: the number of regions to blit.
//   pRegions: a pointer to an array of VkImageBlit structures specifying the regions to blit.
//   filter: a VkFilter specifying the filter to apply if the blits require scaling.
vkCmdBlitImage: PFN_vkCmdBlitImage;

// vkCmdCopyBufferToImage - Copy data from a buffer into an image
//   commandBuffer: the command buffer into which the command will be recorded.
//   srcBuffer: the source buffer.
//   dstImage: the destination image.
//   dstImageLayout: the layout of the destination image subresources for the copy.
//   regionCount: the number of regions to copy.
//   pRegions: a pointer to an array of VkBufferImageCopy structures specifying the regions to copy.
vkCmdCopyBufferToImage: PFN_vkCmdCopyBufferToImage;

// vkCmdCopyImageToBuffer - Copy image data into a buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   srcImage: the source image.
//   srcImageLayout: the layout of the source image subresources for the copy.
//   dstBuffer: the destination buffer.
//   regionCount: the number of regions to copy.
//   pRegions: a pointer to an array of VkBufferImageCopy structures specifying the regions to copy.
vkCmdCopyImageToBuffer: PFN_vkCmdCopyImageToBuffer;

// vkCmdUpdateBuffer - Update a buffer&#8217;s contents from host memory
//   commandBuffer: the command buffer into which the command will be recorded.
//   dstBuffer: a handle to the buffer to be updated.
//   dstOffset: the byte offset into the buffer to start updating, and must be a multiple of 4.
//   dataSize: the number of bytes to update, and must be a multiple of 4.
//   pData: a pointer to the source data for the buffer update, and must be at least dataSize bytes in size.
vkCmdUpdateBuffer: PFN_vkCmdUpdateBuffer;

// vkCmdFillBuffer - Fill a region of a buffer with a fixed value
//   commandBuffer: the command buffer into which the command will be recorded.
//   dstBuffer: the buffer to be filled.
//   dstOffset: the byte offset into the buffer at which to start filling, and must be a multiple of 4.
//   size: the number of bytes to fill, and must be either a multiple of 4, or VK_WHOLE_SIZE to fill the range from offset to the end of the buffer. If VK_WHOLE_SIZE is used and the remaining size of the buffer is not a multiple of 4, then the nearest smaller multiple is used.
//   data: the 4-byte word written repeatedly to the buffer to fill size bytes of data. The data word is written to memory according to the host endianness.
vkCmdFillBuffer: PFN_vkCmdFillBuffer;

// vkCmdClearColorImage - Clear regions of a color image
//   commandBuffer: the command buffer into which the command will be recorded.
//   image: the image to be cleared.
//   imageLayout: specifies the current layout of the image subresource ranges to be cleared, and must be VK_IMAGE_LAYOUT_SHARED_PRESENT_KHR, VK_IMAGE_LAYOUT_GENERAL or VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL.
//   pColor: a pointer to a VkClearColorValue structure containing the values that the image subresource ranges will be cleared to (see Clear Values below).
//   rangeCount: the number of image subresource range structures in pRanges.
//   pRanges: a pointer to an array of VkImageSubresourceRange structures describing a range of mipmap levels, array layers, and aspects to be cleared, as described in Image Views.
vkCmdClearColorImage: PFN_vkCmdClearColorImage;

// vkCmdClearDepthStencilImage - Fill regions of a combined depth/stencil image
//   commandBuffer: the command buffer into which the command will be recorded.
//   image: the image to be cleared.
//   imageLayout: specifies the current layout of the image subresource ranges to be cleared, and must be VK_IMAGE_LAYOUT_GENERAL or VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL.
//   pDepthStencil: a pointer to a VkClearDepthStencilValue structure containing the values that the depth and stencil image subresource ranges will be cleared to (see Clear Values below).
//   rangeCount: the number of image subresource range structures in pRanges.
//   pRanges: a pointer to an array of VkImageSubresourceRange structures describing a range of mipmap levels, array layers, and aspects to be cleared, as described in Image Views.
vkCmdClearDepthStencilImage: PFN_vkCmdClearDepthStencilImage;

// vkCmdClearAttachments - Clear regions within bound framebuffer attachments
//   commandBuffer: the command buffer into which the command will be recorded.
//   attachmentCount: the number of entries in the pAttachments array.
//   pAttachments: a pointer to an array of VkClearAttachment structures defining the attachments to clear and the clear values to use.
//   rectCount: the number of entries in the pRects array.
//   pRects: a pointer to an array of VkClearRect structures defining regions to clear for every attachment in pAttachments.
vkCmdClearAttachments: PFN_vkCmdClearAttachments;

// vkCmdResolveImage - Resolve regions of an image
//   commandBuffer: the command buffer into which the command will be recorded.
//   srcImage: the source image.
//   srcImageLayout: the layout of the source image subresources for the resolve.
//   dstImage: the destination image.
//   dstImageLayout: the layout of the destination image subresources for the resolve.
//   regionCount: the number of regions to resolve.
//   pRegions: a pointer to an array of VkImageResolve structures specifying the regions to resolve.
vkCmdResolveImage: PFN_vkCmdResolveImage;

// vkCmdSetEvent - Set an event object to signaled state
//   commandBuffer: the command buffer into which the command is recorded.
//   event: the event that will be signaled.
//   stageMask: specifies the source stage mask used to determine the first synchronization scope.
vkCmdSetEvent: PFN_vkCmdSetEvent;

// vkCmdResetEvent - Reset an event object to non-signaled state
//   commandBuffer: the command buffer into which the command is recorded.
//   event: the event that will be unsignaled.
//   stageMask: a bitmask of VkPipelineStageFlagBits specifying the source stage mask used to determine when the event is unsignaled.
vkCmdResetEvent: PFN_vkCmdResetEvent;

// vkCmdWaitEvents - Wait for one or more events and insert a set of memory
//   commandBuffer: the command buffer into which the command is recorded.
//   eventCount: the length of the pEvents array.
//   pEvents: a pointer to an array of event object handles to wait on.
//   srcStageMask: a bitmask of VkPipelineStageFlagBits specifying the source stage mask.
//   dstStageMask: a bitmask of VkPipelineStageFlagBits specifying the destination stage mask.
//   memoryBarrierCount: the length of the pMemoryBarriers array.
//   pMemoryBarriers: a pointer to an array of VkMemoryBarrier structures.
//   bufferMemoryBarrierCount: the length of the pBufferMemoryBarriers array.
//   pBufferMemoryBarriers: a pointer to an array of VkBufferMemoryBarrier structures.
//   imageMemoryBarrierCount: the length of the pImageMemoryBarriers array.
//   pImageMemoryBarriers: a pointer to an array of VkImageMemoryBarrier structures.
vkCmdWaitEvents: PFN_vkCmdWaitEvents;

// vkCmdPipelineBarrier - Insert a memory dependency
//   commandBuffer: the command buffer into which the command is recorded.
//   srcStageMask: a bitmask of VkPipelineStageFlagBits specifying the source stages.
//   dstStageMask: a bitmask of VkPipelineStageFlagBits specifying the destination stages.
//   dependencyFlags: a bitmask of VkDependencyFlagBits specifying how execution and memory dependencies are formed.
//   memoryBarrierCount: the length of the pMemoryBarriers array.
//   pMemoryBarriers: a pointer to an array of VkMemoryBarrier structures.
//   bufferMemoryBarrierCount: the length of the pBufferMemoryBarriers array.
//   pBufferMemoryBarriers: a pointer to an array of VkBufferMemoryBarrier structures.
//   imageMemoryBarrierCount: the length of the pImageMemoryBarriers array.
//   pImageMemoryBarriers: a pointer to an array of VkImageMemoryBarrier structures.
vkCmdPipelineBarrier: PFN_vkCmdPipelineBarrier;

// vkCmdBeginQuery - Begin a query
//   commandBuffer: the command buffer into which this command will be recorded.
//   queryPool: the query pool that will manage the results of the query.
//   query: the query index within the query pool that will contain the results.
//   flags: a bitmask of VkQueryControlFlagBits specifying constraints on the types of queries that can be performed.
vkCmdBeginQuery: PFN_vkCmdBeginQuery;

// vkCmdEndQuery - Ends a query
//   commandBuffer: the command buffer into which this command will be recorded.
//   queryPool: the query pool that is managing the results of the query.
//   query: the query index within the query pool where the result is stored.
vkCmdEndQuery: PFN_vkCmdEndQuery;

// vkCmdResetQueryPool - Reset queries in a query pool
//   commandBuffer: the command buffer into which this command will be recorded.
//   queryPool: the handle of the query pool managing the queries being reset.
//   firstQuery: the initial query index to reset.
//   queryCount: the number of queries to reset.
vkCmdResetQueryPool: PFN_vkCmdResetQueryPool;

// vkCmdWriteTimestamp - Write a device timestamp into a query object
//   commandBuffer: the command buffer into which the command will be recorded.
//   pipelineStage: a VkPipelineStageFlagBits value, specifying a stage of the pipeline.
//   queryPool: the query pool that will manage the timestamp.
//   query: the query within the query pool that will contain the timestamp.
vkCmdWriteTimestamp: PFN_vkCmdWriteTimestamp;

// vkCmdCopyQueryPoolResults - Copy the results of queries in a query pool to a buffer object
//   commandBuffer: the command buffer into which this command will be recorded.
//   queryPool: the query pool managing the queries containing the desired results.
//   firstQuery: the initial query index.
//   queryCount: the number of queries. firstQuery and queryCount together define a range of queries.
//   dstBuffer: a VkBuffer object that will receive the results of the copy command.
//   dstOffset: an offset into dstBuffer.
//   stride: the stride in bytes between results for individual queries within dstBuffer. The required size of the backing memory for dstBuffer is determined as described above for vkGetQueryPoolResults.
//   flags: a bitmask of VkQueryResultFlagBits specifying how and when results are returned.
vkCmdCopyQueryPoolResults: PFN_vkCmdCopyQueryPoolResults;

// vkCmdPushConstants - Update the values of push constants
//   commandBuffer: the command buffer in which the push constant update will be recorded.
//   layout: the pipeline layout used to program the push constant updates.
//   stageFlags: a bitmask of VkShaderStageFlagBits specifying the shader stages that will use the push constants in the updated range.
//   offset: the start offset of the push constant range to update, in units of bytes.
//   size: the size of the push constant range to update, in units of bytes.
//   pValues: a pointer to an array of size bytes containing the new push constant values.
vkCmdPushConstants: PFN_vkCmdPushConstants;

// vkCmdBeginRenderPass - Begin a new render pass
//   commandBuffer: the command buffer in which to record the command.
//   pRenderPassBegin: a pointer to a VkRenderPassBeginInfo structure specifying the render pass to begin an instance of, and the framebuffer the instance uses.
//   contents: a VkSubpassContents value specifying how the commands in the first subpass will be provided.
vkCmdBeginRenderPass: PFN_vkCmdBeginRenderPass;

// vkCmdNextSubpass - Transition to the next subpass of a render pass
//   commandBuffer: the command buffer in which to record the command.
//   contents: specifies how the commands in the next subpass will be provided, in the same fashion as the corresponding parameter of vkCmdBeginRenderPass.
vkCmdNextSubpass: PFN_vkCmdNextSubpass;

// vkCmdEndRenderPass - End the current render pass
//   commandBuffer: the command buffer in which to end the current render pass instance.
vkCmdEndRenderPass: PFN_vkCmdEndRenderPass;

// vkCmdExecuteCommands - Execute a secondary command buffer from a primary command buffer
//   commandBuffer: a handle to a primary command buffer that the secondary command buffers are executed in.
//   commandBufferCount: the length of the pCommandBuffers array.
//   pCommandBuffers: a pointer to an array of commandBufferCount secondary command buffer handles, which are recorded to execute in the primary command buffer in the order they are listed in the array.
vkCmdExecuteCommands: PFN_vkCmdExecuteCommands;

// vkBindBufferMemory2 - Bind device memory to buffer objects
//   device: the logical device that owns the buffers and memory.
//   bindInfoCount: the number of elements in pBindInfos.
//   pBindInfos: a pointer to an array of bindInfoCount VkBindBufferMemoryInfo structures describing buffers and memory to bind.
vkBindBufferMemory2: PFN_vkBindBufferMemory2;

// vkBindImageMemory2 - Bind device memory to image objects
//   device: the logical device that owns the images and memory.
//   bindInfoCount: the number of elements in pBindInfos.
//   pBindInfos: a pointer to an array of VkBindImageMemoryInfo structures, describing images and memory to bind.
vkBindImageMemory2: PFN_vkBindImageMemory2;

// vkGetDeviceGroupPeerMemoryFeatures - Query supported peer memory features of a device
//   device: the logical device that owns the memory.
//   heapIndex: the index of the memory heap from which the memory is allocated.
//   localDeviceIndex: the device index of the physical device that performs the memory access.
//   remoteDeviceIndex: the device index of the physical device that the memory is allocated for.
//   pPeerMemoryFeatures: a pointer to a VkPeerMemoryFeatureFlags bitmask indicating which types of memory accesses are supported for the combination of heap, local, and remote devices.
vkGetDeviceGroupPeerMemoryFeatures: PFN_vkGetDeviceGroupPeerMemoryFeatures;

// vkCmdSetDeviceMask - Modify device mask of a command buffer
//   commandBuffer: command buffer whose current device mask is modified.
//   deviceMask: the new value of the current device mask.
vkCmdSetDeviceMask: PFN_vkCmdSetDeviceMask;

// vkCmdDispatchBase - Dispatch compute work items with non-zero base values for the workgroup IDs
//   commandBuffer: the command buffer into which the command will be recorded.
//   baseGroupX: the start value for the X component of WorkgroupId.
//   baseGroupY: the start value for the Y component of WorkgroupId.
//   baseGroupZ: the start value for the Z component of WorkgroupId.
//   groupCountX: the number of local workgroups to dispatch in the X dimension.
//   groupCountY: the number of local workgroups to dispatch in the Y dimension.
//   groupCountZ: the number of local workgroups to dispatch in the Z dimension.
vkCmdDispatchBase: PFN_vkCmdDispatchBase;

// vkGetImageMemoryRequirements2 - Returns the memory requirements for specified Vulkan object
//   device: the logical device that owns the image.
//   pInfo: a pointer to a VkImageMemoryRequirementsInfo2 structure containing parameters required for the memory requirements query.
//   pMemoryRequirements: a pointer to a VkMemoryRequirements2 structure in which the memory requirements of the image object are returned.
vkGetImageMemoryRequirements2: PFN_vkGetImageMemoryRequirements2;

// vkGetBufferMemoryRequirements2 - Returns the memory requirements for specified Vulkan object
//   device: the logical device that owns the buffer.
//   pInfo: a pointer to a VkBufferMemoryRequirementsInfo2 structure containing parameters required for the memory requirements query.
//   pMemoryRequirements: a pointer to a VkMemoryRequirements2 structure in which the memory requirements of the buffer object are returned.
vkGetBufferMemoryRequirements2: PFN_vkGetBufferMemoryRequirements2;

// vkGetImageSparseMemoryRequirements2 - Query the memory requirements for a sparse image
//   device: the logical device that owns the image.
//   pInfo: a pointer to a VkImageSparseMemoryRequirementsInfo2 structure containing parameters required for the memory requirements query.
//   pSparseMemoryRequirementCount: a pointer to an integer related to the number of sparse memory requirements available or queried, as described below.
//   pSparseMemoryRequirements: either NULL or a pointer to an array of VkSparseImageMemoryRequirements2 structures.
vkGetImageSparseMemoryRequirements2: PFN_vkGetImageSparseMemoryRequirements2;

// vkTrimCommandPool - Trim a command pool
//   device: the logical device that owns the command pool.
//   commandPool: the command pool to trim.
//   flags: reserved for future use.
vkTrimCommandPool: PFN_vkTrimCommandPool;

// vkGetDeviceQueue2 - Get a queue handle from a device
//   device: the logical device that owns the queue.
//   pQueueInfo: a pointer to a VkDeviceQueueInfo2 structure, describing parameters of the device queue to be retrieved.
//   pQueue: a pointer to a VkQueue object that will be filled with the handle for the requested queue.
vkGetDeviceQueue2: PFN_vkGetDeviceQueue2;

// vkCreateSamplerYcbcrConversion - Create a new Y′CBCR conversion
//   device: the logical device that creates the sampler Y′CBCR conversion.
//   pCreateInfo: a pointer to a VkSamplerYcbcrConversionCreateInfo structure specifying the requested sampler Y′CBCR conversion.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pYcbcrConversion: a pointer to a VkSamplerYcbcrConversion handle in which the resulting sampler Y′CBCR conversion is returned.
vkCreateSamplerYcbcrConversion: PFN_vkCreateSamplerYcbcrConversion;

// vkDestroySamplerYcbcrConversion - Destroy a created Y′CBCR conversion
//   device: the logical device that destroys the Y′CBCR conversion.
//   ycbcrConversion: the conversion to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroySamplerYcbcrConversion: PFN_vkDestroySamplerYcbcrConversion;

// vkCreateDescriptorUpdateTemplate - Create a new descriptor update template
//   device: the logical device that creates the descriptor update template.
//   pCreateInfo: a pointer to a VkDescriptorUpdateTemplateCreateInfo structure specifying the set of descriptors to update with a single call to vkCmdPushDescriptorSetWithTemplate or vkUpdateDescriptorSetWithTemplate.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pDescriptorUpdateTemplate: a pointer to a VkDescriptorUpdateTemplate handle in which the resulting descriptor update template object is returned.
vkCreateDescriptorUpdateTemplate: PFN_vkCreateDescriptorUpdateTemplate;

// vkDestroyDescriptorUpdateTemplate - Destroy a descriptor update template object
//   device: the logical device that has been used to create the descriptor update template
//   descriptorUpdateTemplate: the descriptor update template to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyDescriptorUpdateTemplate: PFN_vkDestroyDescriptorUpdateTemplate;

// vkUpdateDescriptorSetWithTemplate - Update the contents of a descriptor set object using an update template
//   device: the logical device that updates the descriptor set.
//   descriptorSet: the descriptor set to update
//   descriptorUpdateTemplate: a VkDescriptorUpdateTemplate object specifying the update mapping between pData and the descriptor set to update.
//   pData: a pointer to memory containing one or more VkDescriptorImageInfo, VkDescriptorBufferInfo, or VkBufferView structures or VkAccelerationStructureKHR or VkAccelerationStructureNV handles used to write the descriptors.
vkUpdateDescriptorSetWithTemplate: PFN_vkUpdateDescriptorSetWithTemplate;

// vkGetDescriptorSetLayoutSupport - Query whether a descriptor set layout can be created
//   device: the logical device that would create the descriptor set layout.
//   pCreateInfo: a pointer to a VkDescriptorSetLayoutCreateInfo structure specifying the state of the descriptor set layout object.
//   pSupport: a pointer to a VkDescriptorSetLayoutSupport structure, in which information about support for the descriptor set layout object is returned.
vkGetDescriptorSetLayoutSupport: PFN_vkGetDescriptorSetLayoutSupport;

// vkCmdDrawIndirectCount - Draw primitives with indirect parameters and draw count
//   commandBuffer: the command buffer into which the command is recorded.
//   buffer: the buffer containing draw parameters.
//   offset: the byte offset into buffer where parameters begin.
//   countBuffer: the buffer containing the draw count.
//   countBufferOffset: the byte offset into countBuffer where the draw count begins.
//   maxDrawCount: specifies the maximum number of draws that will be executed. The actual number of executed draw calls is the minimum of the count specified in countBuffer and maxDrawCount.
//   stride: the byte stride between successive sets of draw parameters.
vkCmdDrawIndirectCount: PFN_vkCmdDrawIndirectCount;

// vkCmdDrawIndexedIndirectCount - Draw parameters with indirect parameters, indexed vertices, and draw count
//   commandBuffer: the command buffer into which the command is recorded.
//   buffer: the buffer containing draw parameters.
//   offset: the byte offset into buffer where parameters begin.
//   countBuffer: the buffer containing the draw count.
//   countBufferOffset: the byte offset into countBuffer where the draw count begins.
//   maxDrawCount: specifies the maximum number of draws that will be executed. The actual number of executed draw calls is the minimum of the count specified in countBuffer and maxDrawCount.
//   stride: the byte stride between successive sets of draw parameters.
vkCmdDrawIndexedIndirectCount: PFN_vkCmdDrawIndexedIndirectCount;

// vkCreateRenderPass2 - Create a new render pass object
//   device: the logical device that creates the render pass.
//   pCreateInfo: a pointer to a VkRenderPassCreateInfo2 structure describing the parameters of the render pass.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pRenderPass: a pointer to a VkRenderPass handle in which the resulting render pass object is returned.
vkCreateRenderPass2: PFN_vkCreateRenderPass2;

// vkCmdBeginRenderPass2 - Begin a new render pass
//   commandBuffer: the command buffer in which to record the command.
//   pRenderPassBegin: a pointer to a VkRenderPassBeginInfo structure specifying the render pass to begin an instance of, and the framebuffer the instance uses. After recording this command, the render pass and framebuffer may be accessed at any point that commandBuffer is in the recording or pending state until it is reset.
//   pSubpassBeginInfo: a pointer to a VkSubpassBeginInfo structure containing information about the subpass which is about to begin rendering.
vkCmdBeginRenderPass2: PFN_vkCmdBeginRenderPass2;

// vkCmdNextSubpass2 - Transition to the next subpass of a render pass
//   commandBuffer: the command buffer in which to record the command.
//   pSubpassBeginInfo: a pointer to a VkSubpassBeginInfo structure containing information about the subpass which is about to begin rendering.
//   pSubpassEndInfo: a pointer to a VkSubpassEndInfo structure containing information about how the previous subpass will be ended.
vkCmdNextSubpass2: PFN_vkCmdNextSubpass2;

// vkCmdEndRenderPass2 - End the current render pass
//   commandBuffer: the command buffer in which to end the current render pass instance.
//   pSubpassEndInfo: a pointer to a VkSubpassEndInfo structure containing information about how the last subpass will be ended.
vkCmdEndRenderPass2: PFN_vkCmdEndRenderPass2;

// vkResetQueryPool - Reset queries in a query pool
//   device: the logical device that owns the query pool.
//   queryPool: the handle of the query pool managing the queries being reset.
//   firstQuery: the initial query index to reset.
//   queryCount: the number of queries to reset.
vkResetQueryPool: PFN_vkResetQueryPool;

// vkGetSemaphoreCounterValue - Query the current state of a timeline semaphore
//   device: the logical device that owns the semaphore.
//   semaphore: the handle of the semaphore to query.
//   pValue: a pointer to a 64-bit integer value in which the current counter value of the semaphore is returned.
vkGetSemaphoreCounterValue: PFN_vkGetSemaphoreCounterValue;

// vkWaitSemaphores - Wait for timeline semaphores on the host
//   device: the logical device that owns the semaphores.
//   pWaitInfo: a pointer to a VkSemaphoreWaitInfo structure containing information about the wait condition.
//   timeout: the timeout period in units of nanoseconds. timeout is adjusted to the closest value allowed by the implementation-dependent timeout accuracy, which may be substantially longer than one nanosecond, and may be longer than the requested period.
vkWaitSemaphores: PFN_vkWaitSemaphores;

// vkSignalSemaphore - Signal a timeline semaphore on the host
//   device: the logical device that owns the semaphore.
//   pSignalInfo: a pointer to a VkSemaphoreSignalInfo structure containing information about the signal operation.
vkSignalSemaphore: PFN_vkSignalSemaphore;

// vkGetBufferDeviceAddress - Query an address of a buffer
//   device: the logical device that the buffer was created on.
//   pInfo: a pointer to a VkBufferDeviceAddressInfo structure specifying the buffer to retrieve an address for.
vkGetBufferDeviceAddress: PFN_vkGetBufferDeviceAddress;

// vkGetBufferOpaqueCaptureAddress - Query an opaque capture address of a buffer
//   device: the logical device that the buffer was created on.
//   pInfo: a pointer to a VkBufferDeviceAddressInfo structure specifying the buffer to retrieve an address for.
vkGetBufferOpaqueCaptureAddress: PFN_vkGetBufferOpaqueCaptureAddress;

// vkGetDeviceMemoryOpaqueCaptureAddress - Query an opaque capture address of a memory object
//   device: the logical device that the memory object was allocated on.
//   pInfo: a pointer to a VkDeviceMemoryOpaqueCaptureAddressInfo structure specifying the memory object to retrieve an address for.
vkGetDeviceMemoryOpaqueCaptureAddress: PFN_vkGetDeviceMemoryOpaqueCaptureAddress;

// vkCreatePrivateDataSlot - Create a slot for private data storage
//   device: the logical device associated with the creation of the object(s) holding the private data slot.
//   pCreateInfo: a pointer to a VkPrivateDataSlotCreateInfo
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pPrivateDataSlot: a pointer to a VkPrivateDataSlot handle in which the resulting private data slot is returned
vkCreatePrivateDataSlot: PFN_vkCreatePrivateDataSlot;

// vkDestroyPrivateDataSlot - Destroy a private data slot
//   device: the logical device associated with the creation of the object(s) holding the private data slot.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   privateDataSlot: the private data slot to destroy.
vkDestroyPrivateDataSlot: PFN_vkDestroyPrivateDataSlot;

// vkSetPrivateData - Associate data with a Vulkan object
//   device: the device that created the object.
//   objectType: a VkObjectType specifying the type of object to associate data with.
//   objectHandle: a handle to the object to associate data with.
//   privateDataSlot: a handle to a VkPrivateDataSlot specifying location of private data storage.
//   data: application-defined data to associate the object with. This data will be stored at privateDataSlot.
vkSetPrivateData: PFN_vkSetPrivateData;

// vkGetPrivateData - Retrieve data associated with a Vulkan object
//   device: the device that created the object
//   objectType: a VkObjectType specifying the type of object data is associated with.
//   objectHandle: a handle to the object data is associated with.
//   privateDataSlot: a handle to a VkPrivateDataSlot specifying location of private data pointer storage.
//   pData: a pointer to specify where application-defined data is returned. 0 will be written in the absence of a previous call to vkSetPrivateData using the object specified by objectHandle.
vkGetPrivateData: PFN_vkGetPrivateData;

// vkCmdSetEvent2 - Set an event object to signaled state
//   commandBuffer: the command buffer into which the command is recorded.
//   event: the event that will be signaled.
//   pDependencyInfo: a pointer to a VkDependencyInfo structure defining the first scopes of this operation.
vkCmdSetEvent2: PFN_vkCmdSetEvent2;

// vkCmdResetEvent2 - Reset an event object to non-signaled state
//   commandBuffer: the command buffer into which the command is recorded.
//   event: the event that will be unsignaled.
//   stageMask: a VkPipelineStageFlags2 mask of pipeline stages used to determine the first synchronization scope.
vkCmdResetEvent2: PFN_vkCmdResetEvent2;

// vkCmdWaitEvents2 - Wait for one or more events
//   commandBuffer: the command buffer into which the command is recorded.
//   eventCount: the length of the pEvents array.
//   pEvents: a pointer to an array of eventCount events to wait on.
//   pDependencyInfos: a pointer to an array of eventCount VkDependencyInfo structures, defining the second synchronization scope.
vkCmdWaitEvents2: PFN_vkCmdWaitEvents2;

// vkCmdPipelineBarrier2 - Insert a memory dependency
//   commandBuffer: the command buffer into which the command is recorded.
//   pDependencyInfo: a pointer to a VkDependencyInfo structure defining the scopes of this operation.
vkCmdPipelineBarrier2: PFN_vkCmdPipelineBarrier2;

// vkCmdWriteTimestamp2 - Write a device timestamp into a query object
//   commandBuffer: the command buffer into which the command will be recorded.
//   stage: specifies a stage of the pipeline.
//   queryPool: the query pool that will manage the timestamp.
//   query: the query within the query pool that will contain the timestamp.
vkCmdWriteTimestamp2: PFN_vkCmdWriteTimestamp2;

// vkQueueSubmit2 - Submits command buffers to a queue
//   queue: the queue that the command buffers will be submitted to.
//   submitCount: the number of elements in the pSubmits array.
//   pSubmits: a pointer to an array of VkSubmitInfo2 structures, each specifying a command buffer submission batch. Command buffers and semaphores specified in this array may be accessed at any point until the queue operations they define complete execution on the device.
//   fence: an optional handle to a fence to be signaled once all submitted command buffers have completed execution. If fence is not VK_NULL_HANDLE, it defines a fence signal operation. If it is not VK_NULL_HANDLE, fence may be accessed at any point until this command completes on the device.
vkQueueSubmit2: PFN_vkQueueSubmit2;

// vkCmdCopyBuffer2 - Copy data between buffer regions
//   commandBuffer: the command buffer into which the command will be recorded.
//   pCopyBufferInfo: a pointer to a VkCopyBufferInfo2 structure describing the copy parameters.
vkCmdCopyBuffer2: PFN_vkCmdCopyBuffer2;

// vkCmdCopyImage2 - Copy data between images
//   commandBuffer: the command buffer into which the command will be recorded.
//   pCopyImageInfo: a pointer to a VkCopyImageInfo2 structure describing the copy parameters.
vkCmdCopyImage2: PFN_vkCmdCopyImage2;

// vkCmdCopyBufferToImage2 - Copy data from a buffer into an image
//   commandBuffer: the command buffer into which the command will be recorded.
//   pCopyBufferToImageInfo: a pointer to a VkCopyBufferToImageInfo2 structure describing the copy parameters.
vkCmdCopyBufferToImage2: PFN_vkCmdCopyBufferToImage2;

// vkCmdCopyImageToBuffer2 - Copy image data into a buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   pCopyImageToBufferInfo: a pointer to a VkCopyImageToBufferInfo2 structure describing the copy parameters.
vkCmdCopyImageToBuffer2: PFN_vkCmdCopyImageToBuffer2;

// vkCmdBlitImage2 - Copy regions of an image, potentially performing format conversion,
//   commandBuffer: the command buffer into which the command will be recorded.
//   pBlitImageInfo: a pointer to a VkBlitImageInfo2 structure describing the blit parameters.
vkCmdBlitImage2: PFN_vkCmdBlitImage2;

// vkCmdResolveImage2 - Resolve regions of an image
//   commandBuffer: the command buffer into which the command will be recorded.
//   pResolveImageInfo: a pointer to a VkResolveImageInfo2 structure describing the resolve parameters.
vkCmdResolveImage2: PFN_vkCmdResolveImage2;

// vkCmdBeginRendering - Begin a dynamic render pass instance
//   commandBuffer: the command buffer in which to record the command.
//   pRenderingInfo: a pointer to a VkRenderingInfo structure specifying details of the render pass instance to begin.
vkCmdBeginRendering: PFN_vkCmdBeginRendering;

// vkCmdEndRendering - End a dynamic render pass instance
//   commandBuffer: the command buffer in which to record the command.
vkCmdEndRendering: PFN_vkCmdEndRendering;

// vkCmdSetCullMode - Set cull mode dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   cullMode: specifies the cull mode property to use for drawing.
vkCmdSetCullMode: PFN_vkCmdSetCullMode;

// vkCmdSetFrontFace - Set front face orientation dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   frontFace: a VkFrontFace value specifying the front-facing triangle orientation to be used for culling.
vkCmdSetFrontFace: PFN_vkCmdSetFrontFace;

// vkCmdSetPrimitiveTopology - Set primitive topology state dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   primitiveTopology: specifies the primitive topology to use for drawing.
vkCmdSetPrimitiveTopology: PFN_vkCmdSetPrimitiveTopology;

// vkCmdSetViewportWithCount - Set the viewport count and viewports dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   viewportCount: specifies the viewport count.
//   pViewports: specifies the viewports to use for drawing.
vkCmdSetViewportWithCount: PFN_vkCmdSetViewportWithCount;

// vkCmdSetScissorWithCount - Set the scissor count and scissor rectangular bounds dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   scissorCount: specifies the scissor count.
//   pScissors: specifies the scissors to use for drawing.
vkCmdSetScissorWithCount: PFN_vkCmdSetScissorWithCount;

// vkCmdBindVertexBuffers2 - Bind vertex buffers to a command buffer and dynamically set strides
//   commandBuffer: the command buffer into which the command is recorded.
//   firstBinding: the index of the first vertex input binding whose state is updated by the command.
//   bindingCount: the number of vertex input bindings whose state is updated by the command.
//   pBuffers: a pointer to an array of buffer handles.
//   pOffsets: a pointer to an array of buffer offsets.
//   pSizes: NULL or a pointer to an array of the size in bytes of vertex data bound from pBuffers.
//   pStrides: NULL or a pointer to an array of buffer strides.
vkCmdBindVertexBuffers2: PFN_vkCmdBindVertexBuffers2;

// vkCmdSetDepthTestEnable - Set depth test enable dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   depthTestEnable: specifies if the depth test is enabled.
vkCmdSetDepthTestEnable: PFN_vkCmdSetDepthTestEnable;

// vkCmdSetDepthWriteEnable - Set depth write enable dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   depthWriteEnable: specifies if depth writes are enabled.
vkCmdSetDepthWriteEnable: PFN_vkCmdSetDepthWriteEnable;

// vkCmdSetDepthCompareOp - Set depth comparison operator dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   depthCompareOp: a VkCompareOp value specifying the comparison operator used for the Depth Comparison step of the depth test.
vkCmdSetDepthCompareOp: PFN_vkCmdSetDepthCompareOp;

// vkCmdSetDepthBoundsTestEnable - Set depth bounds test enable dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   depthBoundsTestEnable: specifies if the depth bounds test is enabled.
vkCmdSetDepthBoundsTestEnable: PFN_vkCmdSetDepthBoundsTestEnable;

// vkCmdSetStencilTestEnable - Set stencil test enable dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   stencilTestEnable: specifies if the stencil test is enabled.
vkCmdSetStencilTestEnable: PFN_vkCmdSetStencilTestEnable;

// vkCmdSetStencilOp - Set stencil operation dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   faceMask: a bitmask of VkStencilFaceFlagBits specifying the set of stencil state for which to update the stencil operation.
//   failOp: a VkStencilOp value specifying the action performed on samples that fail the stencil test.
//   passOp: a VkStencilOp value specifying the action performed on samples that pass both the depth and stencil tests.
//   depthFailOp: a VkStencilOp value specifying the action performed on samples that pass the stencil test and fail the depth test.
//   compareOp: a VkCompareOp value specifying the comparison operator used in the stencil test.
vkCmdSetStencilOp: PFN_vkCmdSetStencilOp;

// vkCmdSetRasterizerDiscardEnable - Control whether primitives are discarded before the rasterization stage dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   rasterizerDiscardEnable: controls whether primitives are discarded immediately before the rasterization stage.
vkCmdSetRasterizerDiscardEnable: PFN_vkCmdSetRasterizerDiscardEnable;

// vkCmdSetDepthBiasEnable - Control whether to bias fragment depth values dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   depthBiasEnable: controls whether to bias fragment depth values.
vkCmdSetDepthBiasEnable: PFN_vkCmdSetDepthBiasEnable;

// vkCmdSetPrimitiveRestartEnable - Set primitive assembly restart state dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   primitiveRestartEnable: controls whether a special vertex index value is treated as restarting the assembly of primitives. It behaves in the same way as VkPipelineInputAssemblyStateCreateInfo::primitiveRestartEnable
vkCmdSetPrimitiveRestartEnable: PFN_vkCmdSetPrimitiveRestartEnable;

// vkGetDeviceBufferMemoryRequirements - Returns the memory requirements for specified Vulkan object
//   device: the logical device intended to own the buffer.
//   pInfo: a pointer to a VkDeviceBufferMemoryRequirements structure containing parameters required for the memory requirements query.
//   pMemoryRequirements: a pointer to a VkMemoryRequirements2 structure in which the memory requirements of the buffer object are returned.
vkGetDeviceBufferMemoryRequirements: PFN_vkGetDeviceBufferMemoryRequirements;

// vkGetDeviceImageMemoryRequirements - Returns the memory requirements for specified Vulkan object
//   device: the logical device intended to own the image.
//   pInfo: a pointer to a VkDeviceImageMemoryRequirements structure containing parameters required for the memory requirements query.
//   pMemoryRequirements: a pointer to a VkMemoryRequirements2 structure in which the memory requirements of the image object are returned.
vkGetDeviceImageMemoryRequirements: PFN_vkGetDeviceImageMemoryRequirements;

// vkGetDeviceImageSparseMemoryRequirements - Query the memory requirements for a sparse image
//   device: the logical device intended to own the image.
//   pInfo: a pointer to a VkDeviceImageMemoryRequirements structure containing parameters required for the memory requirements query.
//   pSparseMemoryRequirementCount: a pointer to an integer related to the number of sparse memory requirements available or queried, as described below.
//   pSparseMemoryRequirements: either NULL or a pointer to an array of VkSparseImageMemoryRequirements2 structures.
vkGetDeviceImageSparseMemoryRequirements: PFN_vkGetDeviceImageSparseMemoryRequirements;

// vkCmdSetLineStipple - Set line stipple dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   lineStippleFactor: the repeat factor used in stippled line rasterization.
//   lineStipplePattern: the bit pattern used in stippled line rasterization.
vkCmdSetLineStipple: PFN_vkCmdSetLineStipple;

// vkMapMemory2 - Map a memory object into application address space
//   device: the logical device that owns the memory.
//   pMemoryMapInfo: a pointer to a VkMemoryMapInfo structure describing parameters of the map.
//   ppData: a pointer to a void * variable in which is returned a host-accessible pointer to the beginning of the mapped range. This pointer minus VkMemoryMapInfo::offset must be aligned to at least VkPhysicalDeviceLimits::minMemoryMapAlignment.
vkMapMemory2: PFN_vkMapMemory2;

// vkUnmapMemory2 - Unmap a previously mapped memory object
//   device: the logical device that owns the memory.
//   pMemoryUnmapInfo: a pointer to a VkMemoryUnmapInfo structure describing parameters of the unmap.
vkUnmapMemory2: PFN_vkUnmapMemory2;

// vkCmdBindIndexBuffer2 - Bind an index buffer to a command buffer
//   commandBuffer: the command buffer into which the command is recorded.
//   buffer: the buffer being bound.
//   offset: the starting offset in bytes within buffer used in index buffer address calculations.
//   size: the size in bytes of index data bound from buffer.
//   indexType: a VkIndexType value specifying the size of the indices.
vkCmdBindIndexBuffer2: PFN_vkCmdBindIndexBuffer2;

// vkGetRenderingAreaGranularity - Returns the granularity for dynamic rendering optimal render area
//   device: the logical device that owns the render pass instance.
//   pRenderingAreaInfo: a pointer to a VkRenderingAreaInfo structure specifying details of the render pass instance to query the render area granularity for.
//   pGranularity: a pointer to a VkExtent2D structure in which the granularity is returned.
vkGetRenderingAreaGranularity: PFN_vkGetRenderingAreaGranularity;

// vkGetDeviceImageSubresourceLayout - Retrieve information about an image subresource without an image object
//   device: the logical device that owns the image.
//   pInfo: a pointer to a VkDeviceImageSubresourceInfo structure containing parameters required for the subresource layout query.
//   pLayout: a pointer to a VkSubresourceLayout2 structure in which the layout is returned.
vkGetDeviceImageSubresourceLayout: PFN_vkGetDeviceImageSubresourceLayout;

// vkGetImageSubresourceLayout2 - Retrieve information about an image subresource
//   device: the logical device that owns the image.
//   image: the image whose layout is being queried.
//   pSubresource: a pointer to a VkImageSubresource2 structure selecting a specific image for the image subresource.
//   pLayout: a pointer to a VkSubresourceLayout2 structure in which the layout is returned.
vkGetImageSubresourceLayout2: PFN_vkGetImageSubresourceLayout2;

// vkCmdPushDescriptorSet - Pushes descriptor updates into a command buffer
//   commandBuffer: the command buffer that the descriptors will be recorded in.
//   pipelineBindPoint: a VkPipelineBindPoint indicating the type of the pipeline that will use the descriptors. There is a separate set of push descriptor bindings for each pipeline type, so binding one does not disturb the others.
//   layout: a VkPipelineLayout object used to program the bindings.
//   set: the set number of the descriptor set in the pipeline layout that will be updated.
//   descriptorWriteCount: the number of elements in the pDescriptorWrites array.
//   pDescriptorWrites: a pointer to an array of VkWriteDescriptorSet structures describing the descriptors to be updated.
vkCmdPushDescriptorSet: PFN_vkCmdPushDescriptorSet;

// vkCmdPushDescriptorSetWithTemplate - Pushes descriptor updates into a command buffer using a descriptor update template
//   commandBuffer: the command buffer that the descriptors will be recorded in.
//   descriptorUpdateTemplate: a descriptor update template defining how to interpret the descriptor information in pData.
//   layout: a VkPipelineLayout object used to program the bindings. It must be compatible with the layout used to create the descriptorUpdateTemplate handle.
//   set: the set number of the descriptor set in the pipeline layout that will be updated. This must be the same number used to create the descriptorUpdateTemplate handle.
//   pData: a pointer to memory containing descriptors for the templated update.
vkCmdPushDescriptorSetWithTemplate: PFN_vkCmdPushDescriptorSetWithTemplate;

// vkCmdSetRenderingAttachmentLocations - Set color attachment location mappings for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   pLocationInfo: a VkRenderingAttachmentLocationInfo structure indicating the new mappings.
vkCmdSetRenderingAttachmentLocations: PFN_vkCmdSetRenderingAttachmentLocations;

// vkCmdSetRenderingInputAttachmentIndices - Set input attachment index mappings for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   pInputAttachmentIndexInfo: a VkRenderingInputAttachmentIndexInfo structure indicating the new mappings.
vkCmdSetRenderingInputAttachmentIndices: PFN_vkCmdSetRenderingInputAttachmentIndices;

// vkCmdBindDescriptorSets2 - Binds descriptor sets to a command buffer
//   commandBuffer: the command buffer that the descriptor sets will be bound to.
//   pBindDescriptorSetsInfo: a pointer to a VkBindDescriptorSetsInfo structure.
vkCmdBindDescriptorSets2: PFN_vkCmdBindDescriptorSets2;

// vkCmdPushConstants2 - Update the values of push constants
//   commandBuffer: the command buffer in which the push constant update will be recorded.
//   pPushConstantsInfo: a pointer to a VkPushConstantsInfo structure.
vkCmdPushConstants2: PFN_vkCmdPushConstants2;

// vkCmdPushDescriptorSet2 - Pushes descriptor updates into a command buffer
//   commandBuffer: the command buffer that the descriptors will be recorded in.
//   pPushDescriptorSetInfo: a pointer to a VkPushDescriptorSetInfo structure.
vkCmdPushDescriptorSet2: PFN_vkCmdPushDescriptorSet2;

// vkCmdPushDescriptorSetWithTemplate2 - Pushes descriptor updates into a command buffer using a descriptor update template
//   commandBuffer: the command buffer that the descriptors will be recorded in.
//   pPushDescriptorSetWithTemplateInfo: a pointer to a VkPushDescriptorSetWithTemplateInfo structure.
vkCmdPushDescriptorSetWithTemplate2: PFN_vkCmdPushDescriptorSetWithTemplate2;

// vkCopyMemoryToImage - Copy data from host memory into an image
//   device: the device which owns pCopyMemoryToImageInfo->dstImage.
//   pCopyMemoryToImageInfo: a pointer to a VkCopyMemoryToImageInfo structure describing the copy parameters.
vkCopyMemoryToImage: PFN_vkCopyMemoryToImage;

// vkCopyImageToMemory - Copy image data into host memory
//   device: the device which owns pCopyImageToMemoryInfo->srcImage.
//   pCopyImageToMemoryInfo: a pointer to a VkCopyImageToMemoryInfo structure describing the copy parameters.
vkCopyImageToMemory: PFN_vkCopyImageToMemory;

// vkCopyImageToImage - Copy image data using the host
//   device: the device which owns pCopyImageToImageInfo->srcImage and pCopyImageToImageInfo->dstImage.
//   pCopyImageToImageInfo: a pointer to a VkCopyImageToImageInfo structure describing the copy parameters.
vkCopyImageToImage: PFN_vkCopyImageToImage;

// vkTransitionImageLayout - Perform an image layout transition on the host
//   device: the device which owns pTransitions[i].image.
//   transitionCount: the number of image layout transitions to perform.
//   pTransitions: a pointer to an array of VkHostImageLayoutTransitionInfo structures specifying the image and subresource ranges within them to transition.
vkTransitionImageLayout: PFN_vkTransitionImageLayout;

// vkCreateSwapchainKHR - Create a swapchain
//   device: the device to create the swapchain for.
//   pCreateInfo: a pointer to a VkSwapchainCreateInfoKHR structure specifying the parameters of the created swapchain.
//   pAllocator: the allocator used for host memory allocated for the swapchain object when there is no more specific allocator available (see Memory Allocation).
//   pSwapchain: a pointer to a VkSwapchainKHR handle in which the created swapchain object will be returned.
vkCreateSwapchainKHR: PFN_vkCreateSwapchainKHR;

// vkDestroySwapchainKHR - Destroy a swapchain object
//   device: the VkDevice associated with swapchain.
//   swapchain: the swapchain to destroy.
//   pAllocator: the allocator used for host memory allocated for the swapchain object when there is no more specific allocator available (see Memory Allocation).
vkDestroySwapchainKHR: PFN_vkDestroySwapchainKHR;

// vkGetSwapchainImagesKHR - Obtain the array of presentable images associated with a swapchain
//   device: the device associated with swapchain.
//   swapchain: the swapchain to query.
//   pSwapchainImageCount: a pointer to an integer related to the number of presentable images available or queried, as described below.
//   pSwapchainImages: either NULL or a pointer to an array of VkImage handles.
vkGetSwapchainImagesKHR: PFN_vkGetSwapchainImagesKHR;

// vkAcquireNextImageKHR - Retrieve the index of the next available presentable image
//   device: the device associated with swapchain.
//   swapchain: the non-retired swapchain from which an image is being acquired.
//   timeout: specifies how long the function waits, in nanoseconds, if no image is available.
//   semaphore: VK_NULL_HANDLE or a semaphore defining a semaphore signal operation.
//   fence: VK_NULL_HANDLE or a fence to signal.
//   pImageIndex: a pointer to a uint32_t in which the index of the next image to use (i.e. an index into the array of images returned by vkGetSwapchainImagesKHR) is returned.
vkAcquireNextImageKHR: PFN_vkAcquireNextImageKHR;

// vkQueuePresentKHR - Queue an image for presentation
//   queue: a queue that is capable of presentation to the target surface&#8217;s platform on the same device as the image&#8217;s swapchain.
//   pPresentInfo: a pointer to a VkPresentInfoKHR structure specifying parameters of the presentation.
vkQueuePresentKHR: PFN_vkQueuePresentKHR;

// vkGetDeviceGroupPresentCapabilitiesKHR - Query present capabilities from other physical devices
//   device: the logical device.
//   pDeviceGroupPresentCapabilities: a pointer to a VkDeviceGroupPresentCapabilitiesKHR structure in which the device&#8217;s capabilities are returned.
vkGetDeviceGroupPresentCapabilitiesKHR: PFN_vkGetDeviceGroupPresentCapabilitiesKHR;

// vkGetDeviceGroupSurfacePresentModesKHR - Query present capabilities for a surface
//   device: the logical device.
//   surface: the surface.
//   pModes: a pointer to a VkDeviceGroupPresentModeFlagsKHR in which the supported device group present modes for the surface are returned.
vkGetDeviceGroupSurfacePresentModesKHR: PFN_vkGetDeviceGroupSurfacePresentModesKHR;

// vkAcquireNextImage2KHR - Retrieve the index of the next available presentable image
//   device: the device associated with swapchain.
//   pAcquireInfo: a pointer to a VkAcquireNextImageInfoKHR structure containing parameters of the acquire.
//   pImageIndex: a pointer to a uint32_t value specifying the index of the next image to use.
vkAcquireNextImage2KHR: PFN_vkAcquireNextImage2KHR;

// vkCreateSharedSwapchainsKHR - Create multiple swapchains that share presentable images
//   device: the device to create the swapchains for.
//   swapchainCount: the number of swapchains to create.
//   pCreateInfos: a pointer to an array of VkSwapchainCreateInfoKHR structures specifying the parameters of the created swapchains.
//   pAllocator: the allocator used for host memory allocated for the swapchain objects when there is no more specific allocator available (see Memory Allocation).
//   pSwapchains: a pointer to an array of VkSwapchainKHR handles in which the created swapchain objects will be returned.
vkCreateSharedSwapchainsKHR: PFN_vkCreateSharedSwapchainsKHR;

// vkCreateVideoSessionKHR - Creates a video session object
//   device: the logical device that creates the video session.
//   pCreateInfo: a pointer to a VkVideoSessionCreateInfoKHR structure containing parameters to be used to create the video session.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pVideoSession: a pointer to a VkVideoSessionKHR handle in which the resulting video session object is returned.
vkCreateVideoSessionKHR: PFN_vkCreateVideoSessionKHR;

// vkDestroyVideoSessionKHR - Destroy video session object
//   device: the logical device that destroys the video session.
//   videoSession: the video session to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyVideoSessionKHR: PFN_vkDestroyVideoSessionKHR;

// vkGetVideoSessionMemoryRequirementsKHR - Get the memory requirements for a video session
//   device: the logical device that owns the video session.
//   videoSession: the video session to query.
//   pMemoryRequirementsCount: a pointer to an integer related to the number of memory binding requirements available or queried, as described below.
//   pMemoryRequirements: NULL or a pointer to an array of VkVideoSessionMemoryRequirementsKHR structures in which the memory binding requirements of the video session are returned.
vkGetVideoSessionMemoryRequirementsKHR: PFN_vkGetVideoSessionMemoryRequirementsKHR;

// vkBindVideoSessionMemoryKHR - Bind Video Memory
//   device: the logical device that owns the video session.
//   videoSession: the video session to be bound with device memory.
//   bindSessionMemoryInfoCount: the number of elements in pBindSessionMemoryInfos.
//   pBindSessionMemoryInfos: a pointer to an array of bindSessionMemoryInfoCount VkBindVideoSessionMemoryInfoKHR structures specifying memory regions to be bound to specific memory bindings of the video session.
vkBindVideoSessionMemoryKHR: PFN_vkBindVideoSessionMemoryKHR;

// vkCreateVideoSessionParametersKHR - Creates video session parameters object
//   device: the logical device that creates the video session parameters object.
//   pCreateInfo: a pointer to VkVideoSessionParametersCreateInfoKHR structure containing parameters to be used to create the video session parameters object.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pVideoSessionParameters: a pointer to a VkVideoSessionParametersKHR handle in which the resulting video session parameters object is returned.
vkCreateVideoSessionParametersKHR: PFN_vkCreateVideoSessionParametersKHR;

// vkUpdateVideoSessionParametersKHR - Update video session parameters object
//   device: the logical device that updates the video session parameters.
//   videoSessionParameters: the video session parameters object to update.
//   pUpdateInfo: a pointer to a VkVideoSessionParametersUpdateInfoKHR structure specifying the parameter update information.
vkUpdateVideoSessionParametersKHR: PFN_vkUpdateVideoSessionParametersKHR;

// vkDestroyVideoSessionParametersKHR - Destroy video session parameters object
//   device: the logical device that destroys the video session parameters object.
//   videoSessionParameters: the video session parameters object to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyVideoSessionParametersKHR: PFN_vkDestroyVideoSessionParametersKHR;

// vkCmdBeginVideoCodingKHR - Begin video coding scope
//   commandBuffer: the command buffer in which to record the command.
//   pBeginInfo: a pointer to a VkVideoBeginCodingInfoKHR structure specifying the parameters of the video coding scope, including the video session and video session parameters object to use.
vkCmdBeginVideoCodingKHR: PFN_vkCmdBeginVideoCodingKHR;

// vkCmdEndVideoCodingKHR - End video coding scope
//   commandBuffer: the command buffer in which to record the command.
//   pEndCodingInfo: a pointer to a VkVideoEndCodingInfoKHR structure specifying the parameters for ending the video coding scope.
vkCmdEndVideoCodingKHR: PFN_vkCmdEndVideoCodingKHR;

// vkCmdControlVideoCodingKHR - Control video coding parameters
//   commandBuffer: the command buffer in which to record the command.
//   pCodingControlInfo: a pointer to a VkVideoCodingControlInfoKHR structure specifying the control parameters.
vkCmdControlVideoCodingKHR: PFN_vkCmdControlVideoCodingKHR;

// vkCmdDecodeVideoKHR - Launch a video decode operation
//   commandBuffer: the command buffer in which to record the command.
//   pDecodeInfo: a pointer to a VkVideoDecodeInfoKHR structure specifying the parameters of the video decode operations.
vkCmdDecodeVideoKHR: PFN_vkCmdDecodeVideoKHR;
vkCmdBeginRenderingKHR: PFN_vkCmdBeginRenderingKHR;
vkCmdEndRenderingKHR: PFN_vkCmdEndRenderingKHR;
vkGetDeviceGroupPeerMemoryFeaturesKHR: PFN_vkGetDeviceGroupPeerMemoryFeaturesKHR;
vkCmdSetDeviceMaskKHR: PFN_vkCmdSetDeviceMaskKHR;
vkCmdDispatchBaseKHR: PFN_vkCmdDispatchBaseKHR;
vkTrimCommandPoolKHR: PFN_vkTrimCommandPoolKHR;

// vkGetMemoryFdKHR - Get a POSIX file descriptor for a memory object
//   device: the logical device that created the device memory being exported.
//   pGetFdInfo: a pointer to a VkMemoryGetFdInfoKHR structure containing parameters of the export operation.
//   pFd: will return a file descriptor referencing the payload of the device memory object.
vkGetMemoryFdKHR: PFN_vkGetMemoryFdKHR;

// vkGetMemoryFdPropertiesKHR - Get Properties of External Memory File Descriptors
//   device: the logical device that will be importing fd.
//   handleType: a VkExternalMemoryHandleTypeFlagBits value specifying the type of the handle fd.
//   fd: the handle which will be imported.
//   pMemoryFdProperties: a pointer to a VkMemoryFdPropertiesKHR structure in which the properties of the handle fd are returned.
vkGetMemoryFdPropertiesKHR: PFN_vkGetMemoryFdPropertiesKHR;

// vkImportSemaphoreFdKHR - Import a semaphore from a POSIX file descriptor
//   device: the logical device that created the semaphore.
//   pImportSemaphoreFdInfo: a pointer to a VkImportSemaphoreFdInfoKHR structure specifying the semaphore and import parameters.
vkImportSemaphoreFdKHR: PFN_vkImportSemaphoreFdKHR;

// vkGetSemaphoreFdKHR - Get a POSIX file descriptor handle for a semaphore
//   device: the logical device that created the semaphore being exported.
//   pGetFdInfo: a pointer to a VkSemaphoreGetFdInfoKHR structure containing parameters of the export operation.
//   pFd: will return the file descriptor representing the semaphore payload.
vkGetSemaphoreFdKHR: PFN_vkGetSemaphoreFdKHR;
vkCmdPushDescriptorSetKHR: PFN_vkCmdPushDescriptorSetKHR;
vkCmdPushDescriptorSetWithTemplateKHR: PFN_vkCmdPushDescriptorSetWithTemplateKHR;
vkCreateDescriptorUpdateTemplateKHR: PFN_vkCreateDescriptorUpdateTemplateKHR;
vkDestroyDescriptorUpdateTemplateKHR: PFN_vkDestroyDescriptorUpdateTemplateKHR;
vkUpdateDescriptorSetWithTemplateKHR: PFN_vkUpdateDescriptorSetWithTemplateKHR;
vkCreateRenderPass2KHR: PFN_vkCreateRenderPass2KHR;
vkCmdBeginRenderPass2KHR: PFN_vkCmdBeginRenderPass2KHR;
vkCmdNextSubpass2KHR: PFN_vkCmdNextSubpass2KHR;
vkCmdEndRenderPass2KHR: PFN_vkCmdEndRenderPass2KHR;

// vkGetSwapchainStatusKHR - Get a swapchain&#8217;s status
//   device: the device associated with swapchain.
//   swapchain: the swapchain to query.
vkGetSwapchainStatusKHR: PFN_vkGetSwapchainStatusKHR;

// vkImportFenceFdKHR - Import a fence from a POSIX file descriptor
//   device: the logical device that created the fence.
//   pImportFenceFdInfo: a pointer to a VkImportFenceFdInfoKHR structure specifying the fence and import parameters.
vkImportFenceFdKHR: PFN_vkImportFenceFdKHR;

// vkGetFenceFdKHR - Get a POSIX file descriptor handle for a fence
//   device: the logical device that created the fence being exported.
//   pGetFdInfo: a pointer to a VkFenceGetFdInfoKHR structure containing parameters of the export operation.
//   pFd: will return the file descriptor representing the fence payload.
vkGetFenceFdKHR: PFN_vkGetFenceFdKHR;

// vkAcquireProfilingLockKHR - Acquires the profiling lock
//   device: the logical device to profile.
//   pInfo: a pointer to a VkAcquireProfilingLockInfoKHR structure containing information about how the profiling is to be acquired.
vkAcquireProfilingLockKHR: PFN_vkAcquireProfilingLockKHR;

// vkReleaseProfilingLockKHR - Releases the profiling lock
//   device: the logical device to cease profiling on.
vkReleaseProfilingLockKHR: PFN_vkReleaseProfilingLockKHR;
vkGetImageMemoryRequirements2KHR: PFN_vkGetImageMemoryRequirements2KHR;
vkGetBufferMemoryRequirements2KHR: PFN_vkGetBufferMemoryRequirements2KHR;
vkGetImageSparseMemoryRequirements2KHR: PFN_vkGetImageSparseMemoryRequirements2KHR;
vkCreateSamplerYcbcrConversionKHR: PFN_vkCreateSamplerYcbcrConversionKHR;
vkDestroySamplerYcbcrConversionKHR: PFN_vkDestroySamplerYcbcrConversionKHR;
vkBindBufferMemory2KHR: PFN_vkBindBufferMemory2KHR;
vkBindImageMemory2KHR: PFN_vkBindImageMemory2KHR;
vkGetDescriptorSetLayoutSupportKHR: PFN_vkGetDescriptorSetLayoutSupportKHR;
vkCmdDrawIndirectCountKHR: PFN_vkCmdDrawIndirectCountKHR;
vkCmdDrawIndexedIndirectCountKHR: PFN_vkCmdDrawIndexedIndirectCountKHR;
vkGetSemaphoreCounterValueKHR: PFN_vkGetSemaphoreCounterValueKHR;
vkWaitSemaphoresKHR: PFN_vkWaitSemaphoresKHR;
vkSignalSemaphoreKHR: PFN_vkSignalSemaphoreKHR;

// vkCmdSetFragmentShadingRateKHR - Set pipeline fragment shading rate and combiner operation dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   pFragmentSize: specifies the pipeline fragment shading rate for subsequent drawing commands.
//   combinerOps: specifies a VkFragmentShadingRateCombinerOpKHR determining how the pipeline, primitive, and attachment shading rates are combined for fragments generated by subsequent drawing commands.
vkCmdSetFragmentShadingRateKHR: PFN_vkCmdSetFragmentShadingRateKHR;
vkCmdSetRenderingAttachmentLocationsKHR: PFN_vkCmdSetRenderingAttachmentLocationsKHR;
vkCmdSetRenderingInputAttachmentIndicesKHR: PFN_vkCmdSetRenderingInputAttachmentIndicesKHR;

// vkWaitForPresentKHR - Wait for presentation
//   device: the device associated with swapchain.
//   swapchain: the non-retired swapchain on which an image was queued for presentation.
//   presentId: the presentation presentId to wait for.
//   timeout: the timeout period in units of nanoseconds. timeout is adjusted to the closest value allowed by the implementation-dependent timeout accuracy, which may be substantially longer than one nanosecond, and may be longer than the requested period.
vkWaitForPresentKHR: PFN_vkWaitForPresentKHR;
vkGetBufferDeviceAddressKHR: PFN_vkGetBufferDeviceAddressKHR;
vkGetBufferOpaqueCaptureAddressKHR: PFN_vkGetBufferOpaqueCaptureAddressKHR;
vkGetDeviceMemoryOpaqueCaptureAddressKHR: PFN_vkGetDeviceMemoryOpaqueCaptureAddressKHR;

// vkCreateDeferredOperationKHR - Create a deferred operation handle
//   device: the device which owns operation.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pDeferredOperation: a pointer to a handle in which the created VkDeferredOperationKHR is returned.
vkCreateDeferredOperationKHR: PFN_vkCreateDeferredOperationKHR;

// vkDestroyDeferredOperationKHR - Destroy a deferred operation handle
//   device: the device which owns operation.
//   operation: the completed operation to be destroyed.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyDeferredOperationKHR: PFN_vkDestroyDeferredOperationKHR;

// vkGetDeferredOperationMaxConcurrencyKHR - Query the maximum concurrency on a deferred operation
//   device: the device which owns operation.
//   operation: the deferred operation to be queried.
vkGetDeferredOperationMaxConcurrencyKHR: PFN_vkGetDeferredOperationMaxConcurrencyKHR;

// vkGetDeferredOperationResultKHR - Query the result of a deferred operation
//   device: the device which owns operation.
//   operation: the operation whose deferred result is being queried.
vkGetDeferredOperationResultKHR: PFN_vkGetDeferredOperationResultKHR;

// vkDeferredOperationJoinKHR - Assign a thread to a deferred operation
//   device: the device which owns operation.
//   operation: the deferred operation that the calling thread should work on.
vkDeferredOperationJoinKHR: PFN_vkDeferredOperationJoinKHR;

// vkGetPipelineExecutablePropertiesKHR - Get the executables associated with a pipeline
//   device: the device that created the pipeline.
//   pPipelineInfo: describes the pipeline being queried.
//   pExecutableCount: a pointer to an integer related to the number of pipeline executables available or queried, as described below.
//   pProperties: either NULL or a pointer to an array of VkPipelineExecutablePropertiesKHR structures.
vkGetPipelineExecutablePropertiesKHR: PFN_vkGetPipelineExecutablePropertiesKHR;

// vkGetPipelineExecutableStatisticsKHR - Get compile time statistics associated with a pipeline executable
//   device: the device that created the pipeline.
//   pExecutableInfo: describes the pipeline executable being queried.
//   pStatisticCount: a pointer to an integer related to the number of statistics available or queried, as described below.
//   pStatistics: either NULL or a pointer to an array of VkPipelineExecutableStatisticKHR structures.
vkGetPipelineExecutableStatisticsKHR: PFN_vkGetPipelineExecutableStatisticsKHR;

// vkGetPipelineExecutableInternalRepresentationsKHR - Get internal representations of the pipeline executable
//   device: the device that created the pipeline.
//   pExecutableInfo: describes the pipeline executable being queried.
//   pInternalRepresentationCount: a pointer to an integer related to the number of internal representations available or queried, as described below.
//   pInternalRepresentations: either NULL or a pointer to an array of VkPipelineExecutableInternalRepresentationKHR structures.
vkGetPipelineExecutableInternalRepresentationsKHR: PFN_vkGetPipelineExecutableInternalRepresentationsKHR;
vkMapMemory2KHR: PFN_vkMapMemory2KHR;
vkUnmapMemory2KHR: PFN_vkUnmapMemory2KHR;

// vkGetEncodedVideoSessionParametersKHR - Get encoded parameter sets from a video session parameters object
//   device: the logical device that owns the video session parameters object.
//   pVideoSessionParametersInfo: a pointer to a VkVideoEncodeSessionParametersGetInfoKHR structure specifying the parameters of the encoded parameter data to retrieve.
//   pFeedbackInfo: either NULL or a pointer to a VkVideoEncodeSessionParametersFeedbackInfoKHR structure in which feedback about the requested parameter data is returned.
//   pDataSize: a pointer to a size_t value related to the amount of encode parameter data returned, as described below.
//   pData: either NULL or a pointer to a buffer to write the encoded parameter data to.
vkGetEncodedVideoSessionParametersKHR: PFN_vkGetEncodedVideoSessionParametersKHR;

// vkCmdEncodeVideoKHR - Launch video encode operations
//   commandBuffer: the command buffer in which to record the command.
//   pEncodeInfo: a pointer to a VkVideoEncodeInfoKHR structure specifying the parameters of the video encode operations.
vkCmdEncodeVideoKHR: PFN_vkCmdEncodeVideoKHR;
vkCmdSetEvent2KHR: PFN_vkCmdSetEvent2KHR;
vkCmdResetEvent2KHR: PFN_vkCmdResetEvent2KHR;
vkCmdWaitEvents2KHR: PFN_vkCmdWaitEvents2KHR;
vkCmdPipelineBarrier2KHR: PFN_vkCmdPipelineBarrier2KHR;
vkCmdWriteTimestamp2KHR: PFN_vkCmdWriteTimestamp2KHR;
vkQueueSubmit2KHR: PFN_vkQueueSubmit2KHR;
vkCmdCopyBuffer2KHR: PFN_vkCmdCopyBuffer2KHR;
vkCmdCopyImage2KHR: PFN_vkCmdCopyImage2KHR;
vkCmdCopyBufferToImage2KHR: PFN_vkCmdCopyBufferToImage2KHR;
vkCmdCopyImageToBuffer2KHR: PFN_vkCmdCopyImageToBuffer2KHR;
vkCmdBlitImage2KHR: PFN_vkCmdBlitImage2KHR;
vkCmdResolveImage2KHR: PFN_vkCmdResolveImage2KHR;

// vkCmdTraceRaysIndirect2KHR - Initialize an indirect ray tracing dispatch with indirect shader binding tables
//   commandBuffer: the command buffer into which the command will be recorded.
//   indirectDeviceAddress: a buffer device address which is a pointer to a VkTraceRaysIndirectCommand2KHR structure containing the trace ray parameters.
vkCmdTraceRaysIndirect2KHR: PFN_vkCmdTraceRaysIndirect2KHR;
vkGetDeviceBufferMemoryRequirementsKHR: PFN_vkGetDeviceBufferMemoryRequirementsKHR;
vkGetDeviceImageMemoryRequirementsKHR: PFN_vkGetDeviceImageMemoryRequirementsKHR;
vkGetDeviceImageSparseMemoryRequirementsKHR: PFN_vkGetDeviceImageSparseMemoryRequirementsKHR;
vkCmdBindIndexBuffer2KHR: PFN_vkCmdBindIndexBuffer2KHR;
vkGetRenderingAreaGranularityKHR: PFN_vkGetRenderingAreaGranularityKHR;
vkGetDeviceImageSubresourceLayoutKHR: PFN_vkGetDeviceImageSubresourceLayoutKHR;
vkGetImageSubresourceLayout2KHR: PFN_vkGetImageSubresourceLayout2KHR;

// vkCreatePipelineBinariesKHR - Create pipeline binaries from a pipeline or previously retrieved data
//   device: the logical device that creates the pipeline binary objects.
//   pCreateInfo: a pointer to a VkPipelineBinaryCreateInfoKHR structure that contains the data to create the pipeline binaries from.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pBinaries: a pointer to a VkPipelineBinaryHandlesInfoKHR structure in which the resulting pipeline binaries are returned.
vkCreatePipelineBinariesKHR: PFN_vkCreatePipelineBinariesKHR;

// vkDestroyPipelineBinaryKHR - Destroy a pipeline binary
//   device: the logical device that created the pipeline binary object.
//   pipelineBinary: the handle of the pipeline binary object to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyPipelineBinaryKHR: PFN_vkDestroyPipelineBinaryKHR;

// vkGetPipelineKeyKHR - Generate the pipeline key from pipeline creation info
//   device: the logical device that creates the pipeline object.
//   pPipelineCreateInfo: NULL or a pointer to a VkPipelineCreateInfoKHR structure.
//   pPipelineKey: a pointer to a VkPipelineBinaryKeyKHR structure in which the resulting key is returned.
vkGetPipelineKeyKHR: PFN_vkGetPipelineKeyKHR;

// vkGetPipelineBinaryDataKHR - Get the data store from a pipeline binary
//   device: the logical device that created the pipeline binary.
//   pInfo: a pointer to a VkPipelineBinaryDataInfoKHR structure which describes the pipeline binary to get data from.
//   pPipelineBinaryKey: a pointer to a VkPipelineBinaryKeyKHR structure where the key for this binary will be written.
//   pPipelineBinaryDataSize: a pointer to a size_t value related to the amount of data in the pipeline binary, as described below.
//   pPipelineBinaryData: either NULL or a pointer to a buffer.
vkGetPipelineBinaryDataKHR: PFN_vkGetPipelineBinaryDataKHR;

// vkReleaseCapturedPipelineDataKHR - Release captured pipeline binary data
//   device: the logical device that created the pipeline object.
//   pInfo: a pointer to a VkReleaseCapturedPipelineDataInfoKHR structure which describes the pipeline to release the data from.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkReleaseCapturedPipelineDataKHR: PFN_vkReleaseCapturedPipelineDataKHR;
vkCmdSetLineStippleKHR: PFN_vkCmdSetLineStippleKHR;

// vkGetCalibratedTimestampsKHR - Query calibrated timestamps
//   device: the logical device used to perform the query.
//   timestampCount: the number of timestamps to query.
//   pTimestampInfos: a pointer to an array of timestampCount VkCalibratedTimestampInfoKHR structures, describing the time domains the calibrated timestamps should be captured from.
//   pTimestamps: a pointer to an array of timestampCount 64-bit unsigned integer values in which the requested calibrated timestamp values are returned.
//   pMaxDeviation: a pointer to a 64-bit unsigned integer value in which the strictly positive maximum deviation, in nanoseconds, of the calibrated timestamp values is returned.
vkGetCalibratedTimestampsKHR: PFN_vkGetCalibratedTimestampsKHR;
vkCmdBindDescriptorSets2KHR: PFN_vkCmdBindDescriptorSets2KHR;
vkCmdPushConstants2KHR: PFN_vkCmdPushConstants2KHR;
vkCmdPushDescriptorSet2KHR: PFN_vkCmdPushDescriptorSet2KHR;
vkCmdPushDescriptorSetWithTemplate2KHR: PFN_vkCmdPushDescriptorSetWithTemplate2KHR;

// vkCmdSetDescriptorBufferOffsets2EXT - Setting descriptor buffer offsets in a command buffer
//   commandBuffer: the command buffer in which the descriptor buffer offsets will be set.
//   pSetDescriptorBufferOffsetsInfo: a pointer to a VkSetDescriptorBufferOffsetsInfoEXT structure.
vkCmdSetDescriptorBufferOffsets2EXT: PFN_vkCmdSetDescriptorBufferOffsets2EXT;

// vkCmdBindDescriptorBufferEmbeddedSamplers2EXT - Setting embedded immutable samplers offsets in a command buffer
//   commandBuffer: the command buffer that the embedded immutable samplers will be bound to.
//   pBindDescriptorBufferEmbeddedSamplersInfo: a pointer to a VkBindDescriptorBufferEmbeddedSamplersInfoEXT structure.
vkCmdBindDescriptorBufferEmbeddedSamplers2EXT: PFN_vkCmdBindDescriptorBufferEmbeddedSamplers2EXT;

// vkDebugMarkerSetObjectTagEXT - Attach arbitrary data to an object
//   device: the device that created the object.
//   pTagInfo: a pointer to a VkDebugMarkerObjectTagInfoEXT structure specifying the parameters of the tag to attach to the object.
vkDebugMarkerSetObjectTagEXT: PFN_vkDebugMarkerSetObjectTagEXT;

// vkDebugMarkerSetObjectNameEXT - Give an application-defined name to an object
//   device: the device that created the object.
//   pNameInfo: a pointer to a VkDebugMarkerObjectNameInfoEXT structure specifying the parameters of the name to set on the object.
vkDebugMarkerSetObjectNameEXT: PFN_vkDebugMarkerSetObjectNameEXT;

// vkCmdDebugMarkerBeginEXT - Open a command buffer marker region
//   commandBuffer: the command buffer into which the command is recorded.
//   pMarkerInfo: a pointer to a VkDebugMarkerMarkerInfoEXT structure specifying the parameters of the marker region to open.
vkCmdDebugMarkerBeginEXT: PFN_vkCmdDebugMarkerBeginEXT;

// vkCmdDebugMarkerEndEXT - Close a command buffer marker region
//   commandBuffer: the command buffer into which the command is recorded.
vkCmdDebugMarkerEndEXT: PFN_vkCmdDebugMarkerEndEXT;

// vkCmdDebugMarkerInsertEXT - Insert a marker label into a command buffer
//   commandBuffer: the command buffer into which the command is recorded.
//   pMarkerInfo: a pointer to a VkDebugMarkerMarkerInfoEXT structure specifying the parameters of the marker to insert.
vkCmdDebugMarkerInsertEXT: PFN_vkCmdDebugMarkerInsertEXT;

// vkCmdBindTransformFeedbackBuffersEXT - Bind transform feedback buffers to a command buffer
//   commandBuffer: the command buffer into which the command is recorded.
//   firstBinding: the index of the first transform feedback binding whose state is updated by the command.
//   bindingCount: the number of transform feedback bindings whose state is updated by the command.
//   pBuffers: a pointer to an array of buffer handles.
//   pOffsets: a pointer to an array of buffer offsets.
//   pSizes: NULL or a pointer to an array of VkDeviceSize buffer sizes, specifying the maximum number of bytes to capture to the corresponding transform feedback buffer. If pSizes is NULL, it is equivalent to setting a pSizes array where every element is VK_WHOLE_SIZE.
vkCmdBindTransformFeedbackBuffersEXT: PFN_vkCmdBindTransformFeedbackBuffersEXT;

// vkCmdBeginTransformFeedbackEXT - Make transform feedback active in the command buffer
//   commandBuffer: the command buffer into which the command is recorded.
//   firstCounterBuffer: the index of the first transform feedback buffer corresponding to pCounterBuffers[0] and pCounterBufferOffsets[0].
//   counterBufferCount: the size of the pCounterBuffers and pCounterBufferOffsets arrays.
//   pCounterBuffers: NULL or a pointer to an array of VkBuffer handles to counter buffers. Each buffer contains a 4 byte integer value representing the byte offset from the start of the corresponding transform feedback buffer from where to start capturing vertex data. If the byte offset stored to the counter buffer location was done using vkCmdEndTransformFeedbackEXT it can be used to resume transform feedback from the previous location. In that case, a pipeline barrier is required between the calls to vkCmdEndTransformFeedbackEXT and vkCmdBeginTransformFeedbackEXT, with VK_PIPELINE_STAGE_TRANSFORM_FEEDBACK_BIT_EXT as the source and destination stages, VK_ACCESS_TRANSFORM_FEEDBACK_COUNTER_WRITE_BIT_EXT as the source access and VK_ACCESS_TRANSFORM_FEEDBACK_COUNTER_READ_BIT_EXT as the destination access. If pCounterBuffers is NULL, then transform feedback will start capturing vertex data to byte offset zero in all bound transform feedback buffers. For each element of pCounterBuffers that is VK_NULL_HANDLE, transform feedback will start capturing vertex data to byte zero in the corresponding bound transform feedback buffer.
//   pCounterBufferOffsets: NULL or a pointer to an array of VkDeviceSize values specifying offsets within each of the pCounterBuffers where the counter values were previously written. The location in each counter buffer at these offsets must be large enough to contain 4 bytes of data. This data is the number of bytes captured by the previous transform feedback to this buffer. If pCounterBufferOffsets is NULL, then it is assumed the offsets are zero.
vkCmdBeginTransformFeedbackEXT: PFN_vkCmdBeginTransformFeedbackEXT;

// vkCmdEndTransformFeedbackEXT - Make transform feedback inactive in the command buffer
//   commandBuffer: the command buffer into which the command is recorded.
//   firstCounterBuffer: the index of the first transform feedback buffer corresponding to pCounterBuffers[0] and pCounterBufferOffsets[0].
//   counterBufferCount: the size of the pCounterBuffers and pCounterBufferOffsets arrays.
//   pCounterBuffers: NULL or a pointer to an array of VkBuffer handles to counter buffers. The counter buffers are used to record the current byte positions of each transform feedback buffer where the next vertex output data would be captured. This can be used by a subsequent vkCmdBeginTransformFeedbackEXT call to resume transform feedback capture from this position. It can also be used by vkCmdDrawIndirectByteCountEXT to determine the vertex count of the draw call.
//   pCounterBufferOffsets: NULL or a pointer to an array of VkDeviceSize values specifying offsets within each of the pCounterBuffers where the counter values can be written. The location in each counter buffer at these offsets must be large enough to contain 4 bytes of data. The data stored at this location is the byte offset from the start of the transform feedback buffer binding where the next vertex data would be written. If pCounterBufferOffsets is NULL, then it is assumed the offsets are zero.
vkCmdEndTransformFeedbackEXT: PFN_vkCmdEndTransformFeedbackEXT;

// vkCmdBeginQueryIndexedEXT - Begin an indexed query
//   commandBuffer: the command buffer into which this command will be recorded.
//   queryPool: the query pool that will manage the results of the query.
//   query: the query index within the query pool that will contain the results.
//   flags: a bitmask of VkQueryControlFlagBits specifying constraints on the types of queries that can be performed.
//   index: the query type specific index. When the query type is VK_QUERY_TYPE_TRANSFORM_FEEDBACK_STREAM_EXT or VK_QUERY_TYPE_PRIMITIVES_GENERATED_EXT, the index represents the vertex stream.
vkCmdBeginQueryIndexedEXT: PFN_vkCmdBeginQueryIndexedEXT;

// vkCmdEndQueryIndexedEXT - Ends a query
//   commandBuffer: the command buffer into which this command will be recorded.
//   queryPool: the query pool that is managing the results of the query.
//   query: the query index within the query pool where the result is stored.
//   index: the query type specific index.
vkCmdEndQueryIndexedEXT: PFN_vkCmdEndQueryIndexedEXT;

// vkCmdDrawIndirectByteCountEXT - Draw primitives with indirect parameters where the vertex count is derived from the counter byte value in the counter buffer
//   commandBuffer: the command buffer into which the command is recorded.
//   instanceCount: the number of instances to draw.
//   firstInstance: the instance ID of the first instance to draw.
//   counterBuffer: the buffer handle from where the byte count is read.
//   counterBufferOffset: the offset into the buffer used to read the byte count, which is used to calculate the vertex count for this draw call.
//   counterOffset: subtracted from the byte count read from the counterBuffer at the counterBufferOffset
//   vertexStride: the stride in bytes between each element of the vertex data that is used to calculate the vertex count from the counter value. This value is typically the same value that was used in the graphics pipeline state when the transform feedback was captured as the XfbStride.
vkCmdDrawIndirectByteCountEXT: PFN_vkCmdDrawIndirectByteCountEXT;

// vkCreateCuModuleNVX - Stub description of vkCreateCuModuleNVX
vkCreateCuModuleNVX: PFN_vkCreateCuModuleNVX;

// vkCreateCuFunctionNVX - Stub description of vkCreateCuFunctionNVX
vkCreateCuFunctionNVX: PFN_vkCreateCuFunctionNVX;

// vkDestroyCuModuleNVX - Stub description of vkDestroyCuModuleNVX
vkDestroyCuModuleNVX: PFN_vkDestroyCuModuleNVX;

// vkDestroyCuFunctionNVX - Stub description of vkDestroyCuFunctionNVX
vkDestroyCuFunctionNVX: PFN_vkDestroyCuFunctionNVX;

// vkCmdCuLaunchKernelNVX - Stub description of vkCmdCuLaunchKernelNVX
vkCmdCuLaunchKernelNVX: PFN_vkCmdCuLaunchKernelNVX;

// vkGetImageViewHandleNVX - Get the handle for an image view for a specific descriptor type
//   device: the logical device that owns the image view.
//   pInfo: describes the image view to query and type of handle.
vkGetImageViewHandleNVX: PFN_vkGetImageViewHandleNVX;

// vkGetImageViewHandle64NVX - Get the 64-bit handle for an image view for a specific descriptor type
//   device: the logical device that owns the image view.
//   pInfo: describes the image view to query and type of handle.
vkGetImageViewHandle64NVX: PFN_vkGetImageViewHandle64NVX;

// vkGetImageViewAddressNVX - Get the device address of an image view
//   device: the logical device that owns the image view.
//   imageView: a handle to the image view.
//   pProperties: contains the device address and size when the call returns.
vkGetImageViewAddressNVX: PFN_vkGetImageViewAddressNVX;
vkCmdDrawIndirectCountAMD: PFN_vkCmdDrawIndirectCountAMD;
vkCmdDrawIndexedIndirectCountAMD: PFN_vkCmdDrawIndexedIndirectCountAMD;

// vkGetShaderInfoAMD - Get information about a shader in a pipeline
//   device: the device that created pipeline.
//   pipeline: the target of the query.
//   shaderStage: a VkShaderStageFlagBits specifying the particular shader within the pipeline about which information is being queried.
//   infoType: describes what kind of information is being queried.
//   pInfoSize: a pointer to a value related to the amount of data the query returns, as described below.
//   pInfo: either NULL or a pointer to a buffer.
vkGetShaderInfoAMD: PFN_vkGetShaderInfoAMD;

// vkCmdBeginConditionalRenderingEXT - Define the beginning of a conditional rendering block
//   commandBuffer: the command buffer into which this command will be recorded.
//   pConditionalRenderingBegin: a pointer to a VkConditionalRenderingBeginInfoEXT structure specifying parameters of conditional rendering.
vkCmdBeginConditionalRenderingEXT: PFN_vkCmdBeginConditionalRenderingEXT;

// vkCmdEndConditionalRenderingEXT - Define the end of a conditional rendering block
//   commandBuffer: the command buffer into which this command will be recorded.
vkCmdEndConditionalRenderingEXT: PFN_vkCmdEndConditionalRenderingEXT;

// vkCmdSetViewportWScalingNV - Set the viewport W scaling dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   firstViewport: the index of the first viewport whose parameters are updated by the command.
//   viewportCount: the number of viewports whose parameters are updated by the command.
//   pViewportWScalings: a pointer to an array of VkViewportWScalingNV structures specifying viewport parameters.
vkCmdSetViewportWScalingNV: PFN_vkCmdSetViewportWScalingNV;

// vkDisplayPowerControlEXT - Set the power state of a display
//   device: a logical device associated with display.
//   display: the display whose power state is modified.
//   pDisplayPowerInfo: a pointer to a VkDisplayPowerInfoEXT structure specifying the new power state of display.
vkDisplayPowerControlEXT: PFN_vkDisplayPowerControlEXT;

// vkRegisterDeviceEventEXT - Signal a fence when a device event occurs
//   device: a logical device on which the event may occur.
//   pDeviceEventInfo: a pointer to a VkDeviceEventInfoEXT structure describing the event of interest to the application.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pFence: a pointer to a handle in which the resulting fence object is returned.
vkRegisterDeviceEventEXT: PFN_vkRegisterDeviceEventEXT;

// vkRegisterDisplayEventEXT - Signal a fence when a display event occurs
//   device: a logical device associated with display
//   display: the display on which the event may occur.
//   pDisplayEventInfo: a pointer to a VkDisplayEventInfoEXT structure describing the event of interest to the application.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pFence: a pointer to a handle in which the resulting fence object is returned.
vkRegisterDisplayEventEXT: PFN_vkRegisterDisplayEventEXT;

// vkGetSwapchainCounterEXT - Query the current value of a surface counter
//   device: the VkDevice associated with swapchain.
//   swapchain: the swapchain from which to query the counter value.
//   counter: a VkSurfaceCounterFlagBitsEXT value specifying the counter to query.
//   pCounterValue: will return the current value of the counter.
vkGetSwapchainCounterEXT: PFN_vkGetSwapchainCounterEXT;

// vkGetRefreshCycleDurationGOOGLE - Obtain the RC duration of the PE&#8217;s display
//   device: the device associated with swapchain.
//   swapchain: the swapchain to obtain the refresh duration for.
//   pDisplayTimingProperties: a pointer to a VkRefreshCycleDurationGOOGLE structure.
vkGetRefreshCycleDurationGOOGLE: PFN_vkGetRefreshCycleDurationGOOGLE;

// vkGetPastPresentationTimingGOOGLE - Obtain timing of a previously-presented image
//   device: the device associated with swapchain.
//   swapchain: the swapchain to obtain presentation timing information duration for.
//   pPresentationTimingCount: a pointer to an integer related to the number of VkPastPresentationTimingGOOGLE structures to query, as described below.
//   pPresentationTimings: either NULL or a pointer to an array of VkPastPresentationTimingGOOGLE structures.
vkGetPastPresentationTimingGOOGLE: PFN_vkGetPastPresentationTimingGOOGLE;

// vkCmdSetDiscardRectangleEXT - Set discard rectangles dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   firstDiscardRectangle: the index of the first discard rectangle whose state is updated by the command.
//   discardRectangleCount: the number of discard rectangles whose state are updated by the command.
//   pDiscardRectangles: a pointer to an array of VkRect2D structures specifying discard rectangles.
vkCmdSetDiscardRectangleEXT: PFN_vkCmdSetDiscardRectangleEXT;

// vkCmdSetDiscardRectangleEnableEXT - Enable discard rectangles dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   discardRectangleEnable: specifies whether discard rectangles are enabled or not.
vkCmdSetDiscardRectangleEnableEXT: PFN_vkCmdSetDiscardRectangleEnableEXT;

// vkCmdSetDiscardRectangleModeEXT - Sets the discard rectangle mode dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   discardRectangleMode: specifies the discard rectangle mode for all discard rectangles, either inclusive or exclusive.
vkCmdSetDiscardRectangleModeEXT: PFN_vkCmdSetDiscardRectangleModeEXT;

// vkSetHdrMetadataEXT - Set HDR metadata
//   device: the logical device where the swapchain(s) were created.
//   swapchainCount: the number of swapchains included in pSwapchains.
//   pSwapchains: a pointer to an array of swapchainCount VkSwapchainKHR handles.
//   pMetadata: a pointer to an array of swapchainCount VkHdrMetadataEXT structures.
vkSetHdrMetadataEXT: PFN_vkSetHdrMetadataEXT;

// vkSetDebugUtilsObjectNameEXT - Give an application-defined name to an object
//   device: the device that is associated with the named object passed in via objectHandle.
//   pNameInfo: a pointer to a VkDebugUtilsObjectNameInfoEXT structure specifying parameters of the name to set on the object.
vkSetDebugUtilsObjectNameEXT: PFN_vkSetDebugUtilsObjectNameEXT;

// vkSetDebugUtilsObjectTagEXT - Attach arbitrary data to an object
//   device: the device that created the object.
//   pTagInfo: a pointer to a VkDebugUtilsObjectTagInfoEXT structure specifying parameters of the tag to attach to the object.
vkSetDebugUtilsObjectTagEXT: PFN_vkSetDebugUtilsObjectTagEXT;

// vkQueueBeginDebugUtilsLabelEXT - Open a queue debug label region
//   queue: the queue in which to start a debug label region.
//   pLabelInfo: a pointer to a VkDebugUtilsLabelEXT structure specifying parameters of the label region to open.
vkQueueBeginDebugUtilsLabelEXT: PFN_vkQueueBeginDebugUtilsLabelEXT;

// vkQueueEndDebugUtilsLabelEXT - Close a queue debug label region
//   queue: the queue in which a debug label region should be closed.
vkQueueEndDebugUtilsLabelEXT: PFN_vkQueueEndDebugUtilsLabelEXT;

// vkQueueInsertDebugUtilsLabelEXT - Insert a label into a queue
//   queue: the queue into which a debug label will be inserted.
//   pLabelInfo: a pointer to a VkDebugUtilsLabelEXT structure specifying parameters of the label to insert.
vkQueueInsertDebugUtilsLabelEXT: PFN_vkQueueInsertDebugUtilsLabelEXT;

// vkCmdBeginDebugUtilsLabelEXT - Open a command buffer debug label region
//   commandBuffer: the command buffer into which the command is recorded.
//   pLabelInfo: a pointer to a VkDebugUtilsLabelEXT structure specifying parameters of the label region to open.
vkCmdBeginDebugUtilsLabelEXT: PFN_vkCmdBeginDebugUtilsLabelEXT;

// vkCmdEndDebugUtilsLabelEXT - Close a command buffer label region
//   commandBuffer: the command buffer into which the command is recorded.
vkCmdEndDebugUtilsLabelEXT: PFN_vkCmdEndDebugUtilsLabelEXT;

// vkCmdInsertDebugUtilsLabelEXT - Insert a label into a command buffer
//   commandBuffer: the command buffer into which the command is recorded.
//   pLabelInfo: a pointer to a VkDebugUtilsLabelEXT structure specifying parameters of the label to insert.
vkCmdInsertDebugUtilsLabelEXT: PFN_vkCmdInsertDebugUtilsLabelEXT;

// vkCmdSetSampleLocationsEXT - Set sample locations dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   pSampleLocationsInfo: the sample locations state to set.
vkCmdSetSampleLocationsEXT: PFN_vkCmdSetSampleLocationsEXT;

// vkGetImageDrmFormatModifierPropertiesEXT - Returns an image&#8217;s DRM format modifier
//   device: the logical device that owns the image.
//   image: the queried image.
//   pProperties: a pointer to a VkImageDrmFormatModifierPropertiesEXT structure in which properties of the image&#8217;s DRM format modifier are returned.
vkGetImageDrmFormatModifierPropertiesEXT: PFN_vkGetImageDrmFormatModifierPropertiesEXT;

// vkCreateValidationCacheEXT - Creates a new validation cache
//   device: the logical device that creates the validation cache object.
//   pCreateInfo: a pointer to a VkValidationCacheCreateInfoEXT structure containing the initial parameters for the validation cache object.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pValidationCache: a pointer to a VkValidationCacheEXT handle in which the resulting validation cache object is returned.
vkCreateValidationCacheEXT: PFN_vkCreateValidationCacheEXT;

// vkDestroyValidationCacheEXT - Destroy a validation cache object
//   device: the logical device that destroys the validation cache object.
//   validationCache: the handle of the validation cache to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyValidationCacheEXT: PFN_vkDestroyValidationCacheEXT;

// vkMergeValidationCachesEXT - Combine the data stores of validation caches
//   device: the logical device that owns the validation cache objects.
//   dstCache: the handle of the validation cache to merge results into.
//   srcCacheCount: the length of the pSrcCaches array.
//   pSrcCaches: a pointer to an array of validation cache handles, which will be merged into dstCache. The previous contents of dstCache are included after the merge.
vkMergeValidationCachesEXT: PFN_vkMergeValidationCachesEXT;

// vkGetValidationCacheDataEXT - Get the data store from a validation cache
//   device: the logical device that owns the validation cache.
//   validationCache: the validation cache to retrieve data from.
//   pDataSize: a pointer to a value related to the amount of data in the validation cache, as described below.
//   pData: either NULL or a pointer to a buffer.
vkGetValidationCacheDataEXT: PFN_vkGetValidationCacheDataEXT;

// vkCmdBindShadingRateImageNV - Bind a shading rate image on a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   imageView: an image view handle specifying the shading rate image. imageView may be VK_NULL_HANDLE, which is equivalent to specifying a view of an image filled with zero values.
//   imageLayout: the layout that the image subresources accessible from imageView will be in when the shading rate image is accessed.
vkCmdBindShadingRateImageNV: PFN_vkCmdBindShadingRateImageNV;

// vkCmdSetViewportShadingRatePaletteNV - Set shading rate image palettes dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   firstViewport: the index of the first viewport whose shading rate palette is updated by the command.
//   viewportCount: the number of viewports whose shading rate palettes are updated by the command.
//   pShadingRatePalettes: a pointer to an array of VkShadingRatePaletteNV structures defining the palette for each viewport.
vkCmdSetViewportShadingRatePaletteNV: PFN_vkCmdSetViewportShadingRatePaletteNV;

// vkCmdSetCoarseSampleOrderNV - Set order of coverage samples for coarse fragments dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   sampleOrderType: specifies the mechanism used to order coverage samples in fragments larger than one pixel.
//   customSampleOrderCount: specifies the number of custom sample orderings to use when ordering coverage samples.
//   pCustomSampleOrders: a pointer to an array of VkCoarseSampleOrderCustomNV structures, each structure specifying the coverage sample order for a single combination of fragment area and coverage sample count.
vkCmdSetCoarseSampleOrderNV: PFN_vkCmdSetCoarseSampleOrderNV;

// vkCreateAccelerationStructureNV - Create a new acceleration structure object
//   device: the logical device that creates the buffer object.
//   pCreateInfo: a pointer to a VkAccelerationStructureCreateInfoNV structure containing parameters affecting creation of the acceleration structure.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pAccelerationStructure: a pointer to a VkAccelerationStructureNV handle in which the resulting acceleration structure object is returned.
vkCreateAccelerationStructureNV: PFN_vkCreateAccelerationStructureNV;

// vkDestroyAccelerationStructureNV - Destroy an acceleration structure object
//   device: the logical device that destroys the buffer.
//   accelerationStructure: the acceleration structure to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyAccelerationStructureNV: PFN_vkDestroyAccelerationStructureNV;

// vkGetAccelerationStructureMemoryRequirementsNV - Get acceleration structure memory requirements
//   device: the logical device on which the acceleration structure was created.
//   pInfo: a pointer to a VkAccelerationStructureMemoryRequirementsInfoNV structure specifying the acceleration structure to get memory requirements for.
//   pMemoryRequirements: a pointer to a VkMemoryRequirements2KHR structure in which the requested acceleration structure memory requirements are returned.
vkGetAccelerationStructureMemoryRequirementsNV: PFN_vkGetAccelerationStructureMemoryRequirementsNV;

// vkBindAccelerationStructureMemoryNV - Bind acceleration structure memory
//   device: the logical device that owns the acceleration structures and memory.
//   bindInfoCount: the number of elements in pBindInfos.
//   pBindInfos: a pointer to an array of VkBindAccelerationStructureMemoryInfoNV structures describing acceleration structures and memory to bind.
vkBindAccelerationStructureMemoryNV: PFN_vkBindAccelerationStructureMemoryNV;

// vkCmdBuildAccelerationStructureNV - Build an acceleration structure
//   commandBuffer: the command buffer into which the command will be recorded.
//   pInfo: contains the shared information for the acceleration structure&#8217;s structure.
//   instanceData: the buffer containing an array of VkAccelerationStructureInstanceKHR structures defining acceleration structures. This parameter must be NULL for bottom level acceleration structures.
//   instanceOffset: the offset in bytes (relative to the start of instanceData) at which the instance data is located.
//   update: specifies whether to update the dst acceleration structure with the data in src.
//   dst: a pointer to the target acceleration structure for the build.
//   src: a pointer to an existing acceleration structure that is to be used to update the dst acceleration structure.
//   scratch: the VkBuffer that will be used as scratch memory for the build.
//   scratchOffset: the offset in bytes relative to the start of scratch that will be used as a scratch memory.
vkCmdBuildAccelerationStructureNV: PFN_vkCmdBuildAccelerationStructureNV;

// vkCmdCopyAccelerationStructureNV - Copy an acceleration structure
//   commandBuffer: the command buffer into which the command will be recorded.
//   dst: the target acceleration structure for the copy.
//   src: the source acceleration structure for the copy.
//   mode: a VkCopyAccelerationStructureModeKHR value specifying additional operations to perform during the copy.
vkCmdCopyAccelerationStructureNV: PFN_vkCmdCopyAccelerationStructureNV;

// vkCmdTraceRaysNV - Initialize a ray tracing dispatch
//   commandBuffer: the command buffer into which the command will be recorded.
//   raygenShaderBindingTableBuffer: the buffer object that holds the shader binding table data for the ray generation shader stage.
//   raygenShaderBindingOffset: the offset in bytes (relative to raygenShaderBindingTableBuffer) of the ray generation shader being used for the trace.
//   missShaderBindingTableBuffer: the buffer object that holds the shader binding table data for the miss shader stage.
//   missShaderBindingOffset: the offset in bytes (relative to missShaderBindingTableBuffer) of the miss shader being used for the trace.
//   missShaderBindingStride: the size in bytes of each shader binding table record in missShaderBindingTableBuffer.
//   hitShaderBindingTableBuffer: the buffer object that holds the shader binding table data for the hit shader stages.
//   hitShaderBindingOffset: the offset in bytes (relative to hitShaderBindingTableBuffer) of the hit shader group being used for the trace.
//   hitShaderBindingStride: the size in bytes of each shader binding table record in hitShaderBindingTableBuffer.
//   callableShaderBindingTableBuffer: the buffer object that holds the shader binding table data for the callable shader stage.
//   callableShaderBindingOffset: the offset in bytes (relative to callableShaderBindingTableBuffer) of the callable shader being used for the trace.
//   callableShaderBindingStride: the size in bytes of each shader binding table record in callableShaderBindingTableBuffer.
//   width: the width of the ray trace query dimensions.
//   height: height of the ray trace query dimensions.
//   depth: depth of the ray trace query dimensions.
vkCmdTraceRaysNV: PFN_vkCmdTraceRaysNV;

// vkCreateRayTracingPipelinesNV - Creates a new ray tracing pipeline object
//   device: the logical device that creates the ray tracing pipelines.
//   pipelineCache: either VK_NULL_HANDLE, indicating that pipeline caching is disabled, or to enable caching, the handle of a valid VkPipelineCache object. The implementation must not access this object outside of the duration of this command.
//   createInfoCount: the length of the pCreateInfos and pPipelines arrays.
//   pCreateInfos: a pointer to an array of VkRayTracingPipelineCreateInfoNV structures.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pPipelines: a pointer to an array in which the resulting ray tracing pipeline objects are returned.
vkCreateRayTracingPipelinesNV: PFN_vkCreateRayTracingPipelinesNV;

// vkGetRayTracingShaderGroupHandlesKHR - Query ray tracing pipeline shader group handles
//   device: the logical device containing the ray tracing pipeline.
//   pipeline: the ray tracing pipeline object containing the shaders.
//   firstGroup: the index of the first group to retrieve a handle for from the VkRayTracingPipelineCreateInfoKHR::pGroups or VkRayTracingPipelineCreateInfoNV::pGroups array.
//   groupCount: the number of shader handles to retrieve.
//   dataSize: the size in bytes of the buffer pointed to by pData.
//   pData: a pointer to an application-allocated buffer where the results will be written.
vkGetRayTracingShaderGroupHandlesKHR: PFN_vkGetRayTracingShaderGroupHandlesKHR;
vkGetRayTracingShaderGroupHandlesNV: PFN_vkGetRayTracingShaderGroupHandlesNV;

// vkGetAccelerationStructureHandleNV - Get opaque acceleration structure handle
//   device: the logical device that owns the acceleration structures.
//   accelerationStructure: the acceleration structure.
//   dataSize: the size in bytes of the buffer pointed to by pData.
//   pData: a pointer to an application-allocated buffer where the results will be written.
vkGetAccelerationStructureHandleNV: PFN_vkGetAccelerationStructureHandleNV;

// vkCmdWriteAccelerationStructuresPropertiesNV - Write acceleration structure result parameters to query results.
//   commandBuffer: the command buffer into which the command will be recorded.
//   accelerationStructureCount: the count of acceleration structures for which to query the property.
//   pAccelerationStructures: a pointer to an array of existing previously built acceleration structures.
//   queryType: a VkQueryType value specifying the type of queries managed by the pool.
//   queryPool: the query pool that will manage the results of the query.
//   firstQuery: the first query index within the query pool that will contain the accelerationStructureCount number of results.
vkCmdWriteAccelerationStructuresPropertiesNV: PFN_vkCmdWriteAccelerationStructuresPropertiesNV;

// vkCompileDeferredNV - Deferred compilation of shaders
//   device: the logical device containing the ray tracing pipeline.
//   pipeline: the ray tracing pipeline object containing the shaders.
//   shader: the index of the shader to compile.
vkCompileDeferredNV: PFN_vkCompileDeferredNV;

// vkGetMemoryHostPointerPropertiesEXT - Get properties of external memory host pointer
//   device: the logical device that will be importing pHostPointer.
//   handleType: a VkExternalMemoryHandleTypeFlagBits value specifying the type of the handle pHostPointer.
//   pHostPointer: the host pointer to import from.
//   pMemoryHostPointerProperties: a pointer to a VkMemoryHostPointerPropertiesEXT structure in which the host pointer properties are returned.
vkGetMemoryHostPointerPropertiesEXT: PFN_vkGetMemoryHostPointerPropertiesEXT;

// vkCmdWriteBufferMarkerAMD - Execute a pipelined write of a marker value into a buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   pipelineStage: a VkPipelineStageFlagBits value specifying the pipeline stage whose completion triggers the marker write.
//   dstBuffer: the buffer where the marker will be written to.
//   dstOffset: the byte offset into the buffer where the marker will be written to.
//   marker: the 32-bit value of the marker.
vkCmdWriteBufferMarkerAMD: PFN_vkCmdWriteBufferMarkerAMD;

// vkCmdWriteBufferMarker2AMD - Execute a pipelined write of a marker value into a buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   stage: specifies the pipeline stage whose completion triggers the marker write.
//   dstBuffer: the buffer where the marker will be written.
//   dstOffset: the byte offset into the buffer where the marker will be written.
//   marker: the 32-bit value of the marker.
vkCmdWriteBufferMarker2AMD: PFN_vkCmdWriteBufferMarker2AMD;
vkGetCalibratedTimestampsEXT: PFN_vkGetCalibratedTimestampsEXT;

// vkCmdDrawMeshTasksNV - Draw mesh task work items
//   commandBuffer: the command buffer into which the command will be recorded.
//   taskCount: the number of local workgroups to dispatch in the X dimension. Y and Z dimension are implicitly set to one.
//   firstTask: the X component of the first workgroup ID.
vkCmdDrawMeshTasksNV: PFN_vkCmdDrawMeshTasksNV;

// vkCmdDrawMeshTasksIndirectNV - Issue an indirect mesh tasks draw into a command buffer
//   commandBuffer: the command buffer into which the command is recorded.
//   buffer: the buffer containing draw parameters.
//   offset: the byte offset into buffer where parameters begin.
//   drawCount: the number of draws to execute, and can be zero.
//   stride: the byte stride between successive sets of draw parameters.
vkCmdDrawMeshTasksIndirectNV: PFN_vkCmdDrawMeshTasksIndirectNV;

// vkCmdDrawMeshTasksIndirectCountNV - Perform an indirect mesh tasks draw with the draw count sourced from a buffer
//   commandBuffer: the command buffer into which the command is recorded.
//   buffer: the buffer containing draw parameters.
//   offset: the byte offset into buffer where parameters begin.
//   countBuffer: the buffer containing the draw count.
//   countBufferOffset: the byte offset into countBuffer where the draw count begins.
//   maxDrawCount: specifies the maximum number of draws that will be executed. The actual number of executed draw calls is the minimum of the count specified in countBuffer and maxDrawCount.
//   stride: the byte stride between successive sets of draw parameters.
vkCmdDrawMeshTasksIndirectCountNV: PFN_vkCmdDrawMeshTasksIndirectCountNV;

// vkCmdSetExclusiveScissorEnableNV - Dynamically enable each exclusive scissor for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   firstExclusiveScissor: the index of the first exclusive scissor rectangle whose state is updated by the command.
//   exclusiveScissorCount: the number of exclusive scissor rectangles updated by the command.
//   pExclusiveScissorEnables: a pointer to an array of VkBool32 values defining whether the exclusive scissor is enabled.
vkCmdSetExclusiveScissorEnableNV: PFN_vkCmdSetExclusiveScissorEnableNV;

// vkCmdSetExclusiveScissorNV - Set exclusive scissor rectangles dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   firstExclusiveScissor: the index of the first exclusive scissor rectangle whose state is updated by the command.
//   exclusiveScissorCount: the number of exclusive scissor rectangles updated by the command.
//   pExclusiveScissors: a pointer to an array of VkRect2D structures defining exclusive scissor rectangles.
vkCmdSetExclusiveScissorNV: PFN_vkCmdSetExclusiveScissorNV;

// vkCmdSetCheckpointNV - Insert diagnostic checkpoint in command stream
//   commandBuffer: the command buffer that will receive the marker
//   pCheckpointMarker: an opaque application-provided value that will be associated with the checkpoint.
vkCmdSetCheckpointNV: PFN_vkCmdSetCheckpointNV;

// vkGetQueueCheckpointDataNV - Retrieve diagnostic checkpoint data
//   queue: the VkQueue object the caller would like to retrieve checkpoint data for
//   pCheckpointDataCount: a pointer to an integer related to the number of checkpoint markers available or queried, as described below.
//   pCheckpointData: either NULL or a pointer to an array of VkCheckpointDataNV structures.
vkGetQueueCheckpointDataNV: PFN_vkGetQueueCheckpointDataNV;

// vkGetQueueCheckpointData2NV - Retrieve diagnostic checkpoint data
//   queue: the VkQueue object the caller would like to retrieve checkpoint data for
//   pCheckpointDataCount: a pointer to an integer related to the number of checkpoint markers available or queried, as described below.
//   pCheckpointData: either NULL or a pointer to an array of VkCheckpointData2NV structures.
vkGetQueueCheckpointData2NV: PFN_vkGetQueueCheckpointData2NV;

// vkInitializePerformanceApiINTEL - Initialize a device for performance queries
//   device: the logical device used for the queries.
//   pInitializeInfo: a pointer to a VkInitializePerformanceApiInfoINTEL structure specifying initialization parameters.
vkInitializePerformanceApiINTEL: PFN_vkInitializePerformanceApiINTEL;

// vkUninitializePerformanceApiINTEL - Uninitialize a device for performance queries
//   device: the logical device used for the queries.
vkUninitializePerformanceApiINTEL: PFN_vkUninitializePerformanceApiINTEL;

// vkCmdSetPerformanceMarkerINTEL - Markers
vkCmdSetPerformanceMarkerINTEL: PFN_vkCmdSetPerformanceMarkerINTEL;

// vkCmdSetPerformanceStreamMarkerINTEL - Markers
//   commandBuffer: a VkCommandBuffer into which a stream marker is added.
//   pMarkerInfo: a pointer to a VkPerformanceStreamMarkerInfoINTEL structure describing the marker to insert.
vkCmdSetPerformanceStreamMarkerINTEL: PFN_vkCmdSetPerformanceStreamMarkerINTEL;

// vkCmdSetPerformanceOverrideINTEL - Performance override settings
//   commandBuffer: the command buffer where the override takes place.
//   pOverrideInfo: a pointer to a VkPerformanceOverrideInfoINTEL structure selecting the parameter to override.
vkCmdSetPerformanceOverrideINTEL: PFN_vkCmdSetPerformanceOverrideINTEL;

// vkAcquirePerformanceConfigurationINTEL - Acquire the performance query capability
//   device: the logical device that the performance query commands will be submitted to.
//   pAcquireInfo: a pointer to a VkPerformanceConfigurationAcquireInfoINTEL structure, specifying the performance configuration to acquire.
//   pConfiguration: a pointer to a VkPerformanceConfigurationINTEL handle in which the resulting configuration object is returned.
vkAcquirePerformanceConfigurationINTEL: PFN_vkAcquirePerformanceConfigurationINTEL;

// vkReleasePerformanceConfigurationINTEL - Release a configuration to capture performance data
//   device: the device associated to the configuration object to release.
//   configuration: the configuration object to release.
vkReleasePerformanceConfigurationINTEL: PFN_vkReleasePerformanceConfigurationINTEL;

// vkQueueSetPerformanceConfigurationINTEL - Set a performance query
//   queue: the queue on which the configuration will be used.
//   configuration: the configuration to use.
vkQueueSetPerformanceConfigurationINTEL: PFN_vkQueueSetPerformanceConfigurationINTEL;

// vkGetPerformanceParameterINTEL - Query performance capabilities of the device
//   device: the logical device to query.
//   parameter: the parameter to query.
//   pValue: a pointer to a VkPerformanceValueINTEL structure in which the type and value of the parameter are returned.
vkGetPerformanceParameterINTEL: PFN_vkGetPerformanceParameterINTEL;

// vkSetLocalDimmingAMD - Set Local Dimming
//   device: the device associated with swapChain.
//   swapChain: handle to enable local dimming.
//   localDimmingEnable: specifies whether local dimming is enabled for the swapchain.
vkSetLocalDimmingAMD: PFN_vkSetLocalDimmingAMD;
vkGetBufferDeviceAddressEXT: PFN_vkGetBufferDeviceAddressEXT;
vkCmdSetLineStippleEXT: PFN_vkCmdSetLineStippleEXT;
vkResetQueryPoolEXT: PFN_vkResetQueryPoolEXT;
vkCmdSetCullModeEXT: PFN_vkCmdSetCullModeEXT;
vkCmdSetFrontFaceEXT: PFN_vkCmdSetFrontFaceEXT;
vkCmdSetPrimitiveTopologyEXT: PFN_vkCmdSetPrimitiveTopologyEXT;
vkCmdSetViewportWithCountEXT: PFN_vkCmdSetViewportWithCountEXT;
vkCmdSetScissorWithCountEXT: PFN_vkCmdSetScissorWithCountEXT;
vkCmdBindVertexBuffers2EXT: PFN_vkCmdBindVertexBuffers2EXT;
vkCmdSetDepthTestEnableEXT: PFN_vkCmdSetDepthTestEnableEXT;
vkCmdSetDepthWriteEnableEXT: PFN_vkCmdSetDepthWriteEnableEXT;
vkCmdSetDepthCompareOpEXT: PFN_vkCmdSetDepthCompareOpEXT;
vkCmdSetDepthBoundsTestEnableEXT: PFN_vkCmdSetDepthBoundsTestEnableEXT;
vkCmdSetStencilTestEnableEXT: PFN_vkCmdSetStencilTestEnableEXT;
vkCmdSetStencilOpEXT: PFN_vkCmdSetStencilOpEXT;
vkCopyMemoryToImageEXT: PFN_vkCopyMemoryToImageEXT;
vkCopyImageToMemoryEXT: PFN_vkCopyImageToMemoryEXT;
vkCopyImageToImageEXT: PFN_vkCopyImageToImageEXT;
vkTransitionImageLayoutEXT: PFN_vkTransitionImageLayoutEXT;
vkGetImageSubresourceLayout2EXT: PFN_vkGetImageSubresourceLayout2EXT;
vkReleaseSwapchainImagesEXT: PFN_vkReleaseSwapchainImagesEXT;

// vkGetGeneratedCommandsMemoryRequirementsNV - Retrieve the buffer allocation requirements for generated commands
//   device: the logical device that owns the buffer.
//   pInfo: a pointer to a VkGeneratedCommandsMemoryRequirementsInfoNV structure containing parameters required for the memory requirements query.
//   pMemoryRequirements: a pointer to a VkMemoryRequirements2 structure in which the memory requirements of the buffer object are returned.
vkGetGeneratedCommandsMemoryRequirementsNV: PFN_vkGetGeneratedCommandsMemoryRequirementsNV;

// vkCmdPreprocessGeneratedCommandsNV - Performs preprocessing for generated commands
//   commandBuffer: the command buffer which does the preprocessing.
//   pGeneratedCommandsInfo: a pointer to a VkGeneratedCommandsInfoNV structure containing parameters affecting the preprocessing step.
vkCmdPreprocessGeneratedCommandsNV: PFN_vkCmdPreprocessGeneratedCommandsNV;

// vkCmdExecuteGeneratedCommandsNV - Generate and execute commands on the device
//   commandBuffer: the command buffer into which the command is recorded.
//   isPreprocessed: represents whether the input data has already been preprocessed on the device. If it is VK_FALSE this command will implicitly trigger the preprocessing step, otherwise not.
//   pGeneratedCommandsInfo: a pointer to a VkGeneratedCommandsInfoNV structure containing parameters affecting the generation of commands.
vkCmdExecuteGeneratedCommandsNV: PFN_vkCmdExecuteGeneratedCommandsNV;

// vkCmdBindPipelineShaderGroupNV - Bind a pipeline object
//   commandBuffer: the command buffer that the pipeline will be bound to.
//   pipelineBindPoint: a VkPipelineBindPoint value specifying the bind point to which the pipeline will be bound.
//   pipeline: the pipeline to be bound.
//   groupIndex: the shader group to be bound.
vkCmdBindPipelineShaderGroupNV: PFN_vkCmdBindPipelineShaderGroupNV;

// vkCreateIndirectCommandsLayoutNV - Create an indirect command layout object
//   device: the logical device that creates the indirect command layout.
//   pCreateInfo: a pointer to a VkIndirectCommandsLayoutCreateInfoNV structure containing parameters affecting creation of the indirect command layout.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pIndirectCommandsLayout: a pointer to a VkIndirectCommandsLayoutNV handle in which the resulting indirect command layout is returned.
vkCreateIndirectCommandsLayoutNV: PFN_vkCreateIndirectCommandsLayoutNV;

// vkDestroyIndirectCommandsLayoutNV - Destroy an indirect commands layout
//   device: the logical device that destroys the layout.
//   indirectCommandsLayout: the layout to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyIndirectCommandsLayoutNV: PFN_vkDestroyIndirectCommandsLayoutNV;

// vkCmdSetDepthBias2EXT - Set depth bias factors and clamp dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   pDepthBiasInfo: a pointer to a VkDepthBiasInfoEXT structure specifying depth bias parameters.
vkCmdSetDepthBias2EXT: PFN_vkCmdSetDepthBias2EXT;
vkCreatePrivateDataSlotEXT: PFN_vkCreatePrivateDataSlotEXT;
vkDestroyPrivateDataSlotEXT: PFN_vkDestroyPrivateDataSlotEXT;
vkSetPrivateDataEXT: PFN_vkSetPrivateDataEXT;
vkGetPrivateDataEXT: PFN_vkGetPrivateDataEXT;

// vkCreateCudaModuleNV - Creates a new CUDA module object
//   device: the logical device that creates the shader module.
//   pCreateInfo: a pointer to a VkCudaModuleCreateInfoNV structure.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pModule: a pointer to a VkCudaModuleNV handle in which the resulting CUDA module object is returned.
vkCreateCudaModuleNV: PFN_vkCreateCudaModuleNV;

// vkGetCudaModuleCacheNV - Get CUDA module cache
//   device: the logical device that destroys the Function.
//   module: the CUDA module.
//   pCacheSize: a pointer containing the amount of bytes to be copied in pCacheData
//   pCacheData: a pointer to a buffer in which to copy the binary cache
vkGetCudaModuleCacheNV: PFN_vkGetCudaModuleCacheNV;

// vkCreateCudaFunctionNV - Creates a new CUDA function object
//   device: the logical device that creates the shader module.
//   pCreateInfo: a pointer to a VkCudaFunctionCreateInfoNV structure.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pFunction: a pointer to a VkCudaFunctionNV handle in which the resulting CUDA function object is returned.
vkCreateCudaFunctionNV: PFN_vkCreateCudaFunctionNV;

// vkDestroyCudaModuleNV - Destroy a CUDA module
//   device: the logical device that destroys the shader module.
//   module: the handle of the CUDA module to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyCudaModuleNV: PFN_vkDestroyCudaModuleNV;

// vkDestroyCudaFunctionNV - Destroy a CUDA function
//   device: the logical device that destroys the Function.
//   function: the handle of the CUDA function to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyCudaFunctionNV: PFN_vkDestroyCudaFunctionNV;

// vkCmdCudaLaunchKernelNV - Dispatch compute work items
//   commandBuffer: the command buffer into which the command will be recorded.
//   pLaunchInfo: a pointer to a VkCudaLaunchInfoNV structure in which the grid (similar to workgroup) dimension, function handle and related arguments are defined.
vkCmdCudaLaunchKernelNV: PFN_vkCmdCudaLaunchKernelNV;

// vkCmdDispatchTileQCOM - Dispatch per-tile work items
//   commandBuffer: the command buffer into which the command will be recorded.
//   pDispatchTileInfo: a pointer to a VkDispatchTileInfoQCOM structure containing information about the area-based dispatch.
vkCmdDispatchTileQCOM: PFN_vkCmdDispatchTileQCOM;

// vkCmdBeginPerTileExecutionQCOM - Begin per-tile execution mode
//   commandBuffer: the command buffer in which to record the command.
//   pPerTileBeginInfo: a pointer to a VkPerTileBeginInfoQCOM structure containing information about how the per-tile execution model is started.
vkCmdBeginPerTileExecutionQCOM: PFN_vkCmdBeginPerTileExecutionQCOM;

// vkCmdEndPerTileExecutionQCOM - End per-tile execution mode
//   commandBuffer: the command buffer in which to record the command.
//   pPerTileEndInfo: a pointer to a VkPerTileEndInfoQCOM structure containing information about how the per-tile execution model is ended.
vkCmdEndPerTileExecutionQCOM: PFN_vkCmdEndPerTileExecutionQCOM;

// vkGetDescriptorSetLayoutSizeEXT - Get the size of a descriptor set layout in memory
//   device: the logical device that gets the size.
//   layout: the descriptor set layout being queried.
//   pLayoutSizeInBytes: a pointer to VkDeviceSize where the size in bytes will be written.
vkGetDescriptorSetLayoutSizeEXT: PFN_vkGetDescriptorSetLayoutSizeEXT;

// vkGetDescriptorSetLayoutBindingOffsetEXT - Get the offset of a binding within a descriptor set layout
//   device: the logical device that gets the offset.
//   layout: the descriptor set layout being queried.
//   binding: the binding number being queried.
//   pOffset: a pointer to VkDeviceSize where the byte offset of the binding will be written.
vkGetDescriptorSetLayoutBindingOffsetEXT: PFN_vkGetDescriptorSetLayoutBindingOffsetEXT;

// vkGetDescriptorEXT - To get a descriptor to place in a buffer
//   device: the logical device that gets the descriptor.
//   pDescriptorInfo: a pointer to a VkDescriptorGetInfoEXT structure specifying the parameters of the descriptor to get.
//   dataSize: the amount of the descriptor data to get in bytes.
//   pDescriptor: a pointer to an application-allocated buffer where the descriptor will be written.
vkGetDescriptorEXT: PFN_vkGetDescriptorEXT;

// vkCmdBindDescriptorBuffersEXT - Binding descriptor buffers to a command buffer
//   commandBuffer: the command buffer that the descriptor buffers will be bound to.
//   bufferCount: the number of elements in the pBindingInfos array.
//   pBindingInfos: a pointer to an array of VkDescriptorBufferBindingInfoEXT structures.
vkCmdBindDescriptorBuffersEXT: PFN_vkCmdBindDescriptorBuffersEXT;

// vkCmdSetDescriptorBufferOffsetsEXT - Setting descriptor buffer offsets in a command buffer
//   commandBuffer: the command buffer in which the descriptor buffer offsets will be set.
//   pipelineBindPoint: a VkPipelineBindPoint indicating the type of the pipeline that will use the descriptors.
//   layout: a VkPipelineLayout object used to program the bindings.
//   firstSet: the number of the first set to be bound.
//   setCount: the number of elements in the pBufferIndices and pOffsets arrays.
//   pBufferIndices: a pointer to an array of indices into the descriptor buffer binding points set by vkCmdBindDescriptorBuffersEXT.
//   pOffsets: a pointer to an array of VkDeviceSize offsets to apply to the bound descriptor buffers.
vkCmdSetDescriptorBufferOffsetsEXT: PFN_vkCmdSetDescriptorBufferOffsetsEXT;

// vkCmdBindDescriptorBufferEmbeddedSamplersEXT - Setting embedded immutable samplers offsets in a command buffer
//   commandBuffer: the command buffer that the embedded immutable samplers will be bound to.
//   pipelineBindPoint: a VkPipelineBindPoint indicating the type of the pipeline that will use the embedded immutable samplers.
//   layout: a VkPipelineLayout object used to program the bindings.
//   set: the number of the set to be bound.
vkCmdBindDescriptorBufferEmbeddedSamplersEXT: PFN_vkCmdBindDescriptorBufferEmbeddedSamplersEXT;

// vkGetBufferOpaqueCaptureDescriptorDataEXT - Get buffer opaque capture descriptor data
//   device: the logical device that gets the data.
//   pInfo: a pointer to a VkBufferCaptureDescriptorDataInfoEXT structure specifying the buffer.
//   pData: a pointer to an application-allocated buffer where the data will be written.
vkGetBufferOpaqueCaptureDescriptorDataEXT: PFN_vkGetBufferOpaqueCaptureDescriptorDataEXT;

// vkGetImageOpaqueCaptureDescriptorDataEXT - Get image opaque capture descriptor data
//   device: the logical device that gets the data.
//   pInfo: a pointer to a VkImageCaptureDescriptorDataInfoEXT structure specifying the image.
//   pData: a pointer to an application-allocated buffer where the data will be written.
vkGetImageOpaqueCaptureDescriptorDataEXT: PFN_vkGetImageOpaqueCaptureDescriptorDataEXT;

// vkGetImageViewOpaqueCaptureDescriptorDataEXT - Get image view opaque capture descriptor data
//   device: the logical device that gets the data.
//   pInfo: a pointer to a VkImageViewCaptureDescriptorDataInfoEXT structure specifying the image view.
//   pData: a pointer to an application-allocated buffer where the data will be written.
vkGetImageViewOpaqueCaptureDescriptorDataEXT: PFN_vkGetImageViewOpaqueCaptureDescriptorDataEXT;

// vkGetSamplerOpaqueCaptureDescriptorDataEXT - Get sampler opaque capture descriptor data
//   device: the logical device that gets the data.
//   pInfo: a pointer to a VkSamplerCaptureDescriptorDataInfoEXT structure specifying the sampler.
//   pData: a pointer to an application-allocated buffer where the data will be written.
vkGetSamplerOpaqueCaptureDescriptorDataEXT: PFN_vkGetSamplerOpaqueCaptureDescriptorDataEXT;

// vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT - Get acceleration structure opaque capture descriptor data
//   device: the logical device that gets the data.
//   pInfo: a pointer to a VkAccelerationStructureCaptureDescriptorDataInfoEXT structure specifying the acceleration structure.
//   pData: a pointer to an application-allocated buffer where the data will be written.
vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT: PFN_vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT;

// vkCmdSetFragmentShadingRateEnumNV - Set pipeline fragment shading rate dynamically for a command buffer using enums
//   commandBuffer: the command buffer into which the command will be recorded.
//   shadingRate: specifies a VkFragmentShadingRateNV enum indicating the pipeline fragment shading rate for subsequent drawing commands.
//   combinerOps: specifies a VkFragmentShadingRateCombinerOpKHR determining how the pipeline, primitive, and attachment shading rates are combined for fragments generated by subsequent drawing commands.
vkCmdSetFragmentShadingRateEnumNV: PFN_vkCmdSetFragmentShadingRateEnumNV;

// vkGetDeviceFaultInfoEXT - Reports diagnostic fault information on the specified logical device
//   device: the logical device from which to query the diagnostic fault information.
//   pFaultCounts: a pointer to a VkDeviceFaultCountsEXT structure in which counts for structures describing additional fault information are returned.
//   pFaultInfo: NULL or a pointer to a VkDeviceFaultInfoEXT structure in which fault information is returned.
vkGetDeviceFaultInfoEXT: PFN_vkGetDeviceFaultInfoEXT;

// vkCmdSetVertexInputEXT - Set the vertex input state dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   vertexBindingDescriptionCount: the number of vertex binding descriptions provided in pVertexBindingDescriptions.
//   pVertexBindingDescriptions: a pointer to an array of VkVertexInputBindingDescription2EXT structures.
//   vertexAttributeDescriptionCount: the number of vertex attribute descriptions provided in pVertexAttributeDescriptions.
//   pVertexAttributeDescriptions: a pointer to an array of VkVertexInputAttributeDescription2EXT structures.
vkCmdSetVertexInputEXT: PFN_vkCmdSetVertexInputEXT;

// vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI - Query maximum supported subpass shading workgroup size for a give render pass
//   device: a handle to a local device object that was used to create the given render pass.
//   renderpass: a handle to a render pass object describing the environment in which the pipeline will be used. The pipeline must only be used with a render pass instance compatible with the one provided. See Render Pass Compatibility for more information.
//   pMaxWorkgroupSize: a pointer to a VkExtent2D structure.
vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI: PFN_vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI;

// vkCmdSubpassShadingHUAWEI - Dispatch compute work items
//   commandBuffer: the command buffer into which the command will be recorded.
vkCmdSubpassShadingHUAWEI: PFN_vkCmdSubpassShadingHUAWEI;

// vkCmdBindInvocationMaskHUAWEI - Bind an invocation mask image on a command buffer
//   commandBuffer: the command buffer into which the command will be recorded
//   imageView: an image view handle specifying the invocation mask image imageView may be VK_NULL_HANDLE, which is equivalent to specifying a view of an image filled with ones value.
//   imageLayout: the layout that the image subresources accessible from imageView will be in when the invocation mask image is accessed
vkCmdBindInvocationMaskHUAWEI: PFN_vkCmdBindInvocationMaskHUAWEI;

// vkGetMemoryRemoteAddressNV - Get an address for a memory object accessible by remote devices
//   device: the logical device that created the device memory being exported.
//   pMemoryGetRemoteAddressInfo: a pointer to a VkMemoryGetRemoteAddressInfoNV structure containing parameters of the export operation.
//   pAddress: a pointer to a VkRemoteAddressNV value in which an address representing the payload of the device memory object is returned.
vkGetMemoryRemoteAddressNV: PFN_vkGetMemoryRemoteAddressNV;

// vkGetPipelinePropertiesEXT - Query pipeline properties
//   device: the logical device that created the pipeline.
//   pPipelineInfo: a pointer to a VkPipelineInfoEXT structure which describes the pipeline being queried.
//   pPipelineProperties: a pointer to a VkBaseOutStructure structure in which the pipeline properties will be written.
vkGetPipelinePropertiesEXT: PFN_vkGetPipelinePropertiesEXT;

// vkCmdSetPatchControlPointsEXT - Specify the number of control points per patch dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   patchControlPoints: specifies the number of control points per patch.
vkCmdSetPatchControlPointsEXT: PFN_vkCmdSetPatchControlPointsEXT;
vkCmdSetRasterizerDiscardEnableEXT: PFN_vkCmdSetRasterizerDiscardEnableEXT;
vkCmdSetDepthBiasEnableEXT: PFN_vkCmdSetDepthBiasEnableEXT;

// vkCmdSetLogicOpEXT - Select which logical operation to apply for blend state dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   logicOp: specifies the logical operation to apply for blend state.
vkCmdSetLogicOpEXT: PFN_vkCmdSetLogicOpEXT;
vkCmdSetPrimitiveRestartEnableEXT: PFN_vkCmdSetPrimitiveRestartEnableEXT;

// vkCmdSetColorWriteEnableEXT - Enable or disable writes to a color attachment dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   attachmentCount: the number of VkBool32 elements in pColorWriteEnables.
//   pColorWriteEnables: a pointer to an array of per target attachment boolean values specifying whether color writes are enabled for the given attachment.
vkCmdSetColorWriteEnableEXT: PFN_vkCmdSetColorWriteEnableEXT;

// vkCmdDrawMultiEXT - Draw primitives
//   commandBuffer: the command buffer into which the command is recorded.
//   drawCount: the number of draws to execute, and can be zero.
//   pVertexInfo: a pointer to an array of VkMultiDrawInfoEXT with vertex information to be drawn.
//   instanceCount: the number of instances per draw.
//   firstInstance: the instance ID of the first instance in each draw.
//   stride: the byte stride between consecutive elements of pVertexInfo.
vkCmdDrawMultiEXT: PFN_vkCmdDrawMultiEXT;

// vkCmdDrawMultiIndexedEXT - Draw primitives
//   commandBuffer: the command buffer into which the command is recorded.
//   drawCount: the number of draws to execute, and can be zero.
//   pIndexInfo: a pointer to an array of VkMultiDrawIndexedInfoEXT with index information to be drawn.
//   instanceCount: the number of instances per draw.
//   firstInstance: the instance ID of the first instance in each draw.
//   stride: the byte stride between consecutive elements of pIndexInfo.
//   pVertexOffset: NULL or a pointer to the value added to the vertex index before indexing into the vertex buffer. When specified, VkMultiDrawIndexedInfoEXT::offset is ignored.
vkCmdDrawMultiIndexedEXT: PFN_vkCmdDrawMultiIndexedEXT;

// vkCreateMicromapEXT - Create a new micromap object
//   device: the logical device that creates the micromap object.
//   pCreateInfo: a pointer to a VkMicromapCreateInfoEXT structure containing parameters affecting creation of the micromap.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pMicromap: a pointer to a VkMicromapEXT handle in which the resulting micromap object is returned.
vkCreateMicromapEXT: PFN_vkCreateMicromapEXT;

// vkDestroyMicromapEXT - Destroy a micromap object
//   device: the logical device that destroys the micromap.
//   micromap: the micromap to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyMicromapEXT: PFN_vkDestroyMicromapEXT;

// vkCmdBuildMicromapsEXT - Build a micromap
//   commandBuffer: the command buffer into which the command will be recorded.
//   infoCount: the number of micromaps to build. It specifies the number of the pInfos structures that must be provided.
//   pInfos: a pointer to an array of infoCount VkMicromapBuildInfoEXT structures defining the data used to build each micromap.
vkCmdBuildMicromapsEXT: PFN_vkCmdBuildMicromapsEXT;

// vkBuildMicromapsEXT - Build a micromap on the host
//   device: the VkDevice for which the micromaps are being built.
//   deferredOperation: an optional VkDeferredOperationKHR to request deferral for this command.
//   infoCount: the number of micromaps to build. It specifies the number of the pInfos that must be provided.
//   pInfos: a pointer to an array of infoCount VkMicromapBuildInfoEXT structures defining the geometry used to build each micromap.
vkBuildMicromapsEXT: PFN_vkBuildMicromapsEXT;

// vkCopyMicromapEXT - Copy a micromap on the host
//   device: the device which owns the micromaps.
//   deferredOperation: an optional VkDeferredOperationKHR to request deferral for this command.
//   pInfo: a pointer to a VkCopyMicromapInfoEXT structure defining the copy operation.
vkCopyMicromapEXT: PFN_vkCopyMicromapEXT;

// vkCopyMicromapToMemoryEXT - Serialize a micromap on the host
//   device: the device which owns pInfo->src.
//   deferredOperation: an optional VkDeferredOperationKHR to request deferral for this command.
//   pInfo: a pointer to a VkCopyMicromapToMemoryInfoEXT structure defining the copy operation.
vkCopyMicromapToMemoryEXT: PFN_vkCopyMicromapToMemoryEXT;

// vkCopyMemoryToMicromapEXT - Deserialize a micromap on the host
//   device: the device which owns pInfo->dst.
//   deferredOperation: an optional VkDeferredOperationKHR to request deferral for this command.
//   pInfo: a pointer to a VkCopyMemoryToMicromapInfoEXT structure defining the copy operation.
vkCopyMemoryToMicromapEXT: PFN_vkCopyMemoryToMicromapEXT;

// vkWriteMicromapsPropertiesEXT - Query micromap meta-data on the host
//   device: the device which owns the micromaps in pMicromaps.
//   micromapCount: the count of micromaps for which to query the property.
//   pMicromaps: a pointer to an array of existing previously built micromaps.
//   queryType: a VkQueryType value specifying the property to be queried.
//   dataSize: the size in bytes of the buffer pointed to by pData.
//   pData: a pointer to an application-allocated buffer where the results will be written.
//   stride: the stride in bytes between results for individual queries within pData.
vkWriteMicromapsPropertiesEXT: PFN_vkWriteMicromapsPropertiesEXT;

// vkCmdCopyMicromapEXT - Copy a micromap
//   commandBuffer: the command buffer into which the command will be recorded.
//   pInfo: a pointer to a VkCopyMicromapInfoEXT structure defining the copy operation.
vkCmdCopyMicromapEXT: PFN_vkCmdCopyMicromapEXT;

// vkCmdCopyMicromapToMemoryEXT - Copy a micromap to device memory
//   commandBuffer: the command buffer into which the command will be recorded.
//   pInfo: an a pointer to a VkCopyMicromapToMemoryInfoEXT structure defining the copy operation.
vkCmdCopyMicromapToMemoryEXT: PFN_vkCmdCopyMicromapToMemoryEXT;

// vkCmdCopyMemoryToMicromapEXT - Copy device memory to a micromap
//   commandBuffer: the command buffer into which the command will be recorded.
//   pInfo: a pointer to a VkCopyMemoryToMicromapInfoEXT structure defining the copy operation.
vkCmdCopyMemoryToMicromapEXT: PFN_vkCmdCopyMemoryToMicromapEXT;

// vkCmdWriteMicromapsPropertiesEXT - Write micromap result parameters to query results.
//   commandBuffer: the command buffer into which the command will be recorded.
//   micromapCount: the count of micromaps for which to query the property.
//   pMicromaps: a pointer to an array of existing previously built micromaps.
//   queryType: a VkQueryType value specifying the type of queries managed by the pool.
//   queryPool: the query pool that will manage the results of the query.
//   firstQuery: the first query index within the query pool that will contain the micromapCount number of results.
vkCmdWriteMicromapsPropertiesEXT: PFN_vkCmdWriteMicromapsPropertiesEXT;

// vkGetDeviceMicromapCompatibilityEXT - Check if a serialized micromap is compatible with the current device
//   device: the device to check the version against.
//   pVersionInfo: a pointer to a VkMicromapVersionInfoEXT structure specifying version information to check against the device.
//   pCompatibility: a pointer to a VkAccelerationStructureCompatibilityKHR value in which compatibility information is returned.
vkGetDeviceMicromapCompatibilityEXT: PFN_vkGetDeviceMicromapCompatibilityEXT;

// vkGetMicromapBuildSizesEXT - Retrieve the required size for a micromap
//   device: the logical device that will be used for creating the micromap.
//   buildType: defines whether host or device operations (or both) are being queried for.
//   pBuildInfo: a pointer to a VkMicromapBuildInfoEXT structure describing parameters of a build operation.
//   pSizeInfo: a pointer to a VkMicromapBuildSizesInfoEXT structure which returns the size required for a micromap and the sizes required for the scratch buffers, given the build parameters. The size requirements for a scratch buffer may be zero.
vkGetMicromapBuildSizesEXT: PFN_vkGetMicromapBuildSizesEXT;

// vkCmdDrawClusterHUAWEI - Draw cluster culling work items
//   commandBuffer: the command buffer into which the command will be recorded.
//   groupCountX: the number of local workgroups to dispatch in the X dimension.
//   groupCountY: the number of local workgroups to dispatch in the Y dimension.
//   groupCountZ: the number of local workgroups to dispatch in the Z dimension.
vkCmdDrawClusterHUAWEI: PFN_vkCmdDrawClusterHUAWEI;

// vkCmdDrawClusterIndirectHUAWEI - Issue an indirect cluster culling draw into a command buffer
//   commandBuffer: the command buffer into which the command is recorded.
//   buffer: the buffer containing draw parameters.
//   offset: the byte offset into buffer where parameters begin.
vkCmdDrawClusterIndirectHUAWEI: PFN_vkCmdDrawClusterIndirectHUAWEI;

// vkSetDeviceMemoryPriorityEXT - Change a memory allocation priority
//   device: the logical device that owns the memory.
//   memory: the VkDeviceMemory object to which the new priority will be applied.
//   priority: a floating-point value between 0 and 1, indicating the priority of the allocation relative to other memory allocations. Larger values are higher priority. The granularity of the priorities is implementation-dependent.
vkSetDeviceMemoryPriorityEXT: PFN_vkSetDeviceMemoryPriorityEXT;

// vkGetDescriptorSetLayoutHostMappingInfoVALVE - Stub description of vkGetDescriptorSetLayoutHostMappingInfoVALVE
vkGetDescriptorSetLayoutHostMappingInfoVALVE: PFN_vkGetDescriptorSetLayoutHostMappingInfoVALVE;

// vkGetDescriptorSetHostMappingVALVE - Stub description of vkGetDescriptorSetHostMappingVALVE
vkGetDescriptorSetHostMappingVALVE: PFN_vkGetDescriptorSetHostMappingVALVE;

// vkCmdCopyMemoryIndirectNV - Copy data between memory regions
//   commandBuffer: the command buffer into which the command will be recorded.
//   copyBufferAddress: the memory address specifying the copy parameters. It is laid out as an array of VkCopyMemoryIndirectCommandNV structures.
//   copyCount: the number of copies to execute, and can be zero.
//   stride: the stride in bytes between successive sets of copy parameters.
vkCmdCopyMemoryIndirectNV: PFN_vkCmdCopyMemoryIndirectNV;

// vkCmdCopyMemoryToImageIndirectNV - Copy data from a memory region to an image object
//   commandBuffer: the command buffer into which the command will be recorded.
//   copyBufferAddress: the address specifying the copy parameters which are laid out in memory as an array of VkCopyMemoryToImageIndirectCommandNV structures.
//   copyCount: the number of copies to execute, and can be zero.
//   stride: the byte stride between successive sets of copy parameters.
//   dstImage: the destination image.
//   dstImageLayout: the layout of the destination image subresources for the copy.
//   pImageSubresources: a pointer to an array of copyCount VkImageSubresourceLayers structures, specifying the image subresources of the destination image data for the copy operation.
vkCmdCopyMemoryToImageIndirectNV: PFN_vkCmdCopyMemoryToImageIndirectNV;

// vkCmdDecompressMemoryNV - Decompress memory containing compressed data
//   commandBuffer: the command buffer into which the command will be recorded.
//   decompressRegionCount: the number of memory regions to decompress.
//   pDecompressMemoryRegions: a pointer to an array of decompressRegionCount VkDecompressMemoryRegionNV structures specifying decompression parameters.
vkCmdDecompressMemoryNV: PFN_vkCmdDecompressMemoryNV;

// vkCmdDecompressMemoryIndirectCountNV - Indirect decompress data between memory regions
//   commandBuffer: the command buffer into which the command will be recorded.
//   indirectCommandsAddress: the device address containing decompression parameters laid out as an array of VkDecompressMemoryRegionNV structures.
//   indirectCommandsCountAddress: the device address containing a 32-bit integer value specifying the decompression count.
//   stride: the byte stride between successive sets of decompression parameters located starting from indirectCommandsAddress.
vkCmdDecompressMemoryIndirectCountNV: PFN_vkCmdDecompressMemoryIndirectCountNV;

// vkGetPipelineIndirectMemoryRequirementsNV - Get the memory requirements for the compute indirect pipeline
//   device: the logical device that owns the buffer.
//   pCreateInfo: a VkComputePipelineCreateInfo structure specifying the creation parameters of the compute pipeline whose memory requirements are being queried.
//   pMemoryRequirements: a pointer to a VkMemoryRequirements2 structure in which the requested pipeline&#8217;s memory requirements are returned.
vkGetPipelineIndirectMemoryRequirementsNV: PFN_vkGetPipelineIndirectMemoryRequirementsNV;

// vkCmdUpdatePipelineIndirectBufferNV - Update the indirect compute pipeline&#8217;s metadata
//   commandBuffer: the command buffer into which the command will be recorded.
//   pipelineBindPoint: a VkPipelineBindPoint value specifying the type of pipeline whose metadata will be saved.
//   pipeline: the pipeline whose metadata will be saved.
vkCmdUpdatePipelineIndirectBufferNV: PFN_vkCmdUpdatePipelineIndirectBufferNV;

// vkGetPipelineIndirectDeviceAddressNV - Get pipeline&#8217;s 64-bit device address
//   device: the logical device on which the pipeline was created.
//   pInfo: a pointer to a VkPipelineIndirectDeviceAddressInfoNV structure specifying the pipeline to retrieve the address for.
vkGetPipelineIndirectDeviceAddressNV: PFN_vkGetPipelineIndirectDeviceAddressNV;

// vkCmdSetDepthClampEnableEXT - Specify dynamically whether depth clamping is enabled in the command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   depthClampEnable: specifies whether depth clamping is enabled.
vkCmdSetDepthClampEnableEXT: PFN_vkCmdSetDepthClampEnableEXT;

// vkCmdSetPolygonModeEXT - Specify polygon mode dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   polygonMode: specifies polygon mode.
vkCmdSetPolygonModeEXT: PFN_vkCmdSetPolygonModeEXT;

// vkCmdSetRasterizationSamplesEXT - Specify the rasterization samples dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   rasterizationSamples: specifies rasterizationSamples.
vkCmdSetRasterizationSamplesEXT: PFN_vkCmdSetRasterizationSamplesEXT;

// vkCmdSetSampleMaskEXT - Specify the sample mask dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   samples: specifies the number of sample bits in the pSampleMask.
//   pSampleMask: a pointer to an array of VkSampleMask values, where the array size is based on the samples parameter. If the maintenance10 feature is enabled, and this parameter is set to NULL, it is treated as if the mask has all bits set to 1.
vkCmdSetSampleMaskEXT: PFN_vkCmdSetSampleMaskEXT;

// vkCmdSetAlphaToCoverageEnableEXT - Specify the alpha to coverage enable state dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   alphaToCoverageEnable: specifies the alphaToCoverageEnable state.
vkCmdSetAlphaToCoverageEnableEXT: PFN_vkCmdSetAlphaToCoverageEnableEXT;

// vkCmdSetAlphaToOneEnableEXT - Specify the alpha to one enable state dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   alphaToOneEnable: specifies the alphaToOneEnable state.
vkCmdSetAlphaToOneEnableEXT: PFN_vkCmdSetAlphaToOneEnableEXT;

// vkCmdSetLogicOpEnableEXT - Specify dynamically whether logical operations are enabled for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   logicOpEnable: specifies whether logical operations are enabled.
vkCmdSetLogicOpEnableEXT: PFN_vkCmdSetLogicOpEnableEXT;

// vkCmdSetColorBlendEnableEXT - Specify the blendEnable for each attachment dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   firstAttachment: the first color attachment the color blending enable applies.
//   attachmentCount: the number of color blending enables in the pColorBlendEnables array.
//   pColorBlendEnables: an array of booleans to indicate whether color blending is enabled for the corresponding attachment.
vkCmdSetColorBlendEnableEXT: PFN_vkCmdSetColorBlendEnableEXT;

// vkCmdSetColorBlendEquationEXT - Specify the blend factors and operations dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   firstAttachment: the first color attachment the color blend factors and operations apply to.
//   attachmentCount: the number of VkColorBlendEquationEXT elements in the pColorBlendEquations array.
//   pColorBlendEquations: an array of VkColorBlendEquationEXT structs that specify the color blend factors and operations for the corresponding attachments.
vkCmdSetColorBlendEquationEXT: PFN_vkCmdSetColorBlendEquationEXT;

// vkCmdSetColorWriteMaskEXT - Specify the color write masks for each attachment dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   firstAttachment: the first color attachment the color write masks apply to.
//   attachmentCount: the number of VkColorComponentFlags values in the pColorWriteMasks array.
//   pColorWriteMasks: an array of VkColorComponentFlags values that specify the color write masks of the corresponding attachments.
vkCmdSetColorWriteMaskEXT: PFN_vkCmdSetColorWriteMaskEXT;

// vkCmdSetTessellationDomainOriginEXT - Specify the origin of the tessellation domain space dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   domainOrigin: specifies the origin of the tessellation domain space.
vkCmdSetTessellationDomainOriginEXT: PFN_vkCmdSetTessellationDomainOriginEXT;

// vkCmdSetRasterizationStreamEXT - Specify the rasterization stream dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   rasterizationStream: specifies the rasterizationStream state.
vkCmdSetRasterizationStreamEXT: PFN_vkCmdSetRasterizationStreamEXT;

// vkCmdSetConservativeRasterizationModeEXT - Specify the conservative rasterization mode dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   conservativeRasterizationMode: specifies the conservativeRasterizationMode state.
vkCmdSetConservativeRasterizationModeEXT: PFN_vkCmdSetConservativeRasterizationModeEXT;

// vkCmdSetExtraPrimitiveOverestimationSizeEXT - Specify the conservative rasterization extra primitive overestimation size dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   extraPrimitiveOverestimationSize: specifies the extraPrimitiveOverestimationSize.
vkCmdSetExtraPrimitiveOverestimationSizeEXT: PFN_vkCmdSetExtraPrimitiveOverestimationSizeEXT;

// vkCmdSetDepthClipEnableEXT - Specify dynamically whether depth clipping is enabled in the command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   depthClipEnable: specifies whether depth clipping is enabled.
vkCmdSetDepthClipEnableEXT: PFN_vkCmdSetDepthClipEnableEXT;

// vkCmdSetSampleLocationsEnableEXT - Specify the samples locations enable state dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   sampleLocationsEnable: specifies the sampleLocationsEnable state.
vkCmdSetSampleLocationsEnableEXT: PFN_vkCmdSetSampleLocationsEnableEXT;

// vkCmdSetColorBlendAdvancedEXT - Specify the advanced color blend state dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   firstAttachment: the first color attachment the advanced blend parameters apply to.
//   attachmentCount: the number of VkColorBlendAdvancedEXT elements in the pColorBlendAdvanced array.
//   pColorBlendAdvanced: an array of VkColorBlendAdvancedEXT structs that specify the advanced color blend parameters for the corresponding attachments.
vkCmdSetColorBlendAdvancedEXT: PFN_vkCmdSetColorBlendAdvancedEXT;

// vkCmdSetProvokingVertexModeEXT - Specify the provoking vertex mode dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   provokingVertexMode: specifies the provokingVertexMode state.
vkCmdSetProvokingVertexModeEXT: PFN_vkCmdSetProvokingVertexModeEXT;

// vkCmdSetLineRasterizationModeEXT - Specify the line rasterization mode dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   lineRasterizationMode: specifies the lineRasterizationMode state.
vkCmdSetLineRasterizationModeEXT: PFN_vkCmdSetLineRasterizationModeEXT;

// vkCmdSetLineStippleEnableEXT - Specify the line stipple enable dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   stippledLineEnable: specifies the stippledLineEnable state.
vkCmdSetLineStippleEnableEXT: PFN_vkCmdSetLineStippleEnableEXT;

// vkCmdSetDepthClipNegativeOneToOneEXT - Specify the negative one to one depth clip mode dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   negativeOneToOne: specifies the negativeOneToOne state.
vkCmdSetDepthClipNegativeOneToOneEXT: PFN_vkCmdSetDepthClipNegativeOneToOneEXT;

// vkCmdSetViewportWScalingEnableNV - Specify the viewport W scaling enable state dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   viewportWScalingEnable: specifies the viewportWScalingEnable state.
vkCmdSetViewportWScalingEnableNV: PFN_vkCmdSetViewportWScalingEnableNV;

// vkCmdSetViewportSwizzleNV - Specify the viewport swizzle state dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   firstViewport: the index of the first viewport whose parameters are updated by the command.
//   viewportCount: the number of viewports whose parameters are updated by the command.
//   pViewportSwizzles: a pointer to an array of VkViewportSwizzleNV structures specifying viewport swizzles.
vkCmdSetViewportSwizzleNV: PFN_vkCmdSetViewportSwizzleNV;

// vkCmdSetCoverageToColorEnableNV - Specify the coverage to color enable state dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   coverageToColorEnable: specifies the coverageToColorEnable state.
vkCmdSetCoverageToColorEnableNV: PFN_vkCmdSetCoverageToColorEnableNV;

// vkCmdSetCoverageToColorLocationNV - Specify the coverage to color location dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   coverageToColorLocation: specifies the coverageToColorLocation state.
vkCmdSetCoverageToColorLocationNV: PFN_vkCmdSetCoverageToColorLocationNV;

// vkCmdSetCoverageModulationModeNV - Specify the coverage modulation mode dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   coverageModulationMode: specifies the coverageModulationMode state.
vkCmdSetCoverageModulationModeNV: PFN_vkCmdSetCoverageModulationModeNV;

// vkCmdSetCoverageModulationTableEnableNV - Specify the coverage modulation table enable state dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   coverageModulationTableEnable: specifies the coverageModulationTableEnable state.
vkCmdSetCoverageModulationTableEnableNV: PFN_vkCmdSetCoverageModulationTableEnableNV;

// vkCmdSetCoverageModulationTableNV - Specify the coverage modulation table dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   coverageModulationTableCount: specifies the number of elements in pCoverageModulationTable.
//   pCoverageModulationTable: specifies the table of modulation factors containing a value for each number of covered samples.
vkCmdSetCoverageModulationTableNV: PFN_vkCmdSetCoverageModulationTableNV;

// vkCmdSetShadingRateImageEnableNV - Specify the shading rate image enable state dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   shadingRateImageEnable: specifies the shadingRateImageEnable state.
vkCmdSetShadingRateImageEnableNV: PFN_vkCmdSetShadingRateImageEnableNV;

// vkCmdSetRepresentativeFragmentTestEnableNV - Specify the representative fragment test enable dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   representativeFragmentTestEnable: specifies the representativeFragmentTestEnable state.
vkCmdSetRepresentativeFragmentTestEnableNV: PFN_vkCmdSetRepresentativeFragmentTestEnableNV;

// vkCmdSetCoverageReductionModeNV - Specify the coverage reduction mode dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   coverageReductionMode: specifies the coverageReductionMode state.
vkCmdSetCoverageReductionModeNV: PFN_vkCmdSetCoverageReductionModeNV;

// vkGetShaderModuleIdentifierEXT - Query a unique identifier for a shader module
//   device: the logical device that created the shader module.
//   shaderModule: the handle of the shader module.
//   pIdentifier: a pointer to the returned VkShaderModuleIdentifierEXT.
vkGetShaderModuleIdentifierEXT: PFN_vkGetShaderModuleIdentifierEXT;

// vkGetShaderModuleCreateInfoIdentifierEXT - Query a unique identifier for a shader module create info
//   device: the logical device that can create a VkShaderModule from pCreateInfo.
//   pCreateInfo: a pointer to a VkShaderModuleCreateInfo structure.
//   pIdentifier: a pointer to the returned VkShaderModuleIdentifierEXT.
vkGetShaderModuleCreateInfoIdentifierEXT: PFN_vkGetShaderModuleCreateInfoIdentifierEXT;

// vkCreateOpticalFlowSessionNV - Creates an optical flow session object
//   device: the logical device that creates the optical flow session object.
//   pCreateInfo: a pointer to a VkOpticalFlowSessionCreateInfoNV structure containing parameters specifying the creation of the optical flow session.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pSession: a pointer to a VkOpticalFlowSessionNV handle specifying the optical flow session object which will be created by this function when it returns VK_SUCCESS
vkCreateOpticalFlowSessionNV: PFN_vkCreateOpticalFlowSessionNV;

// vkDestroyOpticalFlowSessionNV - Destroy optical flow session object
//   device: the device that was used for the creation of the optical flow session.
//   session: the optical flow session to be destroyed.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyOpticalFlowSessionNV: PFN_vkDestroyOpticalFlowSessionNV;

// vkBindOpticalFlowSessionImageNV - Bind image to an optical flow session
//   device: the device which owns the optical flow session object session.
//   session: the optical flow session object to which the image view is to be bound.
//   bindingPoint: specifies the binding point VkOpticalFlowSessionBindingPointNV to which the image view is bound.
//   view: a VkImageView to be bound.
//   layout: must specify the layout that the image subresources accessible from view will be in at the time the optical flow vectors are calculated with vkCmdOpticalFlowExecuteNV on a VkDevice.
vkBindOpticalFlowSessionImageNV: PFN_vkBindOpticalFlowSessionImageNV;

// vkCmdOpticalFlowExecuteNV - Calculate optical flow vectors
//   commandBuffer: the command buffer into which the command will be recorded.
//   session: the optical flow session object on which this command is operating.
//   pExecuteInfo: Info is a pointer to a VkOpticalFlowExecuteInfoNV.
vkCmdOpticalFlowExecuteNV: PFN_vkCmdOpticalFlowExecuteNV;

// vkAntiLagUpdateAMD - Provide information to reduce latency
//   device: the logical device
//   pData: a pointer to a VkAntiLagDataAMD structure containing latency reduction parameters.
vkAntiLagUpdateAMD: PFN_vkAntiLagUpdateAMD;

// vkCreateShadersEXT - Create one or more new shaders
//   device: the logical device that creates the shader objects.
//   createInfoCount: the length of the pCreateInfos and pShaders arrays.
//   pCreateInfos: a pointer to an array of VkShaderCreateInfoEXT structures.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pShaders: a pointer to an array of VkShaderEXT handles in which the resulting shader objects are returned.
vkCreateShadersEXT: PFN_vkCreateShadersEXT;

// vkDestroyShaderEXT - Destroy a shader object
//   device: the logical device that destroys the shader object.
//   shader: the handle of the shader object to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyShaderEXT: PFN_vkDestroyShaderEXT;

// vkGetShaderBinaryDataEXT - Get the binary shader code from a shader object
//   device: the logical device that shader object was created from.
//   shader: the shader object to retrieve binary shader code from.
//   pDataSize: a pointer to a size_t value related to the size of the binary shader code, as described below.
//   pData: either NULL or a pointer to a buffer.
vkGetShaderBinaryDataEXT: PFN_vkGetShaderBinaryDataEXT;

// vkCmdBindShadersEXT - Bind shader objects to a command buffer
//   commandBuffer: the command buffer that the shader object will be bound to.
//   stageCount: the length of the pStages and pShaders arrays.
//   pStages: a pointer to an array of VkShaderStageFlagBits values specifying one stage per array index that is affected by the corresponding value in the pShaders array.
//   pShaders: a pointer to an array of VkShaderEXT handles and/or VK_NULL_HANDLE values describing the shader binding operations to be performed on each stage in pStages.
vkCmdBindShadersEXT: PFN_vkCmdBindShadersEXT;

// vkCmdSetDepthClampRangeEXT - Set the viewport depth clamp range dynamically for a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   depthClampMode: determines how the clamp range is determined for each viewport.
//   pDepthClampRange: sets the depth clamp range for all viewports if depthClampMode is VK_DEPTH_CLAMP_MODE_USER_DEFINED_RANGE_EXT.
vkCmdSetDepthClampRangeEXT: PFN_vkCmdSetDepthClampRangeEXT;

// vkGetFramebufferTilePropertiesQCOM - Get tile properties from the attachments in framebuffer
//   device: a logical device associated with the framebuffer.
//   framebuffer: a handle of the framebuffer to query.
//   pPropertiesCount: a pointer to an integer related to the number of tile properties available or queried, as described below.
//   pProperties: either NULL or a pointer to an array of VkTilePropertiesQCOM structures.
vkGetFramebufferTilePropertiesQCOM: PFN_vkGetFramebufferTilePropertiesQCOM;

// vkGetDynamicRenderingTilePropertiesQCOM - Get the properties when using dynamic rendering
//   device: a logical device associated with the render pass.
//   pRenderingInfo: a pointer to the VkRenderingInfo structure specifying details of the render pass instance in dynamic rendering.
//   pProperties: a pointer to a VkTilePropertiesQCOM structure in which the properties are returned.
vkGetDynamicRenderingTilePropertiesQCOM: PFN_vkGetDynamicRenderingTilePropertiesQCOM;

// vkConvertCooperativeVectorMatrixNV - Convert a cooperative vector matrix from one layout and type to another
//   device: the device.
//   pInfo: a pointer to a VkConvertCooperativeVectorMatrixInfoNV structure containing information about the layout conversion.
vkConvertCooperativeVectorMatrixNV: PFN_vkConvertCooperativeVectorMatrixNV;

// vkCmdConvertCooperativeVectorMatrixNV - Convert a cooperative vector matrix from one layout and type to another
//   commandBuffer: the command buffer into which the command will be recorded.
//   infoCount: the number of layout conversions to perform.
//   pInfos: a pointer to an array of VkConvertCooperativeVectorMatrixInfoNV structures containing information about the layout conversion.
vkCmdConvertCooperativeVectorMatrixNV: PFN_vkCmdConvertCooperativeVectorMatrixNV;

// vkSetLatencySleepModeNV - Enable or Disable low latency mode on a swapchain
//   device: the device associated with swapchain.
//   swapchain: the swapchain to enable or disable low latency mode on.
//   pSleepModeInfo: NULL or a pointer to a VkLatencySleepModeInfoNV structure specifying the parameters of the latency sleep mode.
vkSetLatencySleepModeNV: PFN_vkSetLatencySleepModeNV;

// vkLatencySleepNV - Trigger low latency mode Sleep
//   device: the device associated with swapchain.
//   swapchain: the swapchain to delay associated CPU work based on VkLatencySubmissionPresentIdNV submissions.
//   pSleepInfo: a pointer to a VkLatencySleepInfoNV structure specifying the parameters of the latency sleep.
vkLatencySleepNV: PFN_vkLatencySleepNV;

// vkSetLatencyMarkerNV - Pass in marker for timing info
//   device: the device associated with swapchain.
//   swapchain: the swapchain to capture timestamps on.
//   pSetLatencyMarkerInfo: a pointer to a VkSetLatencyMarkerInfoNV structure specifying the parameters of the marker to set.
vkSetLatencyMarkerNV: PFN_vkSetLatencyMarkerNV;

// vkGetLatencyTimingsNV - Get latency marker results
//   device: the device associated with swapchain.
//   swapchain: the swapchain to return data from.
//   pLatencyMarkerInfo: a pointer to a VkGetLatencyMarkerInfoNV structure specifying the parameters for returning latency information.
vkGetLatencyTimingsNV: PFN_vkGetLatencyTimingsNV;

// vkQueueNotifyOutOfBandNV - Notify out of band queue
//   queue: the VkQueue to be marked as out of band.
//   pQueueTypeInfo: a pointer to a VkOutOfBandQueueTypeInfoNV structure specifying the queue type.
vkQueueNotifyOutOfBandNV: PFN_vkQueueNotifyOutOfBandNV;

// vkCmdSetAttachmentFeedbackLoopEnableEXT - Specify whether attachment feedback loops are enabled dynamically on a command buffer
//   commandBuffer: the command buffer into which the command will be recorded.
//   aspectMask: specifies the types of attachments for which feedback loops will be enabled. Attachment types whose aspects are not included in aspectMask will have feedback loops disabled.
vkCmdSetAttachmentFeedbackLoopEnableEXT: PFN_vkCmdSetAttachmentFeedbackLoopEnableEXT;

// vkCmdBindTileMemoryQCOM - Bind tile memory to a command buffer
//   commandBuffer: the command buffer that the tile memory will be bound to.
//   pTileMemoryBindInfo: VK_NULL_HANDLE or a pointer to a VkTileMemoryBindInfoQCOM structure defining how tile memory is bound.
vkCmdBindTileMemoryQCOM: PFN_vkCmdBindTileMemoryQCOM;

// vkCreateExternalComputeQueueNV - Create an external compute queue for use by a compatible external API.
//   device: the VkDevice that the external queue will be a part of.
//   pCreateInfo: a pointer to a VkExternalComputeQueueCreateInfoNV structure specifying configuration info for creating the external queue.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pExternalQueue: a pointer to a VkExternalComputeQueueNV object that will be filled with the handle for the created external queue.
vkCreateExternalComputeQueueNV: PFN_vkCreateExternalComputeQueueNV;

// vkDestroyExternalComputeQueueNV - Destroys an external queue.
//   device: the logical device that destroys the external queue.
//   externalQueue: the VkExternalComputeQueueNV to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyExternalComputeQueueNV: PFN_vkDestroyExternalComputeQueueNV;

// vkGetClusterAccelerationStructureBuildSizesNV - Retrieve the buffer allocation requirements for cluster geometry command
//   device: the logical device that owns the acceleration structure.
//   pInfo: a pointer to a VkClusterAccelerationStructureInputInfoNV structure containing parameters required for the memory requirements query.
//   pSizeInfo: a pointer to a VkAccelerationStructureBuildSizesInfoKHR structure which returns the size required for an acceleration structure and scratch buffer, given the build parameters. The size requirements for a scratch buffer may be zero.
vkGetClusterAccelerationStructureBuildSizesNV: PFN_vkGetClusterAccelerationStructureBuildSizesNV;

// vkCmdBuildClusterAccelerationStructureIndirectNV - Build or move cluster acceleration structures
//   commandBuffer: the command buffer into which the command is recorded.
//   pCommandInfos: a pointer to a VkClusterAccelerationStructureCommandsInfoNV structure containing parameters required for building or moving the cluster acceleration structure.
vkCmdBuildClusterAccelerationStructureIndirectNV: PFN_vkCmdBuildClusterAccelerationStructureIndirectNV;

// vkGetPartitionedAccelerationStructuresBuildSizesNV - Retrieve the buffer allocation requirements for partitioned acceleration structure command
//   device: the logical device that owns the acceleration structure.
//   pInfo: a pointer to a VkPartitionedAccelerationStructureInstancesInputNV structure containing parameters required for the memory requirements query.
//   pSizeInfo: a pointer to a VkAccelerationStructureBuildSizesInfoKHR structure which returns the size required for an acceleration structure and the sizes required for the scratch buffers, given the build parameters. The size requirements for a scratch buffer may be zero.
vkGetPartitionedAccelerationStructuresBuildSizesNV: PFN_vkGetPartitionedAccelerationStructuresBuildSizesNV;

// vkCmdBuildPartitionedAccelerationStructuresNV - Command for building a PTLAS
//   commandBuffer: the command buffer into which the command is recorded.
//   pBuildInfo: a pointer to a VkBuildPartitionedAccelerationStructureInfoNV structure containing parameters required for building a PTLAS.
vkCmdBuildPartitionedAccelerationStructuresNV: PFN_vkCmdBuildPartitionedAccelerationStructuresNV;

// vkGetGeneratedCommandsMemoryRequirementsEXT - Retrieve the buffer allocation requirements for generated commands
//   device: the logical device that owns the buffer.
//   pInfo: a pointer to a VkGeneratedCommandsMemoryRequirementsInfoEXT structure containing parameters required for the memory requirements query.
//   pMemoryRequirements: a pointer to a VkMemoryRequirements2 structure in which the memory requirements of the buffer object are returned.
vkGetGeneratedCommandsMemoryRequirementsEXT: PFN_vkGetGeneratedCommandsMemoryRequirementsEXT;

// vkCmdPreprocessGeneratedCommandsEXT - Performs preprocessing for generated commands
//   commandBuffer: the command buffer which does the preprocessing.
//   pGeneratedCommandsInfo: a pointer to a VkGeneratedCommandsInfoEXT structure containing parameters affecting the preprocessing step.
//   stateCommandBuffer: a command buffer from which to snapshot current states affecting the preprocessing step. When a graphics command action token is used, graphics state is snapshotted. When a compute action command token is used, compute state is snapshotted. When a ray tracing action command token is used, ray tracing state is snapshotted. It can be deleted at any time after this command has been recorded.
vkCmdPreprocessGeneratedCommandsEXT: PFN_vkCmdPreprocessGeneratedCommandsEXT;

// vkCmdExecuteGeneratedCommandsEXT - Generate and execute commands on the device
//   commandBuffer: the command buffer into which the command is recorded.
//   isPreprocessed: represents whether the input data has already been preprocessed on the device. If it is VK_FALSE this command will implicitly trigger the preprocessing step, otherwise not.
//   pGeneratedCommandsInfo: a pointer to a VkGeneratedCommandsInfoEXT structure containing parameters affecting the generation of commands.
vkCmdExecuteGeneratedCommandsEXT: PFN_vkCmdExecuteGeneratedCommandsEXT;

// vkCreateIndirectCommandsLayoutEXT - Create an indirect command layout object
//   device: the logical device that creates the indirect command layout.
//   pCreateInfo: a pointer to a VkIndirectCommandsLayoutCreateInfoEXT structure containing parameters affecting creation of the indirect command layout.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pIndirectCommandsLayout: a pointer to a VkIndirectCommandsLayoutEXT handle in which the resulting indirect command layout is returned.
vkCreateIndirectCommandsLayoutEXT: PFN_vkCreateIndirectCommandsLayoutEXT;

// vkDestroyIndirectCommandsLayoutEXT - Destroy an indirect commands layout
//   device: the logical device that destroys the layout.
//   indirectCommandsLayout: the layout to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyIndirectCommandsLayoutEXT: PFN_vkDestroyIndirectCommandsLayoutEXT;

// vkCreateIndirectExecutionSetEXT - Create an indirect execution set
//   device: the logical device that creates the indirect execution set.
//   pCreateInfo: a pointer to a VkIndirectExecutionSetCreateInfoEXT structure containing parameters affecting creation of the indirect execution set.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pIndirectExecutionSet: a pointer to a VkIndirectExecutionSetEXT handle in which the resulting indirect execution set is returned.
vkCreateIndirectExecutionSetEXT: PFN_vkCreateIndirectExecutionSetEXT;

// vkDestroyIndirectExecutionSetEXT - Destroy an indirect execution set
//   device: the logical device that owns the indirect execution set.
//   indirectExecutionSet: the indirect execution set to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyIndirectExecutionSetEXT: PFN_vkDestroyIndirectExecutionSetEXT;

// vkUpdateIndirectExecutionSetPipelineEXT - Update the contents of an indirect execution set
//   device: the logical device that owns the indirect execution set.
//   indirectExecutionSet: the indirect execution set being updated.
//   executionSetWriteCount: the number of elements in the pExecutionSetWrites array.
//   pExecutionSetWrites: a pointer to an array of VkWriteIndirectExecutionSetPipelineEXT structures describing the elements to update.
vkUpdateIndirectExecutionSetPipelineEXT: PFN_vkUpdateIndirectExecutionSetPipelineEXT;

// vkUpdateIndirectExecutionSetShaderEXT - Update the contents of an indirect execution set
//   device: the logical device that owns the indirect execution set.
//   indirectExecutionSet: the indirect execution set being updated.
//   executionSetWriteCount: the number of elements in the pExecutionSetWrites array.
//   pExecutionSetWrites: a pointer to an array of VkWriteIndirectExecutionSetShaderEXT structures describing the elements to update.
vkUpdateIndirectExecutionSetShaderEXT: PFN_vkUpdateIndirectExecutionSetShaderEXT;
vkCmdEndRendering2EXT: PFN_vkCmdEndRendering2EXT;

// vkCreateAccelerationStructureKHR - Create a new acceleration structure object
//   device: the logical device that creates the acceleration structure object.
//   pCreateInfo: a pointer to a VkAccelerationStructureCreateInfoKHR structure containing parameters affecting creation of the acceleration structure.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pAccelerationStructure: a pointer to a VkAccelerationStructureKHR handle in which the resulting acceleration structure object is returned.
vkCreateAccelerationStructureKHR: PFN_vkCreateAccelerationStructureKHR;

// vkDestroyAccelerationStructureKHR - Destroy an acceleration structure object
//   device: the logical device that destroys the acceleration structure.
//   accelerationStructure: the acceleration structure to destroy.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
vkDestroyAccelerationStructureKHR: PFN_vkDestroyAccelerationStructureKHR;

// vkCmdBuildAccelerationStructuresKHR - Build an acceleration structure
//   commandBuffer: the command buffer into which the command will be recorded.
//   infoCount: the number of acceleration structures to build. It specifies the number of the pInfos structures and ppBuildRangeInfos pointers that must be provided.
//   pInfos: a pointer to an array of infoCount VkAccelerationStructureBuildGeometryInfoKHR structures defining the geometry used to build each acceleration structure.
//   ppBuildRangeInfos: a pointer to an array of infoCount pointers to arrays of VkAccelerationStructureBuildRangeInfoKHR structures. Each ppBuildRangeInfos[i] is a pointer to an array of pInfos[i].geometryCount VkAccelerationStructureBuildRangeInfoKHR structures defining dynamic offsets to the addresses where geometry data is stored, as defined by pInfos[i].
vkCmdBuildAccelerationStructuresKHR: PFN_vkCmdBuildAccelerationStructuresKHR;

// vkCmdBuildAccelerationStructuresIndirectKHR - Build an acceleration structure with some parameters provided on the device
//   commandBuffer: the command buffer into which the command will be recorded.
//   infoCount: the number of acceleration structures to build.
//   pInfos: a pointer to an array of infoCount VkAccelerationStructureBuildGeometryInfoKHR structures defining the geometry used to build each acceleration structure.
//   pIndirectDeviceAddresses: a pointer to an array of infoCount buffer device addresses which point to pInfos[i].geometryCount VkAccelerationStructureBuildRangeInfoKHR structures defining dynamic offsets to the addresses where geometry data is stored, as defined by pInfos[i].
//   pIndirectStrides: a pointer to an array of infoCount byte strides between elements of pIndirectDeviceAddresses.
//   ppMaxPrimitiveCounts: a pointer to an array of infoCount pointers to arrays of pInfos[i].geometryCount values indicating the maximum number of primitives that will be built by this command for each geometry.
vkCmdBuildAccelerationStructuresIndirectKHR: PFN_vkCmdBuildAccelerationStructuresIndirectKHR;

// vkBuildAccelerationStructuresKHR - Build an acceleration structure on the host
//   device: the VkDevice for which the acceleration structures are being built.
//   deferredOperation: an optional VkDeferredOperationKHR to request deferral for this command.
//   infoCount: the number of acceleration structures to build. It specifies the number of the pInfos structures and ppBuildRangeInfos pointers that must be provided.
//   pInfos: a pointer to an array of infoCount VkAccelerationStructureBuildGeometryInfoKHR structures defining the geometry used to build each acceleration structure.
//   ppBuildRangeInfos: a pointer to an array of infoCount pointers to arrays of VkAccelerationStructureBuildRangeInfoKHR structures. Each ppBuildRangeInfos[i] is a pointer to an array of pInfos[i].geometryCount VkAccelerationStructureBuildRangeInfoKHR structures defining dynamic offsets to the addresses where geometry data is stored, as defined by pInfos[i].
vkBuildAccelerationStructuresKHR: PFN_vkBuildAccelerationStructuresKHR;

// vkCopyAccelerationStructureKHR - Copy an acceleration structure on the host
//   device: the device which owns the acceleration structures.
//   deferredOperation: an optional VkDeferredOperationKHR to request deferral for this command.
//   pInfo: a pointer to a VkCopyAccelerationStructureInfoKHR structure defining the copy operation.
vkCopyAccelerationStructureKHR: PFN_vkCopyAccelerationStructureKHR;

// vkCopyAccelerationStructureToMemoryKHR - Serialize an acceleration structure on the host
//   device: the device which owns pInfo->src.
//   deferredOperation: an optional VkDeferredOperationKHR to request deferral for this command.
//   pInfo: a pointer to a VkCopyAccelerationStructureToMemoryInfoKHR structure defining the copy operation.
vkCopyAccelerationStructureToMemoryKHR: PFN_vkCopyAccelerationStructureToMemoryKHR;

// vkCopyMemoryToAccelerationStructureKHR - Deserialize an acceleration structure on the host
//   device: the device which owns pInfo->dst.
//   deferredOperation: an optional VkDeferredOperationKHR to request deferral for this command.
//   pInfo: a pointer to a VkCopyMemoryToAccelerationStructureInfoKHR structure defining the copy operation.
vkCopyMemoryToAccelerationStructureKHR: PFN_vkCopyMemoryToAccelerationStructureKHR;

// vkWriteAccelerationStructuresPropertiesKHR - Query acceleration structure meta-data on the host
//   device: the device which owns the acceleration structures in pAccelerationStructures.
//   accelerationStructureCount: the count of acceleration structures for which to query the property.
//   pAccelerationStructures: a pointer to an array of existing previously built acceleration structures.
//   queryType: a VkQueryType value specifying the property to be queried.
//   dataSize: the size in bytes of the buffer pointed to by pData.
//   pData: a pointer to an application-allocated buffer where the results will be written.
//   stride: the stride in bytes between results for individual queries within pData.
vkWriteAccelerationStructuresPropertiesKHR: PFN_vkWriteAccelerationStructuresPropertiesKHR;

// vkCmdCopyAccelerationStructureKHR - Copy an acceleration structure
//   commandBuffer: the command buffer into which the command will be recorded.
//   pInfo: a pointer to a VkCopyAccelerationStructureInfoKHR structure defining the copy operation.
vkCmdCopyAccelerationStructureKHR: PFN_vkCmdCopyAccelerationStructureKHR;

// vkCmdCopyAccelerationStructureToMemoryKHR - Copy an acceleration structure to device memory
//   commandBuffer: the command buffer into which the command will be recorded.
//   pInfo: a pointer to a VkCopyAccelerationStructureToMemoryInfoKHR structure defining the copy operation.
vkCmdCopyAccelerationStructureToMemoryKHR: PFN_vkCmdCopyAccelerationStructureToMemoryKHR;

// vkCmdCopyMemoryToAccelerationStructureKHR - Copy device memory to an acceleration structure
//   commandBuffer: the command buffer into which the command will be recorded.
//   pInfo: a pointer to a VkCopyMemoryToAccelerationStructureInfoKHR structure defining the copy operation.
vkCmdCopyMemoryToAccelerationStructureKHR: PFN_vkCmdCopyMemoryToAccelerationStructureKHR;

// vkGetAccelerationStructureDeviceAddressKHR - Query an address of an acceleration structure
//   device: the logical device that the acceleration structure was created on.
//   pInfo: a pointer to a VkAccelerationStructureDeviceAddressInfoKHR structure specifying the acceleration structure to retrieve an address for.
vkGetAccelerationStructureDeviceAddressKHR: PFN_vkGetAccelerationStructureDeviceAddressKHR;

// vkCmdWriteAccelerationStructuresPropertiesKHR - Write acceleration structure result parameters to query results.
//   commandBuffer: the command buffer into which the command will be recorded.
//   accelerationStructureCount: the count of acceleration structures for which to query the property.
//   pAccelerationStructures: a pointer to an array of existing previously built acceleration structures.
//   queryType: a VkQueryType value specifying the type of queries managed by the pool.
//   queryPool: the query pool that will manage the results of the query.
//   firstQuery: the first query index within the query pool that will contain the accelerationStructureCount number of results.
vkCmdWriteAccelerationStructuresPropertiesKHR: PFN_vkCmdWriteAccelerationStructuresPropertiesKHR;

// vkGetDeviceAccelerationStructureCompatibilityKHR - Check if a serialized acceleration structure is compatible with the current device
//   device: the device to check the version against.
//   pVersionInfo: a pointer to a VkAccelerationStructureVersionInfoKHR structure specifying version information to check against the device.
//   pCompatibility: a pointer to a VkAccelerationStructureCompatibilityKHR value in which compatibility information is returned.
vkGetDeviceAccelerationStructureCompatibilityKHR: PFN_vkGetDeviceAccelerationStructureCompatibilityKHR;

// vkGetAccelerationStructureBuildSizesKHR - Retrieve the required size for an acceleration structure
//   device: the logical device that will be used for creating the acceleration structure.
//   buildType: defines whether host or device operations (or both) are being queried for.
//   pBuildInfo: a pointer to a VkAccelerationStructureBuildGeometryInfoKHR structure describing parameters of a build operation.
//   pMaxPrimitiveCounts: a pointer to an array of pBuildInfo->geometryCount uint32_t values defining the number of primitives built into each geometry.
//   pSizeInfo: a pointer to a VkAccelerationStructureBuildSizesInfoKHR structure which returns the size required for an acceleration structure and the sizes required for the scratch buffers, given the build parameters. The size requirements for a scratch buffer may be zero.
vkGetAccelerationStructureBuildSizesKHR: PFN_vkGetAccelerationStructureBuildSizesKHR;

// vkCmdTraceRaysKHR - Initialize a ray tracing dispatch
//   commandBuffer: the command buffer into which the command will be recorded.
//   pRaygenShaderBindingTable: a VkStridedDeviceAddressRegionKHR that holds the shader binding table data for the ray generation shader stage.
//   pMissShaderBindingTable: a VkStridedDeviceAddressRegionKHR that holds the shader binding table data for the miss shader stage.
//   pHitShaderBindingTable: a VkStridedDeviceAddressRegionKHR that holds the shader binding table data for the hit shader stage.
//   pCallableShaderBindingTable: a VkStridedDeviceAddressRegionKHR that holds the shader binding table data for the callable shader stage.
//   width: the width of the ray trace query dimensions.
//   height: height of the ray trace query dimensions.
//   depth: depth of the ray trace query dimensions.
vkCmdTraceRaysKHR: PFN_vkCmdTraceRaysKHR;

// vkCreateRayTracingPipelinesKHR - Creates a new ray tracing pipeline object
//   device: the logical device that creates the ray tracing pipelines.
//   deferredOperation: VK_NULL_HANDLE or the handle of a valid VkDeferredOperationKHR request deferral object for this command.
//   pipelineCache: either VK_NULL_HANDLE, indicating that pipeline caching is disabled, or to enable caching, the handle of a valid VkPipelineCache object. The implementation must not access this object outside of the duration of this command.
//   createInfoCount: the length of the pCreateInfos and pPipelines arrays.
//   pCreateInfos: a pointer to an array of VkRayTracingPipelineCreateInfoKHR structures.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pPipelines: a pointer to an array in which the resulting ray tracing pipeline objects are returned.
vkCreateRayTracingPipelinesKHR: PFN_vkCreateRayTracingPipelinesKHR;

// vkGetRayTracingCaptureReplayShaderGroupHandlesKHR - Query opaque capture replay data for pipeline shader group handles
//   device: the logical device containing the ray tracing pipeline.
//   pipeline: the ray tracing pipeline object containing the shaders.
//   firstGroup: the index of the first group to retrieve a handle for from the VkRayTracingPipelineCreateInfoKHR::pGroups array.
//   groupCount: the number of shader handles to retrieve.
//   dataSize: the size in bytes of the buffer pointed to by pData.
//   pData: a pointer to an application-allocated buffer where the results will be written.
vkGetRayTracingCaptureReplayShaderGroupHandlesKHR: PFN_vkGetRayTracingCaptureReplayShaderGroupHandlesKHR;

// vkCmdTraceRaysIndirectKHR - Initialize an indirect ray tracing dispatch
//   commandBuffer: the command buffer into which the command will be recorded.
//   pRaygenShaderBindingTable: a VkStridedDeviceAddressRegionKHR that holds the shader binding table data for the ray generation shader stage.
//   pMissShaderBindingTable: a VkStridedDeviceAddressRegionKHR that holds the shader binding table data for the miss shader stage.
//   pHitShaderBindingTable: a VkStridedDeviceAddressRegionKHR that holds the shader binding table data for the hit shader stage.
//   pCallableShaderBindingTable: a VkStridedDeviceAddressRegionKHR that holds the shader binding table data for the callable shader stage.
//   indirectDeviceAddress: a buffer device address which is a pointer to a VkTraceRaysIndirectCommandKHR structure containing the trace ray parameters.
vkCmdTraceRaysIndirectKHR: PFN_vkCmdTraceRaysIndirectKHR;

// vkGetRayTracingShaderGroupStackSizeKHR - Query ray tracing pipeline shader group shader stack size
//   device: the logical device containing the ray tracing pipeline.
//   pipeline: the ray tracing pipeline object containing the shaders groups.
//   group: the index of the shader group to query.
//   groupShader: the type of shader from the group to query.
vkGetRayTracingShaderGroupStackSizeKHR: PFN_vkGetRayTracingShaderGroupStackSizeKHR;

// vkCmdSetRayTracingPipelineStackSizeKHR - Set the stack size dynamically for a ray tracing pipeline
//   commandBuffer: the command buffer into which the command will be recorded.
//   pipelineStackSize: the stack size to use for subsequent ray tracing trace commands.
vkCmdSetRayTracingPipelineStackSizeKHR: PFN_vkCmdSetRayTracingPipelineStackSizeKHR;

// vkCmdDrawMeshTasksEXT - Draw mesh task work items
//   commandBuffer: the command buffer into which the command will be recorded.
//   groupCountX: the number of local workgroups to dispatch in the X dimension.
//   groupCountY: the number of local workgroups to dispatch in the Y dimension.
//   groupCountZ: the number of local workgroups to dispatch in the Z dimension.
vkCmdDrawMeshTasksEXT: PFN_vkCmdDrawMeshTasksEXT;

// vkCmdDrawMeshTasksIndirectEXT - Issue an indirect mesh tasks draw into a command buffer
//   commandBuffer: the command buffer into which the command is recorded.
//   buffer: the buffer containing draw parameters.
//   offset: the byte offset into buffer where parameters begin.
//   drawCount: the number of draws to execute, and can be zero.
//   stride: the byte stride between successive sets of draw parameters.
vkCmdDrawMeshTasksIndirectEXT: PFN_vkCmdDrawMeshTasksIndirectEXT;

// vkCmdDrawMeshTasksIndirectCountEXT - Perform an indirect mesh tasks draw with the draw count sourced from a buffer
//   commandBuffer: the command buffer into which the command is recorded.
//   buffer: the buffer containing draw parameters.
//   offset: the byte offset into buffer where parameters begin.
//   countBuffer: the buffer containing the draw count.
//   countBufferOffset: the byte offset into countBuffer where the draw count begins.
//   maxDrawCount: specifies the maximum number of draws that will be executed. The actual number of executed draw calls is the minimum of the count specified in countBuffer and maxDrawCount.
//   stride: the byte stride between successive sets of draw parameters.
vkCmdDrawMeshTasksIndirectCountEXT: PFN_vkCmdDrawMeshTasksIndirectCountEXT;

// vkGetAndroidHardwareBufferPropertiesANDROID - Get Properties of External Memory Android Hardware Buffers
//   device: the logical device that will be importing buffer.
//   buffer: the Android hardware buffer which will be imported.
//   pProperties: a pointer to a VkAndroidHardwareBufferPropertiesANDROID structure in which the properties of buffer are returned.
vkGetAndroidHardwareBufferPropertiesANDROID: PFN_vkGetAndroidHardwareBufferPropertiesANDROID;

// vkGetMemoryAndroidHardwareBufferANDROID - Get an Android hardware buffer for a memory object
//   device: the logical device that created the device memory being exported.
//   pInfo: a pointer to a VkMemoryGetAndroidHardwareBufferInfoANDROID structure containing parameters of the export operation.
//   pBuffer: will return an Android hardware buffer referencing the payload of the device memory object.
vkGetMemoryAndroidHardwareBufferANDROID: PFN_vkGetMemoryAndroidHardwareBufferANDROID;

// vkCreateExecutionGraphPipelinesAMDX - Creates a new execution graph pipeline object
//   device: the logical device that creates the execution graph pipelines.
//   pipelineCache: either VK_NULL_HANDLE, indicating that pipeline caching is disabled; or the handle of a valid pipeline cache object, in which case use of that cache is enabled for the duration of the command. The implementation must not access this object outside of the duration of this command.
//   createInfoCount: the length of the pCreateInfos and pPipelines arrays.
//   pCreateInfos: a pointer to an array of VkExecutionGraphPipelineCreateInfoAMDX structures.
//   pAllocator: controls host memory allocation as described in the Memory Allocation chapter.
//   pPipelines: a pointer to an array of VkPipeline handles in which the resulting execution graph pipeline objects are returned.
vkCreateExecutionGraphPipelinesAMDX: PFN_vkCreateExecutionGraphPipelinesAMDX;

// vkGetExecutionGraphPipelineScratchSizeAMDX - Query scratch space required to dispatch an execution graph
//   device: the logical device that executionGraph was created on.
//   executionGraph: the execution graph pipeline to query the scratch space for.
//   pSizeInfo: a pointer to a VkExecutionGraphPipelineScratchSizeAMDX structure that will contain the required scratch size.
vkGetExecutionGraphPipelineScratchSizeAMDX: PFN_vkGetExecutionGraphPipelineScratchSizeAMDX;

// vkGetExecutionGraphPipelineNodeIndexAMDX - Query internal id of a node in an execution graph
//   device: the logical device that executionGraph was created on.
//   executionGraph: the execution graph pipeline to query the internal node index for.
//   pNodeInfo: a pointer to a VkPipelineShaderStageNodeCreateInfoAMDX structure identifying the name and index of the node to query.
//   pNodeIndex: the returned internal node index of the identified node.
vkGetExecutionGraphPipelineNodeIndexAMDX: PFN_vkGetExecutionGraphPipelineNodeIndexAMDX;

// vkCmdInitializeGraphScratchMemoryAMDX - Initialize scratch memory for an execution graph
//   commandBuffer: the command buffer into which the command will be recorded.
//   executionGraph: the execution graph pipeline to initialize the scratch memory for.
//   scratch: the address of scratch memory to be initialized.
//   scratchSize: a range in bytes of scratch memory to be initialized.
vkCmdInitializeGraphScratchMemoryAMDX: PFN_vkCmdInitializeGraphScratchMemoryAMDX;

// vkCmdDispatchGraphAMDX - Dispatch an execution graph
//   commandBuffer: the command buffer into which the command will be recorded.
//   scratch: the address of scratch memory to be used.
//   scratchSize: a range in bytes of scratch memory to be used.
//   pCountInfo: a host pointer to a VkDispatchGraphCountInfoAMDX structure defining the nodes which will be initially executed.
vkCmdDispatchGraphAMDX: PFN_vkCmdDispatchGraphAMDX;

// vkCmdDispatchGraphIndirectAMDX - Dispatch an execution graph with node and payload parameters read on the device
//   commandBuffer: the command buffer into which the command will be recorded.
//   scratch: the address of scratch memory to be used.
//   scratchSize: a range in bytes of scratch memory to be used.
//   pCountInfo: a host pointer to a VkDispatchGraphCountInfoAMDX structure defining the nodes which will be initially executed.
vkCmdDispatchGraphIndirectAMDX: PFN_vkCmdDispatchGraphIndirectAMDX;

// vkCmdDispatchGraphIndirectCountAMDX - Dispatch an execution graph with all parameters read on the device
//   commandBuffer: the command buffer into which the command will be recorded.
//   scratch: the address of scratch memory to be used.
//   scratchSize: a range in bytes of scratch memory to be used.
//   countInfo: a device address of a VkDispatchGraphCountInfoAMDX structure defining the nodes which will be initially executed.
vkCmdDispatchGraphIndirectCountAMDX: PFN_vkCmdDispatchGraphIndirectCountAMDX;


Device_VTable :: struct {
    vkDestroyDevice: PFN_vkDestroyDevice;
    vkGetDeviceQueue: PFN_vkGetDeviceQueue;
    vkQueueSubmit: PFN_vkQueueSubmit;
    vkQueueWaitIdle: PFN_vkQueueWaitIdle;
    vkDeviceWaitIdle: PFN_vkDeviceWaitIdle;
    vkAllocateMemory: PFN_vkAllocateMemory;
    vkFreeMemory: PFN_vkFreeMemory;
    vkMapMemory: PFN_vkMapMemory;
    vkUnmapMemory: PFN_vkUnmapMemory;
    vkFlushMappedMemoryRanges: PFN_vkFlushMappedMemoryRanges;
    vkInvalidateMappedMemoryRanges: PFN_vkInvalidateMappedMemoryRanges;
    vkGetDeviceMemoryCommitment: PFN_vkGetDeviceMemoryCommitment;
    vkBindBufferMemory: PFN_vkBindBufferMemory;
    vkBindImageMemory: PFN_vkBindImageMemory;
    vkGetBufferMemoryRequirements: PFN_vkGetBufferMemoryRequirements;
    vkGetImageMemoryRequirements: PFN_vkGetImageMemoryRequirements;
    vkGetImageSparseMemoryRequirements: PFN_vkGetImageSparseMemoryRequirements;
    vkQueueBindSparse: PFN_vkQueueBindSparse;
    vkCreateFence: PFN_vkCreateFence;
    vkDestroyFence: PFN_vkDestroyFence;
    vkResetFences: PFN_vkResetFences;
    vkGetFenceStatus: PFN_vkGetFenceStatus;
    vkWaitForFences: PFN_vkWaitForFences;
    vkCreateSemaphore: PFN_vkCreateSemaphore;
    vkDestroySemaphore: PFN_vkDestroySemaphore;
    vkCreateEvent: PFN_vkCreateEvent;
    vkDestroyEvent: PFN_vkDestroyEvent;
    vkGetEventStatus: PFN_vkGetEventStatus;
    vkSetEvent: PFN_vkSetEvent;
    vkResetEvent: PFN_vkResetEvent;
    vkCreateQueryPool: PFN_vkCreateQueryPool;
    vkDestroyQueryPool: PFN_vkDestroyQueryPool;
    vkGetQueryPoolResults: PFN_vkGetQueryPoolResults;
    vkCreateBuffer: PFN_vkCreateBuffer;
    vkDestroyBuffer: PFN_vkDestroyBuffer;
    vkCreateBufferView: PFN_vkCreateBufferView;
    vkDestroyBufferView: PFN_vkDestroyBufferView;
    vkCreateImage: PFN_vkCreateImage;
    vkDestroyImage: PFN_vkDestroyImage;
    vkGetImageSubresourceLayout: PFN_vkGetImageSubresourceLayout;
    vkCreateImageView: PFN_vkCreateImageView;
    vkDestroyImageView: PFN_vkDestroyImageView;
    vkCreateShaderModule: PFN_vkCreateShaderModule;
    vkDestroyShaderModule: PFN_vkDestroyShaderModule;
    vkCreatePipelineCache: PFN_vkCreatePipelineCache;
    vkDestroyPipelineCache: PFN_vkDestroyPipelineCache;
    vkGetPipelineCacheData: PFN_vkGetPipelineCacheData;
    vkMergePipelineCaches: PFN_vkMergePipelineCaches;
    vkCreateGraphicsPipelines: PFN_vkCreateGraphicsPipelines;
    vkCreateComputePipelines: PFN_vkCreateComputePipelines;
    vkDestroyPipeline: PFN_vkDestroyPipeline;
    vkCreatePipelineLayout: PFN_vkCreatePipelineLayout;
    vkDestroyPipelineLayout: PFN_vkDestroyPipelineLayout;
    vkCreateSampler: PFN_vkCreateSampler;
    vkDestroySampler: PFN_vkDestroySampler;
    vkCreateDescriptorSetLayout: PFN_vkCreateDescriptorSetLayout;
    vkDestroyDescriptorSetLayout: PFN_vkDestroyDescriptorSetLayout;
    vkCreateDescriptorPool: PFN_vkCreateDescriptorPool;
    vkDestroyDescriptorPool: PFN_vkDestroyDescriptorPool;
    vkResetDescriptorPool: PFN_vkResetDescriptorPool;
    vkAllocateDescriptorSets: PFN_vkAllocateDescriptorSets;
    vkFreeDescriptorSets: PFN_vkFreeDescriptorSets;
    vkUpdateDescriptorSets: PFN_vkUpdateDescriptorSets;
    vkCreateFramebuffer: PFN_vkCreateFramebuffer;
    vkDestroyFramebuffer: PFN_vkDestroyFramebuffer;
    vkCreateRenderPass: PFN_vkCreateRenderPass;
    vkDestroyRenderPass: PFN_vkDestroyRenderPass;
    vkGetRenderAreaGranularity: PFN_vkGetRenderAreaGranularity;
    vkCreateCommandPool: PFN_vkCreateCommandPool;
    vkDestroyCommandPool: PFN_vkDestroyCommandPool;
    vkResetCommandPool: PFN_vkResetCommandPool;
    vkAllocateCommandBuffers: PFN_vkAllocateCommandBuffers;
    vkFreeCommandBuffers: PFN_vkFreeCommandBuffers;
    vkBeginCommandBuffer: PFN_vkBeginCommandBuffer;
    vkEndCommandBuffer: PFN_vkEndCommandBuffer;
    vkResetCommandBuffer: PFN_vkResetCommandBuffer;
    vkCmdBindPipeline: PFN_vkCmdBindPipeline;
    vkCmdSetViewport: PFN_vkCmdSetViewport;
    vkCmdSetScissor: PFN_vkCmdSetScissor;
    vkCmdSetLineWidth: PFN_vkCmdSetLineWidth;
    vkCmdSetDepthBias: PFN_vkCmdSetDepthBias;
    vkCmdSetBlendConstants: PFN_vkCmdSetBlendConstants;
    vkCmdSetDepthBounds: PFN_vkCmdSetDepthBounds;
    vkCmdSetStencilCompareMask: PFN_vkCmdSetStencilCompareMask;
    vkCmdSetStencilWriteMask: PFN_vkCmdSetStencilWriteMask;
    vkCmdSetStencilReference: PFN_vkCmdSetStencilReference;
    vkCmdBindDescriptorSets: PFN_vkCmdBindDescriptorSets;
    vkCmdBindIndexBuffer: PFN_vkCmdBindIndexBuffer;
    vkCmdBindVertexBuffers: PFN_vkCmdBindVertexBuffers;
    vkCmdDraw: PFN_vkCmdDraw;
    vkCmdDrawIndexed: PFN_vkCmdDrawIndexed;
    vkCmdDrawIndirect: PFN_vkCmdDrawIndirect;
    vkCmdDrawIndexedIndirect: PFN_vkCmdDrawIndexedIndirect;
    vkCmdDispatch: PFN_vkCmdDispatch;
    vkCmdDispatchIndirect: PFN_vkCmdDispatchIndirect;
    vkCmdCopyBuffer: PFN_vkCmdCopyBuffer;
    vkCmdCopyImage: PFN_vkCmdCopyImage;
    vkCmdBlitImage: PFN_vkCmdBlitImage;
    vkCmdCopyBufferToImage: PFN_vkCmdCopyBufferToImage;
    vkCmdCopyImageToBuffer: PFN_vkCmdCopyImageToBuffer;
    vkCmdUpdateBuffer: PFN_vkCmdUpdateBuffer;
    vkCmdFillBuffer: PFN_vkCmdFillBuffer;
    vkCmdClearColorImage: PFN_vkCmdClearColorImage;
    vkCmdClearDepthStencilImage: PFN_vkCmdClearDepthStencilImage;
    vkCmdClearAttachments: PFN_vkCmdClearAttachments;
    vkCmdResolveImage: PFN_vkCmdResolveImage;
    vkCmdSetEvent: PFN_vkCmdSetEvent;
    vkCmdResetEvent: PFN_vkCmdResetEvent;
    vkCmdWaitEvents: PFN_vkCmdWaitEvents;
    vkCmdPipelineBarrier: PFN_vkCmdPipelineBarrier;
    vkCmdBeginQuery: PFN_vkCmdBeginQuery;
    vkCmdEndQuery: PFN_vkCmdEndQuery;
    vkCmdResetQueryPool: PFN_vkCmdResetQueryPool;
    vkCmdWriteTimestamp: PFN_vkCmdWriteTimestamp;
    vkCmdCopyQueryPoolResults: PFN_vkCmdCopyQueryPoolResults;
    vkCmdPushConstants: PFN_vkCmdPushConstants;
    vkCmdBeginRenderPass: PFN_vkCmdBeginRenderPass;
    vkCmdNextSubpass: PFN_vkCmdNextSubpass;
    vkCmdEndRenderPass: PFN_vkCmdEndRenderPass;
    vkCmdExecuteCommands: PFN_vkCmdExecuteCommands;
    vkBindBufferMemory2: PFN_vkBindBufferMemory2;
    vkBindImageMemory2: PFN_vkBindImageMemory2;
    vkGetDeviceGroupPeerMemoryFeatures: PFN_vkGetDeviceGroupPeerMemoryFeatures;
    vkCmdSetDeviceMask: PFN_vkCmdSetDeviceMask;
    vkCmdDispatchBase: PFN_vkCmdDispatchBase;
    vkGetImageMemoryRequirements2: PFN_vkGetImageMemoryRequirements2;
    vkGetBufferMemoryRequirements2: PFN_vkGetBufferMemoryRequirements2;
    vkGetImageSparseMemoryRequirements2: PFN_vkGetImageSparseMemoryRequirements2;
    vkTrimCommandPool: PFN_vkTrimCommandPool;
    vkGetDeviceQueue2: PFN_vkGetDeviceQueue2;
    vkCreateSamplerYcbcrConversion: PFN_vkCreateSamplerYcbcrConversion;
    vkDestroySamplerYcbcrConversion: PFN_vkDestroySamplerYcbcrConversion;
    vkCreateDescriptorUpdateTemplate: PFN_vkCreateDescriptorUpdateTemplate;
    vkDestroyDescriptorUpdateTemplate: PFN_vkDestroyDescriptorUpdateTemplate;
    vkUpdateDescriptorSetWithTemplate: PFN_vkUpdateDescriptorSetWithTemplate;
    vkGetDescriptorSetLayoutSupport: PFN_vkGetDescriptorSetLayoutSupport;
    vkCmdDrawIndirectCount: PFN_vkCmdDrawIndirectCount;
    vkCmdDrawIndexedIndirectCount: PFN_vkCmdDrawIndexedIndirectCount;
    vkCreateRenderPass2: PFN_vkCreateRenderPass2;
    vkCmdBeginRenderPass2: PFN_vkCmdBeginRenderPass2;
    vkCmdNextSubpass2: PFN_vkCmdNextSubpass2;
    vkCmdEndRenderPass2: PFN_vkCmdEndRenderPass2;
    vkResetQueryPool: PFN_vkResetQueryPool;
    vkGetSemaphoreCounterValue: PFN_vkGetSemaphoreCounterValue;
    vkWaitSemaphores: PFN_vkWaitSemaphores;
    vkSignalSemaphore: PFN_vkSignalSemaphore;
    vkGetBufferDeviceAddress: PFN_vkGetBufferDeviceAddress;
    vkGetBufferOpaqueCaptureAddress: PFN_vkGetBufferOpaqueCaptureAddress;
    vkGetDeviceMemoryOpaqueCaptureAddress: PFN_vkGetDeviceMemoryOpaqueCaptureAddress;
    vkCreatePrivateDataSlot: PFN_vkCreatePrivateDataSlot;
    vkDestroyPrivateDataSlot: PFN_vkDestroyPrivateDataSlot;
    vkSetPrivateData: PFN_vkSetPrivateData;
    vkGetPrivateData: PFN_vkGetPrivateData;
    vkCmdSetEvent2: PFN_vkCmdSetEvent2;
    vkCmdResetEvent2: PFN_vkCmdResetEvent2;
    vkCmdWaitEvents2: PFN_vkCmdWaitEvents2;
    vkCmdPipelineBarrier2: PFN_vkCmdPipelineBarrier2;
    vkCmdWriteTimestamp2: PFN_vkCmdWriteTimestamp2;
    vkQueueSubmit2: PFN_vkQueueSubmit2;
    vkCmdCopyBuffer2: PFN_vkCmdCopyBuffer2;
    vkCmdCopyImage2: PFN_vkCmdCopyImage2;
    vkCmdCopyBufferToImage2: PFN_vkCmdCopyBufferToImage2;
    vkCmdCopyImageToBuffer2: PFN_vkCmdCopyImageToBuffer2;
    vkCmdBlitImage2: PFN_vkCmdBlitImage2;
    vkCmdResolveImage2: PFN_vkCmdResolveImage2;
    vkCmdBeginRendering: PFN_vkCmdBeginRendering;
    vkCmdEndRendering: PFN_vkCmdEndRendering;
    vkCmdSetCullMode: PFN_vkCmdSetCullMode;
    vkCmdSetFrontFace: PFN_vkCmdSetFrontFace;
    vkCmdSetPrimitiveTopology: PFN_vkCmdSetPrimitiveTopology;
    vkCmdSetViewportWithCount: PFN_vkCmdSetViewportWithCount;
    vkCmdSetScissorWithCount: PFN_vkCmdSetScissorWithCount;
    vkCmdBindVertexBuffers2: PFN_vkCmdBindVertexBuffers2;
    vkCmdSetDepthTestEnable: PFN_vkCmdSetDepthTestEnable;
    vkCmdSetDepthWriteEnable: PFN_vkCmdSetDepthWriteEnable;
    vkCmdSetDepthCompareOp: PFN_vkCmdSetDepthCompareOp;
    vkCmdSetDepthBoundsTestEnable: PFN_vkCmdSetDepthBoundsTestEnable;
    vkCmdSetStencilTestEnable: PFN_vkCmdSetStencilTestEnable;
    vkCmdSetStencilOp: PFN_vkCmdSetStencilOp;
    vkCmdSetRasterizerDiscardEnable: PFN_vkCmdSetRasterizerDiscardEnable;
    vkCmdSetDepthBiasEnable: PFN_vkCmdSetDepthBiasEnable;
    vkCmdSetPrimitiveRestartEnable: PFN_vkCmdSetPrimitiveRestartEnable;
    vkGetDeviceBufferMemoryRequirements: PFN_vkGetDeviceBufferMemoryRequirements;
    vkGetDeviceImageMemoryRequirements: PFN_vkGetDeviceImageMemoryRequirements;
    vkGetDeviceImageSparseMemoryRequirements: PFN_vkGetDeviceImageSparseMemoryRequirements;
    vkCmdSetLineStipple: PFN_vkCmdSetLineStipple;
    vkMapMemory2: PFN_vkMapMemory2;
    vkUnmapMemory2: PFN_vkUnmapMemory2;
    vkCmdBindIndexBuffer2: PFN_vkCmdBindIndexBuffer2;
    vkGetRenderingAreaGranularity: PFN_vkGetRenderingAreaGranularity;
    vkGetDeviceImageSubresourceLayout: PFN_vkGetDeviceImageSubresourceLayout;
    vkGetImageSubresourceLayout2: PFN_vkGetImageSubresourceLayout2;
    vkCmdPushDescriptorSet: PFN_vkCmdPushDescriptorSet;
    vkCmdPushDescriptorSetWithTemplate: PFN_vkCmdPushDescriptorSetWithTemplate;
    vkCmdSetRenderingAttachmentLocations: PFN_vkCmdSetRenderingAttachmentLocations;
    vkCmdSetRenderingInputAttachmentIndices: PFN_vkCmdSetRenderingInputAttachmentIndices;
    vkCmdBindDescriptorSets2: PFN_vkCmdBindDescriptorSets2;
    vkCmdPushConstants2: PFN_vkCmdPushConstants2;
    vkCmdPushDescriptorSet2: PFN_vkCmdPushDescriptorSet2;
    vkCmdPushDescriptorSetWithTemplate2: PFN_vkCmdPushDescriptorSetWithTemplate2;
    vkCopyMemoryToImage: PFN_vkCopyMemoryToImage;
    vkCopyImageToMemory: PFN_vkCopyImageToMemory;
    vkCopyImageToImage: PFN_vkCopyImageToImage;
    vkTransitionImageLayout: PFN_vkTransitionImageLayout;
    vkCreateSwapchainKHR: PFN_vkCreateSwapchainKHR;
    vkDestroySwapchainKHR: PFN_vkDestroySwapchainKHR;
    vkGetSwapchainImagesKHR: PFN_vkGetSwapchainImagesKHR;
    vkAcquireNextImageKHR: PFN_vkAcquireNextImageKHR;
    vkQueuePresentKHR: PFN_vkQueuePresentKHR;
    vkGetDeviceGroupPresentCapabilitiesKHR: PFN_vkGetDeviceGroupPresentCapabilitiesKHR;
    vkGetDeviceGroupSurfacePresentModesKHR: PFN_vkGetDeviceGroupSurfacePresentModesKHR;
    vkAcquireNextImage2KHR: PFN_vkAcquireNextImage2KHR;
    vkCreateSharedSwapchainsKHR: PFN_vkCreateSharedSwapchainsKHR;
    vkCreateVideoSessionKHR: PFN_vkCreateVideoSessionKHR;
    vkDestroyVideoSessionKHR: PFN_vkDestroyVideoSessionKHR;
    vkGetVideoSessionMemoryRequirementsKHR: PFN_vkGetVideoSessionMemoryRequirementsKHR;
    vkBindVideoSessionMemoryKHR: PFN_vkBindVideoSessionMemoryKHR;
    vkCreateVideoSessionParametersKHR: PFN_vkCreateVideoSessionParametersKHR;
    vkUpdateVideoSessionParametersKHR: PFN_vkUpdateVideoSessionParametersKHR;
    vkDestroyVideoSessionParametersKHR: PFN_vkDestroyVideoSessionParametersKHR;
    vkCmdBeginVideoCodingKHR: PFN_vkCmdBeginVideoCodingKHR;
    vkCmdEndVideoCodingKHR: PFN_vkCmdEndVideoCodingKHR;
    vkCmdControlVideoCodingKHR: PFN_vkCmdControlVideoCodingKHR;
    vkCmdDecodeVideoKHR: PFN_vkCmdDecodeVideoKHR;
    vkCmdBeginRenderingKHR: PFN_vkCmdBeginRenderingKHR;
    vkCmdEndRenderingKHR: PFN_vkCmdEndRenderingKHR;
    vkGetDeviceGroupPeerMemoryFeaturesKHR: PFN_vkGetDeviceGroupPeerMemoryFeaturesKHR;
    vkCmdSetDeviceMaskKHR: PFN_vkCmdSetDeviceMaskKHR;
    vkCmdDispatchBaseKHR: PFN_vkCmdDispatchBaseKHR;
    vkTrimCommandPoolKHR: PFN_vkTrimCommandPoolKHR;
    vkGetMemoryFdKHR: PFN_vkGetMemoryFdKHR;
    vkGetMemoryFdPropertiesKHR: PFN_vkGetMemoryFdPropertiesKHR;
    vkImportSemaphoreFdKHR: PFN_vkImportSemaphoreFdKHR;
    vkGetSemaphoreFdKHR: PFN_vkGetSemaphoreFdKHR;
    vkCmdPushDescriptorSetKHR: PFN_vkCmdPushDescriptorSetKHR;
    vkCmdPushDescriptorSetWithTemplateKHR: PFN_vkCmdPushDescriptorSetWithTemplateKHR;
    vkCreateDescriptorUpdateTemplateKHR: PFN_vkCreateDescriptorUpdateTemplateKHR;
    vkDestroyDescriptorUpdateTemplateKHR: PFN_vkDestroyDescriptorUpdateTemplateKHR;
    vkUpdateDescriptorSetWithTemplateKHR: PFN_vkUpdateDescriptorSetWithTemplateKHR;
    vkCreateRenderPass2KHR: PFN_vkCreateRenderPass2KHR;
    vkCmdBeginRenderPass2KHR: PFN_vkCmdBeginRenderPass2KHR;
    vkCmdNextSubpass2KHR: PFN_vkCmdNextSubpass2KHR;
    vkCmdEndRenderPass2KHR: PFN_vkCmdEndRenderPass2KHR;
    vkGetSwapchainStatusKHR: PFN_vkGetSwapchainStatusKHR;
    vkImportFenceFdKHR: PFN_vkImportFenceFdKHR;
    vkGetFenceFdKHR: PFN_vkGetFenceFdKHR;
    vkAcquireProfilingLockKHR: PFN_vkAcquireProfilingLockKHR;
    vkReleaseProfilingLockKHR: PFN_vkReleaseProfilingLockKHR;
    vkGetImageMemoryRequirements2KHR: PFN_vkGetImageMemoryRequirements2KHR;
    vkGetBufferMemoryRequirements2KHR: PFN_vkGetBufferMemoryRequirements2KHR;
    vkGetImageSparseMemoryRequirements2KHR: PFN_vkGetImageSparseMemoryRequirements2KHR;
    vkCreateSamplerYcbcrConversionKHR: PFN_vkCreateSamplerYcbcrConversionKHR;
    vkDestroySamplerYcbcrConversionKHR: PFN_vkDestroySamplerYcbcrConversionKHR;
    vkBindBufferMemory2KHR: PFN_vkBindBufferMemory2KHR;
    vkBindImageMemory2KHR: PFN_vkBindImageMemory2KHR;
    vkGetDescriptorSetLayoutSupportKHR: PFN_vkGetDescriptorSetLayoutSupportKHR;
    vkCmdDrawIndirectCountKHR: PFN_vkCmdDrawIndirectCountKHR;
    vkCmdDrawIndexedIndirectCountKHR: PFN_vkCmdDrawIndexedIndirectCountKHR;
    vkGetSemaphoreCounterValueKHR: PFN_vkGetSemaphoreCounterValueKHR;
    vkWaitSemaphoresKHR: PFN_vkWaitSemaphoresKHR;
    vkSignalSemaphoreKHR: PFN_vkSignalSemaphoreKHR;
    vkCmdSetFragmentShadingRateKHR: PFN_vkCmdSetFragmentShadingRateKHR;
    vkCmdSetRenderingAttachmentLocationsKHR: PFN_vkCmdSetRenderingAttachmentLocationsKHR;
    vkCmdSetRenderingInputAttachmentIndicesKHR: PFN_vkCmdSetRenderingInputAttachmentIndicesKHR;
    vkWaitForPresentKHR: PFN_vkWaitForPresentKHR;
    vkGetBufferDeviceAddressKHR: PFN_vkGetBufferDeviceAddressKHR;
    vkGetBufferOpaqueCaptureAddressKHR: PFN_vkGetBufferOpaqueCaptureAddressKHR;
    vkGetDeviceMemoryOpaqueCaptureAddressKHR: PFN_vkGetDeviceMemoryOpaqueCaptureAddressKHR;
    vkCreateDeferredOperationKHR: PFN_vkCreateDeferredOperationKHR;
    vkDestroyDeferredOperationKHR: PFN_vkDestroyDeferredOperationKHR;
    vkGetDeferredOperationMaxConcurrencyKHR: PFN_vkGetDeferredOperationMaxConcurrencyKHR;
    vkGetDeferredOperationResultKHR: PFN_vkGetDeferredOperationResultKHR;
    vkDeferredOperationJoinKHR: PFN_vkDeferredOperationJoinKHR;
    vkGetPipelineExecutablePropertiesKHR: PFN_vkGetPipelineExecutablePropertiesKHR;
    vkGetPipelineExecutableStatisticsKHR: PFN_vkGetPipelineExecutableStatisticsKHR;
    vkGetPipelineExecutableInternalRepresentationsKHR: PFN_vkGetPipelineExecutableInternalRepresentationsKHR;
    vkMapMemory2KHR: PFN_vkMapMemory2KHR;
    vkUnmapMemory2KHR: PFN_vkUnmapMemory2KHR;
    vkGetEncodedVideoSessionParametersKHR: PFN_vkGetEncodedVideoSessionParametersKHR;
    vkCmdEncodeVideoKHR: PFN_vkCmdEncodeVideoKHR;
    vkCmdSetEvent2KHR: PFN_vkCmdSetEvent2KHR;
    vkCmdResetEvent2KHR: PFN_vkCmdResetEvent2KHR;
    vkCmdWaitEvents2KHR: PFN_vkCmdWaitEvents2KHR;
    vkCmdPipelineBarrier2KHR: PFN_vkCmdPipelineBarrier2KHR;
    vkCmdWriteTimestamp2KHR: PFN_vkCmdWriteTimestamp2KHR;
    vkQueueSubmit2KHR: PFN_vkQueueSubmit2KHR;
    vkCmdCopyBuffer2KHR: PFN_vkCmdCopyBuffer2KHR;
    vkCmdCopyImage2KHR: PFN_vkCmdCopyImage2KHR;
    vkCmdCopyBufferToImage2KHR: PFN_vkCmdCopyBufferToImage2KHR;
    vkCmdCopyImageToBuffer2KHR: PFN_vkCmdCopyImageToBuffer2KHR;
    vkCmdBlitImage2KHR: PFN_vkCmdBlitImage2KHR;
    vkCmdResolveImage2KHR: PFN_vkCmdResolveImage2KHR;
    vkCmdTraceRaysIndirect2KHR: PFN_vkCmdTraceRaysIndirect2KHR;
    vkGetDeviceBufferMemoryRequirementsKHR: PFN_vkGetDeviceBufferMemoryRequirementsKHR;
    vkGetDeviceImageMemoryRequirementsKHR: PFN_vkGetDeviceImageMemoryRequirementsKHR;
    vkGetDeviceImageSparseMemoryRequirementsKHR: PFN_vkGetDeviceImageSparseMemoryRequirementsKHR;
    vkCmdBindIndexBuffer2KHR: PFN_vkCmdBindIndexBuffer2KHR;
    vkGetRenderingAreaGranularityKHR: PFN_vkGetRenderingAreaGranularityKHR;
    vkGetDeviceImageSubresourceLayoutKHR: PFN_vkGetDeviceImageSubresourceLayoutKHR;
    vkGetImageSubresourceLayout2KHR: PFN_vkGetImageSubresourceLayout2KHR;
    vkCreatePipelineBinariesKHR: PFN_vkCreatePipelineBinariesKHR;
    vkDestroyPipelineBinaryKHR: PFN_vkDestroyPipelineBinaryKHR;
    vkGetPipelineKeyKHR: PFN_vkGetPipelineKeyKHR;
    vkGetPipelineBinaryDataKHR: PFN_vkGetPipelineBinaryDataKHR;
    vkReleaseCapturedPipelineDataKHR: PFN_vkReleaseCapturedPipelineDataKHR;
    vkCmdSetLineStippleKHR: PFN_vkCmdSetLineStippleKHR;
    vkGetCalibratedTimestampsKHR: PFN_vkGetCalibratedTimestampsKHR;
    vkCmdBindDescriptorSets2KHR: PFN_vkCmdBindDescriptorSets2KHR;
    vkCmdPushConstants2KHR: PFN_vkCmdPushConstants2KHR;
    vkCmdPushDescriptorSet2KHR: PFN_vkCmdPushDescriptorSet2KHR;
    vkCmdPushDescriptorSetWithTemplate2KHR: PFN_vkCmdPushDescriptorSetWithTemplate2KHR;
    vkCmdSetDescriptorBufferOffsets2EXT: PFN_vkCmdSetDescriptorBufferOffsets2EXT;
    vkCmdBindDescriptorBufferEmbeddedSamplers2EXT: PFN_vkCmdBindDescriptorBufferEmbeddedSamplers2EXT;
    vkDebugMarkerSetObjectTagEXT: PFN_vkDebugMarkerSetObjectTagEXT;
    vkDebugMarkerSetObjectNameEXT: PFN_vkDebugMarkerSetObjectNameEXT;
    vkCmdDebugMarkerBeginEXT: PFN_vkCmdDebugMarkerBeginEXT;
    vkCmdDebugMarkerEndEXT: PFN_vkCmdDebugMarkerEndEXT;
    vkCmdDebugMarkerInsertEXT: PFN_vkCmdDebugMarkerInsertEXT;
    vkCmdBindTransformFeedbackBuffersEXT: PFN_vkCmdBindTransformFeedbackBuffersEXT;
    vkCmdBeginTransformFeedbackEXT: PFN_vkCmdBeginTransformFeedbackEXT;
    vkCmdEndTransformFeedbackEXT: PFN_vkCmdEndTransformFeedbackEXT;
    vkCmdBeginQueryIndexedEXT: PFN_vkCmdBeginQueryIndexedEXT;
    vkCmdEndQueryIndexedEXT: PFN_vkCmdEndQueryIndexedEXT;
    vkCmdDrawIndirectByteCountEXT: PFN_vkCmdDrawIndirectByteCountEXT;
    vkCreateCuModuleNVX: PFN_vkCreateCuModuleNVX;
    vkCreateCuFunctionNVX: PFN_vkCreateCuFunctionNVX;
    vkDestroyCuModuleNVX: PFN_vkDestroyCuModuleNVX;
    vkDestroyCuFunctionNVX: PFN_vkDestroyCuFunctionNVX;
    vkCmdCuLaunchKernelNVX: PFN_vkCmdCuLaunchKernelNVX;
    vkGetImageViewHandleNVX: PFN_vkGetImageViewHandleNVX;
    vkGetImageViewHandle64NVX: PFN_vkGetImageViewHandle64NVX;
    vkGetImageViewAddressNVX: PFN_vkGetImageViewAddressNVX;
    vkCmdDrawIndirectCountAMD: PFN_vkCmdDrawIndirectCountAMD;
    vkCmdDrawIndexedIndirectCountAMD: PFN_vkCmdDrawIndexedIndirectCountAMD;
    vkGetShaderInfoAMD: PFN_vkGetShaderInfoAMD;
    vkCmdBeginConditionalRenderingEXT: PFN_vkCmdBeginConditionalRenderingEXT;
    vkCmdEndConditionalRenderingEXT: PFN_vkCmdEndConditionalRenderingEXT;
    vkCmdSetViewportWScalingNV: PFN_vkCmdSetViewportWScalingNV;
    vkDisplayPowerControlEXT: PFN_vkDisplayPowerControlEXT;
    vkRegisterDeviceEventEXT: PFN_vkRegisterDeviceEventEXT;
    vkRegisterDisplayEventEXT: PFN_vkRegisterDisplayEventEXT;
    vkGetSwapchainCounterEXT: PFN_vkGetSwapchainCounterEXT;
    vkGetRefreshCycleDurationGOOGLE: PFN_vkGetRefreshCycleDurationGOOGLE;
    vkGetPastPresentationTimingGOOGLE: PFN_vkGetPastPresentationTimingGOOGLE;
    vkCmdSetDiscardRectangleEXT: PFN_vkCmdSetDiscardRectangleEXT;
    vkCmdSetDiscardRectangleEnableEXT: PFN_vkCmdSetDiscardRectangleEnableEXT;
    vkCmdSetDiscardRectangleModeEXT: PFN_vkCmdSetDiscardRectangleModeEXT;
    vkSetHdrMetadataEXT: PFN_vkSetHdrMetadataEXT;
    vkSetDebugUtilsObjectNameEXT: PFN_vkSetDebugUtilsObjectNameEXT;
    vkSetDebugUtilsObjectTagEXT: PFN_vkSetDebugUtilsObjectTagEXT;
    vkQueueBeginDebugUtilsLabelEXT: PFN_vkQueueBeginDebugUtilsLabelEXT;
    vkQueueEndDebugUtilsLabelEXT: PFN_vkQueueEndDebugUtilsLabelEXT;
    vkQueueInsertDebugUtilsLabelEXT: PFN_vkQueueInsertDebugUtilsLabelEXT;
    vkCmdBeginDebugUtilsLabelEXT: PFN_vkCmdBeginDebugUtilsLabelEXT;
    vkCmdEndDebugUtilsLabelEXT: PFN_vkCmdEndDebugUtilsLabelEXT;
    vkCmdInsertDebugUtilsLabelEXT: PFN_vkCmdInsertDebugUtilsLabelEXT;
    vkCmdSetSampleLocationsEXT: PFN_vkCmdSetSampleLocationsEXT;
    vkGetImageDrmFormatModifierPropertiesEXT: PFN_vkGetImageDrmFormatModifierPropertiesEXT;
    vkCreateValidationCacheEXT: PFN_vkCreateValidationCacheEXT;
    vkDestroyValidationCacheEXT: PFN_vkDestroyValidationCacheEXT;
    vkMergeValidationCachesEXT: PFN_vkMergeValidationCachesEXT;
    vkGetValidationCacheDataEXT: PFN_vkGetValidationCacheDataEXT;
    vkCmdBindShadingRateImageNV: PFN_vkCmdBindShadingRateImageNV;
    vkCmdSetViewportShadingRatePaletteNV: PFN_vkCmdSetViewportShadingRatePaletteNV;
    vkCmdSetCoarseSampleOrderNV: PFN_vkCmdSetCoarseSampleOrderNV;
    vkCreateAccelerationStructureNV: PFN_vkCreateAccelerationStructureNV;
    vkDestroyAccelerationStructureNV: PFN_vkDestroyAccelerationStructureNV;
    vkGetAccelerationStructureMemoryRequirementsNV: PFN_vkGetAccelerationStructureMemoryRequirementsNV;
    vkBindAccelerationStructureMemoryNV: PFN_vkBindAccelerationStructureMemoryNV;
    vkCmdBuildAccelerationStructureNV: PFN_vkCmdBuildAccelerationStructureNV;
    vkCmdCopyAccelerationStructureNV: PFN_vkCmdCopyAccelerationStructureNV;
    vkCmdTraceRaysNV: PFN_vkCmdTraceRaysNV;
    vkCreateRayTracingPipelinesNV: PFN_vkCreateRayTracingPipelinesNV;
    vkGetRayTracingShaderGroupHandlesKHR: PFN_vkGetRayTracingShaderGroupHandlesKHR;
    vkGetRayTracingShaderGroupHandlesNV: PFN_vkGetRayTracingShaderGroupHandlesNV;
    vkGetAccelerationStructureHandleNV: PFN_vkGetAccelerationStructureHandleNV;
    vkCmdWriteAccelerationStructuresPropertiesNV: PFN_vkCmdWriteAccelerationStructuresPropertiesNV;
    vkCompileDeferredNV: PFN_vkCompileDeferredNV;
    vkGetMemoryHostPointerPropertiesEXT: PFN_vkGetMemoryHostPointerPropertiesEXT;
    vkCmdWriteBufferMarkerAMD: PFN_vkCmdWriteBufferMarkerAMD;
    vkCmdWriteBufferMarker2AMD: PFN_vkCmdWriteBufferMarker2AMD;
    vkGetCalibratedTimestampsEXT: PFN_vkGetCalibratedTimestampsEXT;
    vkCmdDrawMeshTasksNV: PFN_vkCmdDrawMeshTasksNV;
    vkCmdDrawMeshTasksIndirectNV: PFN_vkCmdDrawMeshTasksIndirectNV;
    vkCmdDrawMeshTasksIndirectCountNV: PFN_vkCmdDrawMeshTasksIndirectCountNV;
    vkCmdSetExclusiveScissorEnableNV: PFN_vkCmdSetExclusiveScissorEnableNV;
    vkCmdSetExclusiveScissorNV: PFN_vkCmdSetExclusiveScissorNV;
    vkCmdSetCheckpointNV: PFN_vkCmdSetCheckpointNV;
    vkGetQueueCheckpointDataNV: PFN_vkGetQueueCheckpointDataNV;
    vkGetQueueCheckpointData2NV: PFN_vkGetQueueCheckpointData2NV;
    vkInitializePerformanceApiINTEL: PFN_vkInitializePerformanceApiINTEL;
    vkUninitializePerformanceApiINTEL: PFN_vkUninitializePerformanceApiINTEL;
    vkCmdSetPerformanceMarkerINTEL: PFN_vkCmdSetPerformanceMarkerINTEL;
    vkCmdSetPerformanceStreamMarkerINTEL: PFN_vkCmdSetPerformanceStreamMarkerINTEL;
    vkCmdSetPerformanceOverrideINTEL: PFN_vkCmdSetPerformanceOverrideINTEL;
    vkAcquirePerformanceConfigurationINTEL: PFN_vkAcquirePerformanceConfigurationINTEL;
    vkReleasePerformanceConfigurationINTEL: PFN_vkReleasePerformanceConfigurationINTEL;
    vkQueueSetPerformanceConfigurationINTEL: PFN_vkQueueSetPerformanceConfigurationINTEL;
    vkGetPerformanceParameterINTEL: PFN_vkGetPerformanceParameterINTEL;
    vkSetLocalDimmingAMD: PFN_vkSetLocalDimmingAMD;
    vkGetBufferDeviceAddressEXT: PFN_vkGetBufferDeviceAddressEXT;
    vkCmdSetLineStippleEXT: PFN_vkCmdSetLineStippleEXT;
    vkResetQueryPoolEXT: PFN_vkResetQueryPoolEXT;
    vkCmdSetCullModeEXT: PFN_vkCmdSetCullModeEXT;
    vkCmdSetFrontFaceEXT: PFN_vkCmdSetFrontFaceEXT;
    vkCmdSetPrimitiveTopologyEXT: PFN_vkCmdSetPrimitiveTopologyEXT;
    vkCmdSetViewportWithCountEXT: PFN_vkCmdSetViewportWithCountEXT;
    vkCmdSetScissorWithCountEXT: PFN_vkCmdSetScissorWithCountEXT;
    vkCmdBindVertexBuffers2EXT: PFN_vkCmdBindVertexBuffers2EXT;
    vkCmdSetDepthTestEnableEXT: PFN_vkCmdSetDepthTestEnableEXT;
    vkCmdSetDepthWriteEnableEXT: PFN_vkCmdSetDepthWriteEnableEXT;
    vkCmdSetDepthCompareOpEXT: PFN_vkCmdSetDepthCompareOpEXT;
    vkCmdSetDepthBoundsTestEnableEXT: PFN_vkCmdSetDepthBoundsTestEnableEXT;
    vkCmdSetStencilTestEnableEXT: PFN_vkCmdSetStencilTestEnableEXT;
    vkCmdSetStencilOpEXT: PFN_vkCmdSetStencilOpEXT;
    vkCopyMemoryToImageEXT: PFN_vkCopyMemoryToImageEXT;
    vkCopyImageToMemoryEXT: PFN_vkCopyImageToMemoryEXT;
    vkCopyImageToImageEXT: PFN_vkCopyImageToImageEXT;
    vkTransitionImageLayoutEXT: PFN_vkTransitionImageLayoutEXT;
    vkGetImageSubresourceLayout2EXT: PFN_vkGetImageSubresourceLayout2EXT;
    vkReleaseSwapchainImagesEXT: PFN_vkReleaseSwapchainImagesEXT;
    vkGetGeneratedCommandsMemoryRequirementsNV: PFN_vkGetGeneratedCommandsMemoryRequirementsNV;
    vkCmdPreprocessGeneratedCommandsNV: PFN_vkCmdPreprocessGeneratedCommandsNV;
    vkCmdExecuteGeneratedCommandsNV: PFN_vkCmdExecuteGeneratedCommandsNV;
    vkCmdBindPipelineShaderGroupNV: PFN_vkCmdBindPipelineShaderGroupNV;
    vkCreateIndirectCommandsLayoutNV: PFN_vkCreateIndirectCommandsLayoutNV;
    vkDestroyIndirectCommandsLayoutNV: PFN_vkDestroyIndirectCommandsLayoutNV;
    vkCmdSetDepthBias2EXT: PFN_vkCmdSetDepthBias2EXT;
    vkCreatePrivateDataSlotEXT: PFN_vkCreatePrivateDataSlotEXT;
    vkDestroyPrivateDataSlotEXT: PFN_vkDestroyPrivateDataSlotEXT;
    vkSetPrivateDataEXT: PFN_vkSetPrivateDataEXT;
    vkGetPrivateDataEXT: PFN_vkGetPrivateDataEXT;
    vkCreateCudaModuleNV: PFN_vkCreateCudaModuleNV;
    vkGetCudaModuleCacheNV: PFN_vkGetCudaModuleCacheNV;
    vkCreateCudaFunctionNV: PFN_vkCreateCudaFunctionNV;
    vkDestroyCudaModuleNV: PFN_vkDestroyCudaModuleNV;
    vkDestroyCudaFunctionNV: PFN_vkDestroyCudaFunctionNV;
    vkCmdCudaLaunchKernelNV: PFN_vkCmdCudaLaunchKernelNV;
    vkCmdDispatchTileQCOM: PFN_vkCmdDispatchTileQCOM;
    vkCmdBeginPerTileExecutionQCOM: PFN_vkCmdBeginPerTileExecutionQCOM;
    vkCmdEndPerTileExecutionQCOM: PFN_vkCmdEndPerTileExecutionQCOM;
    vkGetDescriptorSetLayoutSizeEXT: PFN_vkGetDescriptorSetLayoutSizeEXT;
    vkGetDescriptorSetLayoutBindingOffsetEXT: PFN_vkGetDescriptorSetLayoutBindingOffsetEXT;
    vkGetDescriptorEXT: PFN_vkGetDescriptorEXT;
    vkCmdBindDescriptorBuffersEXT: PFN_vkCmdBindDescriptorBuffersEXT;
    vkCmdSetDescriptorBufferOffsetsEXT: PFN_vkCmdSetDescriptorBufferOffsetsEXT;
    vkCmdBindDescriptorBufferEmbeddedSamplersEXT: PFN_vkCmdBindDescriptorBufferEmbeddedSamplersEXT;
    vkGetBufferOpaqueCaptureDescriptorDataEXT: PFN_vkGetBufferOpaqueCaptureDescriptorDataEXT;
    vkGetImageOpaqueCaptureDescriptorDataEXT: PFN_vkGetImageOpaqueCaptureDescriptorDataEXT;
    vkGetImageViewOpaqueCaptureDescriptorDataEXT: PFN_vkGetImageViewOpaqueCaptureDescriptorDataEXT;
    vkGetSamplerOpaqueCaptureDescriptorDataEXT: PFN_vkGetSamplerOpaqueCaptureDescriptorDataEXT;
    vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT: PFN_vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT;
    vkCmdSetFragmentShadingRateEnumNV: PFN_vkCmdSetFragmentShadingRateEnumNV;
    vkGetDeviceFaultInfoEXT: PFN_vkGetDeviceFaultInfoEXT;
    vkCmdSetVertexInputEXT: PFN_vkCmdSetVertexInputEXT;
    vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI: PFN_vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI;
    vkCmdSubpassShadingHUAWEI: PFN_vkCmdSubpassShadingHUAWEI;
    vkCmdBindInvocationMaskHUAWEI: PFN_vkCmdBindInvocationMaskHUAWEI;
    vkGetMemoryRemoteAddressNV: PFN_vkGetMemoryRemoteAddressNV;
    vkGetPipelinePropertiesEXT: PFN_vkGetPipelinePropertiesEXT;
    vkCmdSetPatchControlPointsEXT: PFN_vkCmdSetPatchControlPointsEXT;
    vkCmdSetRasterizerDiscardEnableEXT: PFN_vkCmdSetRasterizerDiscardEnableEXT;
    vkCmdSetDepthBiasEnableEXT: PFN_vkCmdSetDepthBiasEnableEXT;
    vkCmdSetLogicOpEXT: PFN_vkCmdSetLogicOpEXT;
    vkCmdSetPrimitiveRestartEnableEXT: PFN_vkCmdSetPrimitiveRestartEnableEXT;
    vkCmdSetColorWriteEnableEXT: PFN_vkCmdSetColorWriteEnableEXT;
    vkCmdDrawMultiEXT: PFN_vkCmdDrawMultiEXT;
    vkCmdDrawMultiIndexedEXT: PFN_vkCmdDrawMultiIndexedEXT;
    vkCreateMicromapEXT: PFN_vkCreateMicromapEXT;
    vkDestroyMicromapEXT: PFN_vkDestroyMicromapEXT;
    vkCmdBuildMicromapsEXT: PFN_vkCmdBuildMicromapsEXT;
    vkBuildMicromapsEXT: PFN_vkBuildMicromapsEXT;
    vkCopyMicromapEXT: PFN_vkCopyMicromapEXT;
    vkCopyMicromapToMemoryEXT: PFN_vkCopyMicromapToMemoryEXT;
    vkCopyMemoryToMicromapEXT: PFN_vkCopyMemoryToMicromapEXT;
    vkWriteMicromapsPropertiesEXT: PFN_vkWriteMicromapsPropertiesEXT;
    vkCmdCopyMicromapEXT: PFN_vkCmdCopyMicromapEXT;
    vkCmdCopyMicromapToMemoryEXT: PFN_vkCmdCopyMicromapToMemoryEXT;
    vkCmdCopyMemoryToMicromapEXT: PFN_vkCmdCopyMemoryToMicromapEXT;
    vkCmdWriteMicromapsPropertiesEXT: PFN_vkCmdWriteMicromapsPropertiesEXT;
    vkGetDeviceMicromapCompatibilityEXT: PFN_vkGetDeviceMicromapCompatibilityEXT;
    vkGetMicromapBuildSizesEXT: PFN_vkGetMicromapBuildSizesEXT;
    vkCmdDrawClusterHUAWEI: PFN_vkCmdDrawClusterHUAWEI;
    vkCmdDrawClusterIndirectHUAWEI: PFN_vkCmdDrawClusterIndirectHUAWEI;
    vkSetDeviceMemoryPriorityEXT: PFN_vkSetDeviceMemoryPriorityEXT;
    vkGetDescriptorSetLayoutHostMappingInfoVALVE: PFN_vkGetDescriptorSetLayoutHostMappingInfoVALVE;
    vkGetDescriptorSetHostMappingVALVE: PFN_vkGetDescriptorSetHostMappingVALVE;
    vkCmdCopyMemoryIndirectNV: PFN_vkCmdCopyMemoryIndirectNV;
    vkCmdCopyMemoryToImageIndirectNV: PFN_vkCmdCopyMemoryToImageIndirectNV;
    vkCmdDecompressMemoryNV: PFN_vkCmdDecompressMemoryNV;
    vkCmdDecompressMemoryIndirectCountNV: PFN_vkCmdDecompressMemoryIndirectCountNV;
    vkGetPipelineIndirectMemoryRequirementsNV: PFN_vkGetPipelineIndirectMemoryRequirementsNV;
    vkCmdUpdatePipelineIndirectBufferNV: PFN_vkCmdUpdatePipelineIndirectBufferNV;
    vkGetPipelineIndirectDeviceAddressNV: PFN_vkGetPipelineIndirectDeviceAddressNV;
    vkCmdSetDepthClampEnableEXT: PFN_vkCmdSetDepthClampEnableEXT;
    vkCmdSetPolygonModeEXT: PFN_vkCmdSetPolygonModeEXT;
    vkCmdSetRasterizationSamplesEXT: PFN_vkCmdSetRasterizationSamplesEXT;
    vkCmdSetSampleMaskEXT: PFN_vkCmdSetSampleMaskEXT;
    vkCmdSetAlphaToCoverageEnableEXT: PFN_vkCmdSetAlphaToCoverageEnableEXT;
    vkCmdSetAlphaToOneEnableEXT: PFN_vkCmdSetAlphaToOneEnableEXT;
    vkCmdSetLogicOpEnableEXT: PFN_vkCmdSetLogicOpEnableEXT;
    vkCmdSetColorBlendEnableEXT: PFN_vkCmdSetColorBlendEnableEXT;
    vkCmdSetColorBlendEquationEXT: PFN_vkCmdSetColorBlendEquationEXT;
    vkCmdSetColorWriteMaskEXT: PFN_vkCmdSetColorWriteMaskEXT;
    vkCmdSetTessellationDomainOriginEXT: PFN_vkCmdSetTessellationDomainOriginEXT;
    vkCmdSetRasterizationStreamEXT: PFN_vkCmdSetRasterizationStreamEXT;
    vkCmdSetConservativeRasterizationModeEXT: PFN_vkCmdSetConservativeRasterizationModeEXT;
    vkCmdSetExtraPrimitiveOverestimationSizeEXT: PFN_vkCmdSetExtraPrimitiveOverestimationSizeEXT;
    vkCmdSetDepthClipEnableEXT: PFN_vkCmdSetDepthClipEnableEXT;
    vkCmdSetSampleLocationsEnableEXT: PFN_vkCmdSetSampleLocationsEnableEXT;
    vkCmdSetColorBlendAdvancedEXT: PFN_vkCmdSetColorBlendAdvancedEXT;
    vkCmdSetProvokingVertexModeEXT: PFN_vkCmdSetProvokingVertexModeEXT;
    vkCmdSetLineRasterizationModeEXT: PFN_vkCmdSetLineRasterizationModeEXT;
    vkCmdSetLineStippleEnableEXT: PFN_vkCmdSetLineStippleEnableEXT;
    vkCmdSetDepthClipNegativeOneToOneEXT: PFN_vkCmdSetDepthClipNegativeOneToOneEXT;
    vkCmdSetViewportWScalingEnableNV: PFN_vkCmdSetViewportWScalingEnableNV;
    vkCmdSetViewportSwizzleNV: PFN_vkCmdSetViewportSwizzleNV;
    vkCmdSetCoverageToColorEnableNV: PFN_vkCmdSetCoverageToColorEnableNV;
    vkCmdSetCoverageToColorLocationNV: PFN_vkCmdSetCoverageToColorLocationNV;
    vkCmdSetCoverageModulationModeNV: PFN_vkCmdSetCoverageModulationModeNV;
    vkCmdSetCoverageModulationTableEnableNV: PFN_vkCmdSetCoverageModulationTableEnableNV;
    vkCmdSetCoverageModulationTableNV: PFN_vkCmdSetCoverageModulationTableNV;
    vkCmdSetShadingRateImageEnableNV: PFN_vkCmdSetShadingRateImageEnableNV;
    vkCmdSetRepresentativeFragmentTestEnableNV: PFN_vkCmdSetRepresentativeFragmentTestEnableNV;
    vkCmdSetCoverageReductionModeNV: PFN_vkCmdSetCoverageReductionModeNV;
    vkGetShaderModuleIdentifierEXT: PFN_vkGetShaderModuleIdentifierEXT;
    vkGetShaderModuleCreateInfoIdentifierEXT: PFN_vkGetShaderModuleCreateInfoIdentifierEXT;
    vkCreateOpticalFlowSessionNV: PFN_vkCreateOpticalFlowSessionNV;
    vkDestroyOpticalFlowSessionNV: PFN_vkDestroyOpticalFlowSessionNV;
    vkBindOpticalFlowSessionImageNV: PFN_vkBindOpticalFlowSessionImageNV;
    vkCmdOpticalFlowExecuteNV: PFN_vkCmdOpticalFlowExecuteNV;
    vkAntiLagUpdateAMD: PFN_vkAntiLagUpdateAMD;
    vkCreateShadersEXT: PFN_vkCreateShadersEXT;
    vkDestroyShaderEXT: PFN_vkDestroyShaderEXT;
    vkGetShaderBinaryDataEXT: PFN_vkGetShaderBinaryDataEXT;
    vkCmdBindShadersEXT: PFN_vkCmdBindShadersEXT;
    vkCmdSetDepthClampRangeEXT: PFN_vkCmdSetDepthClampRangeEXT;
    vkGetFramebufferTilePropertiesQCOM: PFN_vkGetFramebufferTilePropertiesQCOM;
    vkGetDynamicRenderingTilePropertiesQCOM: PFN_vkGetDynamicRenderingTilePropertiesQCOM;
    vkConvertCooperativeVectorMatrixNV: PFN_vkConvertCooperativeVectorMatrixNV;
    vkCmdConvertCooperativeVectorMatrixNV: PFN_vkCmdConvertCooperativeVectorMatrixNV;
    vkSetLatencySleepModeNV: PFN_vkSetLatencySleepModeNV;
    vkLatencySleepNV: PFN_vkLatencySleepNV;
    vkSetLatencyMarkerNV: PFN_vkSetLatencyMarkerNV;
    vkGetLatencyTimingsNV: PFN_vkGetLatencyTimingsNV;
    vkQueueNotifyOutOfBandNV: PFN_vkQueueNotifyOutOfBandNV;
    vkCmdSetAttachmentFeedbackLoopEnableEXT: PFN_vkCmdSetAttachmentFeedbackLoopEnableEXT;
    vkCmdBindTileMemoryQCOM: PFN_vkCmdBindTileMemoryQCOM;
    vkCreateExternalComputeQueueNV: PFN_vkCreateExternalComputeQueueNV;
    vkDestroyExternalComputeQueueNV: PFN_vkDestroyExternalComputeQueueNV;
    vkGetClusterAccelerationStructureBuildSizesNV: PFN_vkGetClusterAccelerationStructureBuildSizesNV;
    vkCmdBuildClusterAccelerationStructureIndirectNV: PFN_vkCmdBuildClusterAccelerationStructureIndirectNV;
    vkGetPartitionedAccelerationStructuresBuildSizesNV: PFN_vkGetPartitionedAccelerationStructuresBuildSizesNV;
    vkCmdBuildPartitionedAccelerationStructuresNV: PFN_vkCmdBuildPartitionedAccelerationStructuresNV;
    vkGetGeneratedCommandsMemoryRequirementsEXT: PFN_vkGetGeneratedCommandsMemoryRequirementsEXT;
    vkCmdPreprocessGeneratedCommandsEXT: PFN_vkCmdPreprocessGeneratedCommandsEXT;
    vkCmdExecuteGeneratedCommandsEXT: PFN_vkCmdExecuteGeneratedCommandsEXT;
    vkCreateIndirectCommandsLayoutEXT: PFN_vkCreateIndirectCommandsLayoutEXT;
    vkDestroyIndirectCommandsLayoutEXT: PFN_vkDestroyIndirectCommandsLayoutEXT;
    vkCreateIndirectExecutionSetEXT: PFN_vkCreateIndirectExecutionSetEXT;
    vkDestroyIndirectExecutionSetEXT: PFN_vkDestroyIndirectExecutionSetEXT;
    vkUpdateIndirectExecutionSetPipelineEXT: PFN_vkUpdateIndirectExecutionSetPipelineEXT;
    vkUpdateIndirectExecutionSetShaderEXT: PFN_vkUpdateIndirectExecutionSetShaderEXT;
    vkCmdEndRendering2EXT: PFN_vkCmdEndRendering2EXT;
    vkCreateAccelerationStructureKHR: PFN_vkCreateAccelerationStructureKHR;
    vkDestroyAccelerationStructureKHR: PFN_vkDestroyAccelerationStructureKHR;
    vkCmdBuildAccelerationStructuresKHR: PFN_vkCmdBuildAccelerationStructuresKHR;
    vkCmdBuildAccelerationStructuresIndirectKHR: PFN_vkCmdBuildAccelerationStructuresIndirectKHR;
    vkBuildAccelerationStructuresKHR: PFN_vkBuildAccelerationStructuresKHR;
    vkCopyAccelerationStructureKHR: PFN_vkCopyAccelerationStructureKHR;
    vkCopyAccelerationStructureToMemoryKHR: PFN_vkCopyAccelerationStructureToMemoryKHR;
    vkCopyMemoryToAccelerationStructureKHR: PFN_vkCopyMemoryToAccelerationStructureKHR;
    vkWriteAccelerationStructuresPropertiesKHR: PFN_vkWriteAccelerationStructuresPropertiesKHR;
    vkCmdCopyAccelerationStructureKHR: PFN_vkCmdCopyAccelerationStructureKHR;
    vkCmdCopyAccelerationStructureToMemoryKHR: PFN_vkCmdCopyAccelerationStructureToMemoryKHR;
    vkCmdCopyMemoryToAccelerationStructureKHR: PFN_vkCmdCopyMemoryToAccelerationStructureKHR;
    vkGetAccelerationStructureDeviceAddressKHR: PFN_vkGetAccelerationStructureDeviceAddressKHR;
    vkCmdWriteAccelerationStructuresPropertiesKHR: PFN_vkCmdWriteAccelerationStructuresPropertiesKHR;
    vkGetDeviceAccelerationStructureCompatibilityKHR: PFN_vkGetDeviceAccelerationStructureCompatibilityKHR;
    vkGetAccelerationStructureBuildSizesKHR: PFN_vkGetAccelerationStructureBuildSizesKHR;
    vkCmdTraceRaysKHR: PFN_vkCmdTraceRaysKHR;
    vkCreateRayTracingPipelinesKHR: PFN_vkCreateRayTracingPipelinesKHR;
    vkGetRayTracingCaptureReplayShaderGroupHandlesKHR: PFN_vkGetRayTracingCaptureReplayShaderGroupHandlesKHR;
    vkCmdTraceRaysIndirectKHR: PFN_vkCmdTraceRaysIndirectKHR;
    vkGetRayTracingShaderGroupStackSizeKHR: PFN_vkGetRayTracingShaderGroupStackSizeKHR;
    vkCmdSetRayTracingPipelineStackSizeKHR: PFN_vkCmdSetRayTracingPipelineStackSizeKHR;
    vkCmdDrawMeshTasksEXT: PFN_vkCmdDrawMeshTasksEXT;
    vkCmdDrawMeshTasksIndirectEXT: PFN_vkCmdDrawMeshTasksIndirectEXT;
    vkCmdDrawMeshTasksIndirectCountEXT: PFN_vkCmdDrawMeshTasksIndirectCountEXT;
    vkGetAndroidHardwareBufferPropertiesANDROID: PFN_vkGetAndroidHardwareBufferPropertiesANDROID;
    vkGetMemoryAndroidHardwareBufferANDROID: PFN_vkGetMemoryAndroidHardwareBufferANDROID;
    vkCreateExecutionGraphPipelinesAMDX: PFN_vkCreateExecutionGraphPipelinesAMDX;
    vkGetExecutionGraphPipelineScratchSizeAMDX: PFN_vkGetExecutionGraphPipelineScratchSizeAMDX;
    vkGetExecutionGraphPipelineNodeIndexAMDX: PFN_vkGetExecutionGraphPipelineNodeIndexAMDX;
    vkCmdInitializeGraphScratchMemoryAMDX: PFN_vkCmdInitializeGraphScratchMemoryAMDX;
    vkCmdDispatchGraphAMDX: PFN_vkCmdDispatchGraphAMDX;
    vkCmdDispatchGraphIndirectAMDX: PFN_vkCmdDispatchGraphIndirectAMDX;
    vkCmdDispatchGraphIndirectCountAMDX: PFN_vkCmdDispatchGraphIndirectCountAMDX;
};

load_proc_addresses_vtable :: (device: VkDevice, vtable: *Device_VTable) {
    vtable.vkDestroyDevice = xx vkGetDeviceProcAddr(device, "vkDestroyDevice");
    vtable.vkGetDeviceQueue = xx vkGetDeviceProcAddr(device, "vkGetDeviceQueue");
    vtable.vkQueueSubmit = xx vkGetDeviceProcAddr(device, "vkQueueSubmit");
    vtable.vkQueueWaitIdle = xx vkGetDeviceProcAddr(device, "vkQueueWaitIdle");
    vtable.vkDeviceWaitIdle = xx vkGetDeviceProcAddr(device, "vkDeviceWaitIdle");
    vtable.vkAllocateMemory = xx vkGetDeviceProcAddr(device, "vkAllocateMemory");
    vtable.vkFreeMemory = xx vkGetDeviceProcAddr(device, "vkFreeMemory");
    vtable.vkMapMemory = xx vkGetDeviceProcAddr(device, "vkMapMemory");
    vtable.vkUnmapMemory = xx vkGetDeviceProcAddr(device, "vkUnmapMemory");
    vtable.vkFlushMappedMemoryRanges = xx vkGetDeviceProcAddr(device, "vkFlushMappedMemoryRanges");
    vtable.vkInvalidateMappedMemoryRanges = xx vkGetDeviceProcAddr(device, "vkInvalidateMappedMemoryRanges");
    vtable.vkGetDeviceMemoryCommitment = xx vkGetDeviceProcAddr(device, "vkGetDeviceMemoryCommitment");
    vtable.vkBindBufferMemory = xx vkGetDeviceProcAddr(device, "vkBindBufferMemory");
    vtable.vkBindImageMemory = xx vkGetDeviceProcAddr(device, "vkBindImageMemory");
    vtable.vkGetBufferMemoryRequirements = xx vkGetDeviceProcAddr(device, "vkGetBufferMemoryRequirements");
    vtable.vkGetImageMemoryRequirements = xx vkGetDeviceProcAddr(device, "vkGetImageMemoryRequirements");
    vtable.vkGetImageSparseMemoryRequirements = xx vkGetDeviceProcAddr(device, "vkGetImageSparseMemoryRequirements");
    vtable.vkQueueBindSparse = xx vkGetDeviceProcAddr(device, "vkQueueBindSparse");
    vtable.vkCreateFence = xx vkGetDeviceProcAddr(device, "vkCreateFence");
    vtable.vkDestroyFence = xx vkGetDeviceProcAddr(device, "vkDestroyFence");
    vtable.vkResetFences = xx vkGetDeviceProcAddr(device, "vkResetFences");
    vtable.vkGetFenceStatus = xx vkGetDeviceProcAddr(device, "vkGetFenceStatus");
    vtable.vkWaitForFences = xx vkGetDeviceProcAddr(device, "vkWaitForFences");
    vtable.vkCreateSemaphore = xx vkGetDeviceProcAddr(device, "vkCreateSemaphore");
    vtable.vkDestroySemaphore = xx vkGetDeviceProcAddr(device, "vkDestroySemaphore");
    vtable.vkCreateEvent = xx vkGetDeviceProcAddr(device, "vkCreateEvent");
    vtable.vkDestroyEvent = xx vkGetDeviceProcAddr(device, "vkDestroyEvent");
    vtable.vkGetEventStatus = xx vkGetDeviceProcAddr(device, "vkGetEventStatus");
    vtable.vkSetEvent = xx vkGetDeviceProcAddr(device, "vkSetEvent");
    vtable.vkResetEvent = xx vkGetDeviceProcAddr(device, "vkResetEvent");
    vtable.vkCreateQueryPool = xx vkGetDeviceProcAddr(device, "vkCreateQueryPool");
    vtable.vkDestroyQueryPool = xx vkGetDeviceProcAddr(device, "vkDestroyQueryPool");
    vtable.vkGetQueryPoolResults = xx vkGetDeviceProcAddr(device, "vkGetQueryPoolResults");
    vtable.vkCreateBuffer = xx vkGetDeviceProcAddr(device, "vkCreateBuffer");
    vtable.vkDestroyBuffer = xx vkGetDeviceProcAddr(device, "vkDestroyBuffer");
    vtable.vkCreateBufferView = xx vkGetDeviceProcAddr(device, "vkCreateBufferView");
    vtable.vkDestroyBufferView = xx vkGetDeviceProcAddr(device, "vkDestroyBufferView");
    vtable.vkCreateImage = xx vkGetDeviceProcAddr(device, "vkCreateImage");
    vtable.vkDestroyImage = xx vkGetDeviceProcAddr(device, "vkDestroyImage");
    vtable.vkGetImageSubresourceLayout = xx vkGetDeviceProcAddr(device, "vkGetImageSubresourceLayout");
    vtable.vkCreateImageView = xx vkGetDeviceProcAddr(device, "vkCreateImageView");
    vtable.vkDestroyImageView = xx vkGetDeviceProcAddr(device, "vkDestroyImageView");
    vtable.vkCreateShaderModule = xx vkGetDeviceProcAddr(device, "vkCreateShaderModule");
    vtable.vkDestroyShaderModule = xx vkGetDeviceProcAddr(device, "vkDestroyShaderModule");
    vtable.vkCreatePipelineCache = xx vkGetDeviceProcAddr(device, "vkCreatePipelineCache");
    vtable.vkDestroyPipelineCache = xx vkGetDeviceProcAddr(device, "vkDestroyPipelineCache");
    vtable.vkGetPipelineCacheData = xx vkGetDeviceProcAddr(device, "vkGetPipelineCacheData");
    vtable.vkMergePipelineCaches = xx vkGetDeviceProcAddr(device, "vkMergePipelineCaches");
    vtable.vkCreateGraphicsPipelines = xx vkGetDeviceProcAddr(device, "vkCreateGraphicsPipelines");
    vtable.vkCreateComputePipelines = xx vkGetDeviceProcAddr(device, "vkCreateComputePipelines");
    vtable.vkDestroyPipeline = xx vkGetDeviceProcAddr(device, "vkDestroyPipeline");
    vtable.vkCreatePipelineLayout = xx vkGetDeviceProcAddr(device, "vkCreatePipelineLayout");
    vtable.vkDestroyPipelineLayout = xx vkGetDeviceProcAddr(device, "vkDestroyPipelineLayout");
    vtable.vkCreateSampler = xx vkGetDeviceProcAddr(device, "vkCreateSampler");
    vtable.vkDestroySampler = xx vkGetDeviceProcAddr(device, "vkDestroySampler");
    vtable.vkCreateDescriptorSetLayout = xx vkGetDeviceProcAddr(device, "vkCreateDescriptorSetLayout");
    vtable.vkDestroyDescriptorSetLayout = xx vkGetDeviceProcAddr(device, "vkDestroyDescriptorSetLayout");
    vtable.vkCreateDescriptorPool = xx vkGetDeviceProcAddr(device, "vkCreateDescriptorPool");
    vtable.vkDestroyDescriptorPool = xx vkGetDeviceProcAddr(device, "vkDestroyDescriptorPool");
    vtable.vkResetDescriptorPool = xx vkGetDeviceProcAddr(device, "vkResetDescriptorPool");
    vtable.vkAllocateDescriptorSets = xx vkGetDeviceProcAddr(device, "vkAllocateDescriptorSets");
    vtable.vkFreeDescriptorSets = xx vkGetDeviceProcAddr(device, "vkFreeDescriptorSets");
    vtable.vkUpdateDescriptorSets = xx vkGetDeviceProcAddr(device, "vkUpdateDescriptorSets");
    vtable.vkCreateFramebuffer = xx vkGetDeviceProcAddr(device, "vkCreateFramebuffer");
    vtable.vkDestroyFramebuffer = xx vkGetDeviceProcAddr(device, "vkDestroyFramebuffer");
    vtable.vkCreateRenderPass = xx vkGetDeviceProcAddr(device, "vkCreateRenderPass");
    vtable.vkDestroyRenderPass = xx vkGetDeviceProcAddr(device, "vkDestroyRenderPass");
    vtable.vkGetRenderAreaGranularity = xx vkGetDeviceProcAddr(device, "vkGetRenderAreaGranularity");
    vtable.vkCreateCommandPool = xx vkGetDeviceProcAddr(device, "vkCreateCommandPool");
    vtable.vkDestroyCommandPool = xx vkGetDeviceProcAddr(device, "vkDestroyCommandPool");
    vtable.vkResetCommandPool = xx vkGetDeviceProcAddr(device, "vkResetCommandPool");
    vtable.vkAllocateCommandBuffers = xx vkGetDeviceProcAddr(device, "vkAllocateCommandBuffers");
    vtable.vkFreeCommandBuffers = xx vkGetDeviceProcAddr(device, "vkFreeCommandBuffers");
    vtable.vkBeginCommandBuffer = xx vkGetDeviceProcAddr(device, "vkBeginCommandBuffer");
    vtable.vkEndCommandBuffer = xx vkGetDeviceProcAddr(device, "vkEndCommandBuffer");
    vtable.vkResetCommandBuffer = xx vkGetDeviceProcAddr(device, "vkResetCommandBuffer");
    vtable.vkCmdBindPipeline = xx vkGetDeviceProcAddr(device, "vkCmdBindPipeline");
    vtable.vkCmdSetViewport = xx vkGetDeviceProcAddr(device, "vkCmdSetViewport");
    vtable.vkCmdSetScissor = xx vkGetDeviceProcAddr(device, "vkCmdSetScissor");
    vtable.vkCmdSetLineWidth = xx vkGetDeviceProcAddr(device, "vkCmdSetLineWidth");
    vtable.vkCmdSetDepthBias = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthBias");
    vtable.vkCmdSetBlendConstants = xx vkGetDeviceProcAddr(device, "vkCmdSetBlendConstants");
    vtable.vkCmdSetDepthBounds = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthBounds");
    vtable.vkCmdSetStencilCompareMask = xx vkGetDeviceProcAddr(device, "vkCmdSetStencilCompareMask");
    vtable.vkCmdSetStencilWriteMask = xx vkGetDeviceProcAddr(device, "vkCmdSetStencilWriteMask");
    vtable.vkCmdSetStencilReference = xx vkGetDeviceProcAddr(device, "vkCmdSetStencilReference");
    vtable.vkCmdBindDescriptorSets = xx vkGetDeviceProcAddr(device, "vkCmdBindDescriptorSets");
    vtable.vkCmdBindIndexBuffer = xx vkGetDeviceProcAddr(device, "vkCmdBindIndexBuffer");
    vtable.vkCmdBindVertexBuffers = xx vkGetDeviceProcAddr(device, "vkCmdBindVertexBuffers");
    vtable.vkCmdDraw = xx vkGetDeviceProcAddr(device, "vkCmdDraw");
    vtable.vkCmdDrawIndexed = xx vkGetDeviceProcAddr(device, "vkCmdDrawIndexed");
    vtable.vkCmdDrawIndirect = xx vkGetDeviceProcAddr(device, "vkCmdDrawIndirect");
    vtable.vkCmdDrawIndexedIndirect = xx vkGetDeviceProcAddr(device, "vkCmdDrawIndexedIndirect");
    vtable.vkCmdDispatch = xx vkGetDeviceProcAddr(device, "vkCmdDispatch");
    vtable.vkCmdDispatchIndirect = xx vkGetDeviceProcAddr(device, "vkCmdDispatchIndirect");
    vtable.vkCmdCopyBuffer = xx vkGetDeviceProcAddr(device, "vkCmdCopyBuffer");
    vtable.vkCmdCopyImage = xx vkGetDeviceProcAddr(device, "vkCmdCopyImage");
    vtable.vkCmdBlitImage = xx vkGetDeviceProcAddr(device, "vkCmdBlitImage");
    vtable.vkCmdCopyBufferToImage = xx vkGetDeviceProcAddr(device, "vkCmdCopyBufferToImage");
    vtable.vkCmdCopyImageToBuffer = xx vkGetDeviceProcAddr(device, "vkCmdCopyImageToBuffer");
    vtable.vkCmdUpdateBuffer = xx vkGetDeviceProcAddr(device, "vkCmdUpdateBuffer");
    vtable.vkCmdFillBuffer = xx vkGetDeviceProcAddr(device, "vkCmdFillBuffer");
    vtable.vkCmdClearColorImage = xx vkGetDeviceProcAddr(device, "vkCmdClearColorImage");
    vtable.vkCmdClearDepthStencilImage = xx vkGetDeviceProcAddr(device, "vkCmdClearDepthStencilImage");
    vtable.vkCmdClearAttachments = xx vkGetDeviceProcAddr(device, "vkCmdClearAttachments");
    vtable.vkCmdResolveImage = xx vkGetDeviceProcAddr(device, "vkCmdResolveImage");
    vtable.vkCmdSetEvent = xx vkGetDeviceProcAddr(device, "vkCmdSetEvent");
    vtable.vkCmdResetEvent = xx vkGetDeviceProcAddr(device, "vkCmdResetEvent");
    vtable.vkCmdWaitEvents = xx vkGetDeviceProcAddr(device, "vkCmdWaitEvents");
    vtable.vkCmdPipelineBarrier = xx vkGetDeviceProcAddr(device, "vkCmdPipelineBarrier");
    vtable.vkCmdBeginQuery = xx vkGetDeviceProcAddr(device, "vkCmdBeginQuery");
    vtable.vkCmdEndQuery = xx vkGetDeviceProcAddr(device, "vkCmdEndQuery");
    vtable.vkCmdResetQueryPool = xx vkGetDeviceProcAddr(device, "vkCmdResetQueryPool");
    vtable.vkCmdWriteTimestamp = xx vkGetDeviceProcAddr(device, "vkCmdWriteTimestamp");
    vtable.vkCmdCopyQueryPoolResults = xx vkGetDeviceProcAddr(device, "vkCmdCopyQueryPoolResults");
    vtable.vkCmdPushConstants = xx vkGetDeviceProcAddr(device, "vkCmdPushConstants");
    vtable.vkCmdBeginRenderPass = xx vkGetDeviceProcAddr(device, "vkCmdBeginRenderPass");
    vtable.vkCmdNextSubpass = xx vkGetDeviceProcAddr(device, "vkCmdNextSubpass");
    vtable.vkCmdEndRenderPass = xx vkGetDeviceProcAddr(device, "vkCmdEndRenderPass");
    vtable.vkCmdExecuteCommands = xx vkGetDeviceProcAddr(device, "vkCmdExecuteCommands");
    vtable.vkBindBufferMemory2 = xx vkGetDeviceProcAddr(device, "vkBindBufferMemory2");
    vtable.vkBindImageMemory2 = xx vkGetDeviceProcAddr(device, "vkBindImageMemory2");
    vtable.vkGetDeviceGroupPeerMemoryFeatures = xx vkGetDeviceProcAddr(device, "vkGetDeviceGroupPeerMemoryFeatures");
    vtable.vkCmdSetDeviceMask = xx vkGetDeviceProcAddr(device, "vkCmdSetDeviceMask");
    vtable.vkCmdDispatchBase = xx vkGetDeviceProcAddr(device, "vkCmdDispatchBase");
    vtable.vkGetImageMemoryRequirements2 = xx vkGetDeviceProcAddr(device, "vkGetImageMemoryRequirements2");
    vtable.vkGetBufferMemoryRequirements2 = xx vkGetDeviceProcAddr(device, "vkGetBufferMemoryRequirements2");
    vtable.vkGetImageSparseMemoryRequirements2 = xx vkGetDeviceProcAddr(device, "vkGetImageSparseMemoryRequirements2");
    vtable.vkTrimCommandPool = xx vkGetDeviceProcAddr(device, "vkTrimCommandPool");
    vtable.vkGetDeviceQueue2 = xx vkGetDeviceProcAddr(device, "vkGetDeviceQueue2");
    vtable.vkCreateSamplerYcbcrConversion = xx vkGetDeviceProcAddr(device, "vkCreateSamplerYcbcrConversion");
    vtable.vkDestroySamplerYcbcrConversion = xx vkGetDeviceProcAddr(device, "vkDestroySamplerYcbcrConversion");
    vtable.vkCreateDescriptorUpdateTemplate = xx vkGetDeviceProcAddr(device, "vkCreateDescriptorUpdateTemplate");
    vtable.vkDestroyDescriptorUpdateTemplate = xx vkGetDeviceProcAddr(device, "vkDestroyDescriptorUpdateTemplate");
    vtable.vkUpdateDescriptorSetWithTemplate = xx vkGetDeviceProcAddr(device, "vkUpdateDescriptorSetWithTemplate");
    vtable.vkGetDescriptorSetLayoutSupport = xx vkGetDeviceProcAddr(device, "vkGetDescriptorSetLayoutSupport");
    vtable.vkCmdDrawIndirectCount = xx vkGetDeviceProcAddr(device, "vkCmdDrawIndirectCount");
    vtable.vkCmdDrawIndexedIndirectCount = xx vkGetDeviceProcAddr(device, "vkCmdDrawIndexedIndirectCount");
    vtable.vkCreateRenderPass2 = xx vkGetDeviceProcAddr(device, "vkCreateRenderPass2");
    vtable.vkCmdBeginRenderPass2 = xx vkGetDeviceProcAddr(device, "vkCmdBeginRenderPass2");
    vtable.vkCmdNextSubpass2 = xx vkGetDeviceProcAddr(device, "vkCmdNextSubpass2");
    vtable.vkCmdEndRenderPass2 = xx vkGetDeviceProcAddr(device, "vkCmdEndRenderPass2");
    vtable.vkResetQueryPool = xx vkGetDeviceProcAddr(device, "vkResetQueryPool");
    vtable.vkGetSemaphoreCounterValue = xx vkGetDeviceProcAddr(device, "vkGetSemaphoreCounterValue");
    vtable.vkWaitSemaphores = xx vkGetDeviceProcAddr(device, "vkWaitSemaphores");
    vtable.vkSignalSemaphore = xx vkGetDeviceProcAddr(device, "vkSignalSemaphore");
    vtable.vkGetBufferDeviceAddress = xx vkGetDeviceProcAddr(device, "vkGetBufferDeviceAddress");
    vtable.vkGetBufferOpaqueCaptureAddress = xx vkGetDeviceProcAddr(device, "vkGetBufferOpaqueCaptureAddress");
    vtable.vkGetDeviceMemoryOpaqueCaptureAddress = xx vkGetDeviceProcAddr(device, "vkGetDeviceMemoryOpaqueCaptureAddress");
    vtable.vkCreatePrivateDataSlot = xx vkGetDeviceProcAddr(device, "vkCreatePrivateDataSlot");
    vtable.vkDestroyPrivateDataSlot = xx vkGetDeviceProcAddr(device, "vkDestroyPrivateDataSlot");
    vtable.vkSetPrivateData = xx vkGetDeviceProcAddr(device, "vkSetPrivateData");
    vtable.vkGetPrivateData = xx vkGetDeviceProcAddr(device, "vkGetPrivateData");
    vtable.vkCmdSetEvent2 = xx vkGetDeviceProcAddr(device, "vkCmdSetEvent2");
    vtable.vkCmdResetEvent2 = xx vkGetDeviceProcAddr(device, "vkCmdResetEvent2");
    vtable.vkCmdWaitEvents2 = xx vkGetDeviceProcAddr(device, "vkCmdWaitEvents2");
    vtable.vkCmdPipelineBarrier2 = xx vkGetDeviceProcAddr(device, "vkCmdPipelineBarrier2");
    vtable.vkCmdWriteTimestamp2 = xx vkGetDeviceProcAddr(device, "vkCmdWriteTimestamp2");
    vtable.vkQueueSubmit2 = xx vkGetDeviceProcAddr(device, "vkQueueSubmit2");
    vtable.vkCmdCopyBuffer2 = xx vkGetDeviceProcAddr(device, "vkCmdCopyBuffer2");
    vtable.vkCmdCopyImage2 = xx vkGetDeviceProcAddr(device, "vkCmdCopyImage2");
    vtable.vkCmdCopyBufferToImage2 = xx vkGetDeviceProcAddr(device, "vkCmdCopyBufferToImage2");
    vtable.vkCmdCopyImageToBuffer2 = xx vkGetDeviceProcAddr(device, "vkCmdCopyImageToBuffer2");
    vtable.vkCmdBlitImage2 = xx vkGetDeviceProcAddr(device, "vkCmdBlitImage2");
    vtable.vkCmdResolveImage2 = xx vkGetDeviceProcAddr(device, "vkCmdResolveImage2");
    vtable.vkCmdBeginRendering = xx vkGetDeviceProcAddr(device, "vkCmdBeginRendering");
    vtable.vkCmdEndRendering = xx vkGetDeviceProcAddr(device, "vkCmdEndRendering");
    vtable.vkCmdSetCullMode = xx vkGetDeviceProcAddr(device, "vkCmdSetCullMode");
    vtable.vkCmdSetFrontFace = xx vkGetDeviceProcAddr(device, "vkCmdSetFrontFace");
    vtable.vkCmdSetPrimitiveTopology = xx vkGetDeviceProcAddr(device, "vkCmdSetPrimitiveTopology");
    vtable.vkCmdSetViewportWithCount = xx vkGetDeviceProcAddr(device, "vkCmdSetViewportWithCount");
    vtable.vkCmdSetScissorWithCount = xx vkGetDeviceProcAddr(device, "vkCmdSetScissorWithCount");
    vtable.vkCmdBindVertexBuffers2 = xx vkGetDeviceProcAddr(device, "vkCmdBindVertexBuffers2");
    vtable.vkCmdSetDepthTestEnable = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthTestEnable");
    vtable.vkCmdSetDepthWriteEnable = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthWriteEnable");
    vtable.vkCmdSetDepthCompareOp = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthCompareOp");
    vtable.vkCmdSetDepthBoundsTestEnable = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthBoundsTestEnable");
    vtable.vkCmdSetStencilTestEnable = xx vkGetDeviceProcAddr(device, "vkCmdSetStencilTestEnable");
    vtable.vkCmdSetStencilOp = xx vkGetDeviceProcAddr(device, "vkCmdSetStencilOp");
    vtable.vkCmdSetRasterizerDiscardEnable = xx vkGetDeviceProcAddr(device, "vkCmdSetRasterizerDiscardEnable");
    vtable.vkCmdSetDepthBiasEnable = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthBiasEnable");
    vtable.vkCmdSetPrimitiveRestartEnable = xx vkGetDeviceProcAddr(device, "vkCmdSetPrimitiveRestartEnable");
    vtable.vkGetDeviceBufferMemoryRequirements = xx vkGetDeviceProcAddr(device, "vkGetDeviceBufferMemoryRequirements");
    vtable.vkGetDeviceImageMemoryRequirements = xx vkGetDeviceProcAddr(device, "vkGetDeviceImageMemoryRequirements");
    vtable.vkGetDeviceImageSparseMemoryRequirements = xx vkGetDeviceProcAddr(device, "vkGetDeviceImageSparseMemoryRequirements");
    vtable.vkCmdSetLineStipple = xx vkGetDeviceProcAddr(device, "vkCmdSetLineStipple");
    vtable.vkMapMemory2 = xx vkGetDeviceProcAddr(device, "vkMapMemory2");
    vtable.vkUnmapMemory2 = xx vkGetDeviceProcAddr(device, "vkUnmapMemory2");
    vtable.vkCmdBindIndexBuffer2 = xx vkGetDeviceProcAddr(device, "vkCmdBindIndexBuffer2");
    vtable.vkGetRenderingAreaGranularity = xx vkGetDeviceProcAddr(device, "vkGetRenderingAreaGranularity");
    vtable.vkGetDeviceImageSubresourceLayout = xx vkGetDeviceProcAddr(device, "vkGetDeviceImageSubresourceLayout");
    vtable.vkGetImageSubresourceLayout2 = xx vkGetDeviceProcAddr(device, "vkGetImageSubresourceLayout2");
    vtable.vkCmdPushDescriptorSet = xx vkGetDeviceProcAddr(device, "vkCmdPushDescriptorSet");
    vtable.vkCmdPushDescriptorSetWithTemplate = xx vkGetDeviceProcAddr(device, "vkCmdPushDescriptorSetWithTemplate");
    vtable.vkCmdSetRenderingAttachmentLocations = xx vkGetDeviceProcAddr(device, "vkCmdSetRenderingAttachmentLocations");
    vtable.vkCmdSetRenderingInputAttachmentIndices = xx vkGetDeviceProcAddr(device, "vkCmdSetRenderingInputAttachmentIndices");
    vtable.vkCmdBindDescriptorSets2 = xx vkGetDeviceProcAddr(device, "vkCmdBindDescriptorSets2");
    vtable.vkCmdPushConstants2 = xx vkGetDeviceProcAddr(device, "vkCmdPushConstants2");
    vtable.vkCmdPushDescriptorSet2 = xx vkGetDeviceProcAddr(device, "vkCmdPushDescriptorSet2");
    vtable.vkCmdPushDescriptorSetWithTemplate2 = xx vkGetDeviceProcAddr(device, "vkCmdPushDescriptorSetWithTemplate2");
    vtable.vkCopyMemoryToImage = xx vkGetDeviceProcAddr(device, "vkCopyMemoryToImage");
    vtable.vkCopyImageToMemory = xx vkGetDeviceProcAddr(device, "vkCopyImageToMemory");
    vtable.vkCopyImageToImage = xx vkGetDeviceProcAddr(device, "vkCopyImageToImage");
    vtable.vkTransitionImageLayout = xx vkGetDeviceProcAddr(device, "vkTransitionImageLayout");
    vtable.vkCreateSwapchainKHR = xx vkGetDeviceProcAddr(device, "vkCreateSwapchainKHR");
    vtable.vkDestroySwapchainKHR = xx vkGetDeviceProcAddr(device, "vkDestroySwapchainKHR");
    vtable.vkGetSwapchainImagesKHR = xx vkGetDeviceProcAddr(device, "vkGetSwapchainImagesKHR");
    vtable.vkAcquireNextImageKHR = xx vkGetDeviceProcAddr(device, "vkAcquireNextImageKHR");
    vtable.vkQueuePresentKHR = xx vkGetDeviceProcAddr(device, "vkQueuePresentKHR");
    vtable.vkGetDeviceGroupPresentCapabilitiesKHR = xx vkGetDeviceProcAddr(device, "vkGetDeviceGroupPresentCapabilitiesKHR");
    vtable.vkGetDeviceGroupSurfacePresentModesKHR = xx vkGetDeviceProcAddr(device, "vkGetDeviceGroupSurfacePresentModesKHR");
    vtable.vkAcquireNextImage2KHR = xx vkGetDeviceProcAddr(device, "vkAcquireNextImage2KHR");
    vtable.vkCreateSharedSwapchainsKHR = xx vkGetDeviceProcAddr(device, "vkCreateSharedSwapchainsKHR");
    vtable.vkCreateVideoSessionKHR = xx vkGetDeviceProcAddr(device, "vkCreateVideoSessionKHR");
    vtable.vkDestroyVideoSessionKHR = xx vkGetDeviceProcAddr(device, "vkDestroyVideoSessionKHR");
    vtable.vkGetVideoSessionMemoryRequirementsKHR = xx vkGetDeviceProcAddr(device, "vkGetVideoSessionMemoryRequirementsKHR");
    vtable.vkBindVideoSessionMemoryKHR = xx vkGetDeviceProcAddr(device, "vkBindVideoSessionMemoryKHR");
    vtable.vkCreateVideoSessionParametersKHR = xx vkGetDeviceProcAddr(device, "vkCreateVideoSessionParametersKHR");
    vtable.vkUpdateVideoSessionParametersKHR = xx vkGetDeviceProcAddr(device, "vkUpdateVideoSessionParametersKHR");
    vtable.vkDestroyVideoSessionParametersKHR = xx vkGetDeviceProcAddr(device, "vkDestroyVideoSessionParametersKHR");
    vtable.vkCmdBeginVideoCodingKHR = xx vkGetDeviceProcAddr(device, "vkCmdBeginVideoCodingKHR");
    vtable.vkCmdEndVideoCodingKHR = xx vkGetDeviceProcAddr(device, "vkCmdEndVideoCodingKHR");
    vtable.vkCmdControlVideoCodingKHR = xx vkGetDeviceProcAddr(device, "vkCmdControlVideoCodingKHR");
    vtable.vkCmdDecodeVideoKHR = xx vkGetDeviceProcAddr(device, "vkCmdDecodeVideoKHR");
    vtable.vkCmdBeginRenderingKHR = xx vkGetDeviceProcAddr(device, "vkCmdBeginRenderingKHR");
    vtable.vkCmdEndRenderingKHR = xx vkGetDeviceProcAddr(device, "vkCmdEndRenderingKHR");
    vtable.vkGetDeviceGroupPeerMemoryFeaturesKHR = xx vkGetDeviceProcAddr(device, "vkGetDeviceGroupPeerMemoryFeaturesKHR");
    vtable.vkCmdSetDeviceMaskKHR = xx vkGetDeviceProcAddr(device, "vkCmdSetDeviceMaskKHR");
    vtable.vkCmdDispatchBaseKHR = xx vkGetDeviceProcAddr(device, "vkCmdDispatchBaseKHR");
    vtable.vkTrimCommandPoolKHR = xx vkGetDeviceProcAddr(device, "vkTrimCommandPoolKHR");
    vtable.vkGetMemoryFdKHR = xx vkGetDeviceProcAddr(device, "vkGetMemoryFdKHR");
    vtable.vkGetMemoryFdPropertiesKHR = xx vkGetDeviceProcAddr(device, "vkGetMemoryFdPropertiesKHR");
    vtable.vkImportSemaphoreFdKHR = xx vkGetDeviceProcAddr(device, "vkImportSemaphoreFdKHR");
    vtable.vkGetSemaphoreFdKHR = xx vkGetDeviceProcAddr(device, "vkGetSemaphoreFdKHR");
    vtable.vkCmdPushDescriptorSetKHR = xx vkGetDeviceProcAddr(device, "vkCmdPushDescriptorSetKHR");
    vtable.vkCmdPushDescriptorSetWithTemplateKHR = xx vkGetDeviceProcAddr(device, "vkCmdPushDescriptorSetWithTemplateKHR");
    vtable.vkCreateDescriptorUpdateTemplateKHR = xx vkGetDeviceProcAddr(device, "vkCreateDescriptorUpdateTemplateKHR");
    vtable.vkDestroyDescriptorUpdateTemplateKHR = xx vkGetDeviceProcAddr(device, "vkDestroyDescriptorUpdateTemplateKHR");
    vtable.vkUpdateDescriptorSetWithTemplateKHR = xx vkGetDeviceProcAddr(device, "vkUpdateDescriptorSetWithTemplateKHR");
    vtable.vkCreateRenderPass2KHR = xx vkGetDeviceProcAddr(device, "vkCreateRenderPass2KHR");
    vtable.vkCmdBeginRenderPass2KHR = xx vkGetDeviceProcAddr(device, "vkCmdBeginRenderPass2KHR");
    vtable.vkCmdNextSubpass2KHR = xx vkGetDeviceProcAddr(device, "vkCmdNextSubpass2KHR");
    vtable.vkCmdEndRenderPass2KHR = xx vkGetDeviceProcAddr(device, "vkCmdEndRenderPass2KHR");
    vtable.vkGetSwapchainStatusKHR = xx vkGetDeviceProcAddr(device, "vkGetSwapchainStatusKHR");
    vtable.vkImportFenceFdKHR = xx vkGetDeviceProcAddr(device, "vkImportFenceFdKHR");
    vtable.vkGetFenceFdKHR = xx vkGetDeviceProcAddr(device, "vkGetFenceFdKHR");
    vtable.vkAcquireProfilingLockKHR = xx vkGetDeviceProcAddr(device, "vkAcquireProfilingLockKHR");
    vtable.vkReleaseProfilingLockKHR = xx vkGetDeviceProcAddr(device, "vkReleaseProfilingLockKHR");
    vtable.vkGetImageMemoryRequirements2KHR = xx vkGetDeviceProcAddr(device, "vkGetImageMemoryRequirements2KHR");
    vtable.vkGetBufferMemoryRequirements2KHR = xx vkGetDeviceProcAddr(device, "vkGetBufferMemoryRequirements2KHR");
    vtable.vkGetImageSparseMemoryRequirements2KHR = xx vkGetDeviceProcAddr(device, "vkGetImageSparseMemoryRequirements2KHR");
    vtable.vkCreateSamplerYcbcrConversionKHR = xx vkGetDeviceProcAddr(device, "vkCreateSamplerYcbcrConversionKHR");
    vtable.vkDestroySamplerYcbcrConversionKHR = xx vkGetDeviceProcAddr(device, "vkDestroySamplerYcbcrConversionKHR");
    vtable.vkBindBufferMemory2KHR = xx vkGetDeviceProcAddr(device, "vkBindBufferMemory2KHR");
    vtable.vkBindImageMemory2KHR = xx vkGetDeviceProcAddr(device, "vkBindImageMemory2KHR");
    vtable.vkGetDescriptorSetLayoutSupportKHR = xx vkGetDeviceProcAddr(device, "vkGetDescriptorSetLayoutSupportKHR");
    vtable.vkCmdDrawIndirectCountKHR = xx vkGetDeviceProcAddr(device, "vkCmdDrawIndirectCountKHR");
    vtable.vkCmdDrawIndexedIndirectCountKHR = xx vkGetDeviceProcAddr(device, "vkCmdDrawIndexedIndirectCountKHR");
    vtable.vkGetSemaphoreCounterValueKHR = xx vkGetDeviceProcAddr(device, "vkGetSemaphoreCounterValueKHR");
    vtable.vkWaitSemaphoresKHR = xx vkGetDeviceProcAddr(device, "vkWaitSemaphoresKHR");
    vtable.vkSignalSemaphoreKHR = xx vkGetDeviceProcAddr(device, "vkSignalSemaphoreKHR");
    vtable.vkCmdSetFragmentShadingRateKHR = xx vkGetDeviceProcAddr(device, "vkCmdSetFragmentShadingRateKHR");
    vtable.vkCmdSetRenderingAttachmentLocationsKHR = xx vkGetDeviceProcAddr(device, "vkCmdSetRenderingAttachmentLocationsKHR");
    vtable.vkCmdSetRenderingInputAttachmentIndicesKHR = xx vkGetDeviceProcAddr(device, "vkCmdSetRenderingInputAttachmentIndicesKHR");
    vtable.vkWaitForPresentKHR = xx vkGetDeviceProcAddr(device, "vkWaitForPresentKHR");
    vtable.vkGetBufferDeviceAddressKHR = xx vkGetDeviceProcAddr(device, "vkGetBufferDeviceAddressKHR");
    vtable.vkGetBufferOpaqueCaptureAddressKHR = xx vkGetDeviceProcAddr(device, "vkGetBufferOpaqueCaptureAddressKHR");
    vtable.vkGetDeviceMemoryOpaqueCaptureAddressKHR = xx vkGetDeviceProcAddr(device, "vkGetDeviceMemoryOpaqueCaptureAddressKHR");
    vtable.vkCreateDeferredOperationKHR = xx vkGetDeviceProcAddr(device, "vkCreateDeferredOperationKHR");
    vtable.vkDestroyDeferredOperationKHR = xx vkGetDeviceProcAddr(device, "vkDestroyDeferredOperationKHR");
    vtable.vkGetDeferredOperationMaxConcurrencyKHR = xx vkGetDeviceProcAddr(device, "vkGetDeferredOperationMaxConcurrencyKHR");
    vtable.vkGetDeferredOperationResultKHR = xx vkGetDeviceProcAddr(device, "vkGetDeferredOperationResultKHR");
    vtable.vkDeferredOperationJoinKHR = xx vkGetDeviceProcAddr(device, "vkDeferredOperationJoinKHR");
    vtable.vkGetPipelineExecutablePropertiesKHR = xx vkGetDeviceProcAddr(device, "vkGetPipelineExecutablePropertiesKHR");
    vtable.vkGetPipelineExecutableStatisticsKHR = xx vkGetDeviceProcAddr(device, "vkGetPipelineExecutableStatisticsKHR");
    vtable.vkGetPipelineExecutableInternalRepresentationsKHR = xx vkGetDeviceProcAddr(device, "vkGetPipelineExecutableInternalRepresentationsKHR");
    vtable.vkMapMemory2KHR = xx vkGetDeviceProcAddr(device, "vkMapMemory2KHR");
    vtable.vkUnmapMemory2KHR = xx vkGetDeviceProcAddr(device, "vkUnmapMemory2KHR");
    vtable.vkGetEncodedVideoSessionParametersKHR = xx vkGetDeviceProcAddr(device, "vkGetEncodedVideoSessionParametersKHR");
    vtable.vkCmdEncodeVideoKHR = xx vkGetDeviceProcAddr(device, "vkCmdEncodeVideoKHR");
    vtable.vkCmdSetEvent2KHR = xx vkGetDeviceProcAddr(device, "vkCmdSetEvent2KHR");
    vtable.vkCmdResetEvent2KHR = xx vkGetDeviceProcAddr(device, "vkCmdResetEvent2KHR");
    vtable.vkCmdWaitEvents2KHR = xx vkGetDeviceProcAddr(device, "vkCmdWaitEvents2KHR");
    vtable.vkCmdPipelineBarrier2KHR = xx vkGetDeviceProcAddr(device, "vkCmdPipelineBarrier2KHR");
    vtable.vkCmdWriteTimestamp2KHR = xx vkGetDeviceProcAddr(device, "vkCmdWriteTimestamp2KHR");
    vtable.vkQueueSubmit2KHR = xx vkGetDeviceProcAddr(device, "vkQueueSubmit2KHR");
    vtable.vkCmdCopyBuffer2KHR = xx vkGetDeviceProcAddr(device, "vkCmdCopyBuffer2KHR");
    vtable.vkCmdCopyImage2KHR = xx vkGetDeviceProcAddr(device, "vkCmdCopyImage2KHR");
    vtable.vkCmdCopyBufferToImage2KHR = xx vkGetDeviceProcAddr(device, "vkCmdCopyBufferToImage2KHR");
    vtable.vkCmdCopyImageToBuffer2KHR = xx vkGetDeviceProcAddr(device, "vkCmdCopyImageToBuffer2KHR");
    vtable.vkCmdBlitImage2KHR = xx vkGetDeviceProcAddr(device, "vkCmdBlitImage2KHR");
    vtable.vkCmdResolveImage2KHR = xx vkGetDeviceProcAddr(device, "vkCmdResolveImage2KHR");
    vtable.vkCmdTraceRaysIndirect2KHR = xx vkGetDeviceProcAddr(device, "vkCmdTraceRaysIndirect2KHR");
    vtable.vkGetDeviceBufferMemoryRequirementsKHR = xx vkGetDeviceProcAddr(device, "vkGetDeviceBufferMemoryRequirementsKHR");
    vtable.vkGetDeviceImageMemoryRequirementsKHR = xx vkGetDeviceProcAddr(device, "vkGetDeviceImageMemoryRequirementsKHR");
    vtable.vkGetDeviceImageSparseMemoryRequirementsKHR = xx vkGetDeviceProcAddr(device, "vkGetDeviceImageSparseMemoryRequirementsKHR");
    vtable.vkCmdBindIndexBuffer2KHR = xx vkGetDeviceProcAddr(device, "vkCmdBindIndexBuffer2KHR");
    vtable.vkGetRenderingAreaGranularityKHR = xx vkGetDeviceProcAddr(device, "vkGetRenderingAreaGranularityKHR");
    vtable.vkGetDeviceImageSubresourceLayoutKHR = xx vkGetDeviceProcAddr(device, "vkGetDeviceImageSubresourceLayoutKHR");
    vtable.vkGetImageSubresourceLayout2KHR = xx vkGetDeviceProcAddr(device, "vkGetImageSubresourceLayout2KHR");
    vtable.vkCreatePipelineBinariesKHR = xx vkGetDeviceProcAddr(device, "vkCreatePipelineBinariesKHR");
    vtable.vkDestroyPipelineBinaryKHR = xx vkGetDeviceProcAddr(device, "vkDestroyPipelineBinaryKHR");
    vtable.vkGetPipelineKeyKHR = xx vkGetDeviceProcAddr(device, "vkGetPipelineKeyKHR");
    vtable.vkGetPipelineBinaryDataKHR = xx vkGetDeviceProcAddr(device, "vkGetPipelineBinaryDataKHR");
    vtable.vkReleaseCapturedPipelineDataKHR = xx vkGetDeviceProcAddr(device, "vkReleaseCapturedPipelineDataKHR");
    vtable.vkCmdSetLineStippleKHR = xx vkGetDeviceProcAddr(device, "vkCmdSetLineStippleKHR");
    vtable.vkGetCalibratedTimestampsKHR = xx vkGetDeviceProcAddr(device, "vkGetCalibratedTimestampsKHR");
    vtable.vkCmdBindDescriptorSets2KHR = xx vkGetDeviceProcAddr(device, "vkCmdBindDescriptorSets2KHR");
    vtable.vkCmdPushConstants2KHR = xx vkGetDeviceProcAddr(device, "vkCmdPushConstants2KHR");
    vtable.vkCmdPushDescriptorSet2KHR = xx vkGetDeviceProcAddr(device, "vkCmdPushDescriptorSet2KHR");
    vtable.vkCmdPushDescriptorSetWithTemplate2KHR = xx vkGetDeviceProcAddr(device, "vkCmdPushDescriptorSetWithTemplate2KHR");
    vtable.vkCmdSetDescriptorBufferOffsets2EXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDescriptorBufferOffsets2EXT");
    vtable.vkCmdBindDescriptorBufferEmbeddedSamplers2EXT = xx vkGetDeviceProcAddr(device, "vkCmdBindDescriptorBufferEmbeddedSamplers2EXT");
    vtable.vkDebugMarkerSetObjectTagEXT = xx vkGetDeviceProcAddr(device, "vkDebugMarkerSetObjectTagEXT");
    vtable.vkDebugMarkerSetObjectNameEXT = xx vkGetDeviceProcAddr(device, "vkDebugMarkerSetObjectNameEXT");
    vtable.vkCmdDebugMarkerBeginEXT = xx vkGetDeviceProcAddr(device, "vkCmdDebugMarkerBeginEXT");
    vtable.vkCmdDebugMarkerEndEXT = xx vkGetDeviceProcAddr(device, "vkCmdDebugMarkerEndEXT");
    vtable.vkCmdDebugMarkerInsertEXT = xx vkGetDeviceProcAddr(device, "vkCmdDebugMarkerInsertEXT");
    vtable.vkCmdBindTransformFeedbackBuffersEXT = xx vkGetDeviceProcAddr(device, "vkCmdBindTransformFeedbackBuffersEXT");
    vtable.vkCmdBeginTransformFeedbackEXT = xx vkGetDeviceProcAddr(device, "vkCmdBeginTransformFeedbackEXT");
    vtable.vkCmdEndTransformFeedbackEXT = xx vkGetDeviceProcAddr(device, "vkCmdEndTransformFeedbackEXT");
    vtable.vkCmdBeginQueryIndexedEXT = xx vkGetDeviceProcAddr(device, "vkCmdBeginQueryIndexedEXT");
    vtable.vkCmdEndQueryIndexedEXT = xx vkGetDeviceProcAddr(device, "vkCmdEndQueryIndexedEXT");
    vtable.vkCmdDrawIndirectByteCountEXT = xx vkGetDeviceProcAddr(device, "vkCmdDrawIndirectByteCountEXT");
    vtable.vkCreateCuModuleNVX = xx vkGetDeviceProcAddr(device, "vkCreateCuModuleNVX");
    vtable.vkCreateCuFunctionNVX = xx vkGetDeviceProcAddr(device, "vkCreateCuFunctionNVX");
    vtable.vkDestroyCuModuleNVX = xx vkGetDeviceProcAddr(device, "vkDestroyCuModuleNVX");
    vtable.vkDestroyCuFunctionNVX = xx vkGetDeviceProcAddr(device, "vkDestroyCuFunctionNVX");
    vtable.vkCmdCuLaunchKernelNVX = xx vkGetDeviceProcAddr(device, "vkCmdCuLaunchKernelNVX");
    vtable.vkGetImageViewHandleNVX = xx vkGetDeviceProcAddr(device, "vkGetImageViewHandleNVX");
    vtable.vkGetImageViewHandle64NVX = xx vkGetDeviceProcAddr(device, "vkGetImageViewHandle64NVX");
    vtable.vkGetImageViewAddressNVX = xx vkGetDeviceProcAddr(device, "vkGetImageViewAddressNVX");
    vtable.vkCmdDrawIndirectCountAMD = xx vkGetDeviceProcAddr(device, "vkCmdDrawIndirectCountAMD");
    vtable.vkCmdDrawIndexedIndirectCountAMD = xx vkGetDeviceProcAddr(device, "vkCmdDrawIndexedIndirectCountAMD");
    vtable.vkGetShaderInfoAMD = xx vkGetDeviceProcAddr(device, "vkGetShaderInfoAMD");
    vtable.vkCmdBeginConditionalRenderingEXT = xx vkGetDeviceProcAddr(device, "vkCmdBeginConditionalRenderingEXT");
    vtable.vkCmdEndConditionalRenderingEXT = xx vkGetDeviceProcAddr(device, "vkCmdEndConditionalRenderingEXT");
    vtable.vkCmdSetViewportWScalingNV = xx vkGetDeviceProcAddr(device, "vkCmdSetViewportWScalingNV");
    vtable.vkDisplayPowerControlEXT = xx vkGetDeviceProcAddr(device, "vkDisplayPowerControlEXT");
    vtable.vkRegisterDeviceEventEXT = xx vkGetDeviceProcAddr(device, "vkRegisterDeviceEventEXT");
    vtable.vkRegisterDisplayEventEXT = xx vkGetDeviceProcAddr(device, "vkRegisterDisplayEventEXT");
    vtable.vkGetSwapchainCounterEXT = xx vkGetDeviceProcAddr(device, "vkGetSwapchainCounterEXT");
    vtable.vkGetRefreshCycleDurationGOOGLE = xx vkGetDeviceProcAddr(device, "vkGetRefreshCycleDurationGOOGLE");
    vtable.vkGetPastPresentationTimingGOOGLE = xx vkGetDeviceProcAddr(device, "vkGetPastPresentationTimingGOOGLE");
    vtable.vkCmdSetDiscardRectangleEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDiscardRectangleEXT");
    vtable.vkCmdSetDiscardRectangleEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDiscardRectangleEnableEXT");
    vtable.vkCmdSetDiscardRectangleModeEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDiscardRectangleModeEXT");
    vtable.vkSetHdrMetadataEXT = xx vkGetDeviceProcAddr(device, "vkSetHdrMetadataEXT");
    vtable.vkSetDebugUtilsObjectNameEXT = xx vkGetDeviceProcAddr(device, "vkSetDebugUtilsObjectNameEXT");
    vtable.vkSetDebugUtilsObjectTagEXT = xx vkGetDeviceProcAddr(device, "vkSetDebugUtilsObjectTagEXT");
    vtable.vkQueueBeginDebugUtilsLabelEXT = xx vkGetDeviceProcAddr(device, "vkQueueBeginDebugUtilsLabelEXT");
    vtable.vkQueueEndDebugUtilsLabelEXT = xx vkGetDeviceProcAddr(device, "vkQueueEndDebugUtilsLabelEXT");
    vtable.vkQueueInsertDebugUtilsLabelEXT = xx vkGetDeviceProcAddr(device, "vkQueueInsertDebugUtilsLabelEXT");
    vtable.vkCmdBeginDebugUtilsLabelEXT = xx vkGetDeviceProcAddr(device, "vkCmdBeginDebugUtilsLabelEXT");
    vtable.vkCmdEndDebugUtilsLabelEXT = xx vkGetDeviceProcAddr(device, "vkCmdEndDebugUtilsLabelEXT");
    vtable.vkCmdInsertDebugUtilsLabelEXT = xx vkGetDeviceProcAddr(device, "vkCmdInsertDebugUtilsLabelEXT");
    vtable.vkCmdSetSampleLocationsEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetSampleLocationsEXT");
    vtable.vkGetImageDrmFormatModifierPropertiesEXT = xx vkGetDeviceProcAddr(device, "vkGetImageDrmFormatModifierPropertiesEXT");
    vtable.vkCreateValidationCacheEXT = xx vkGetDeviceProcAddr(device, "vkCreateValidationCacheEXT");
    vtable.vkDestroyValidationCacheEXT = xx vkGetDeviceProcAddr(device, "vkDestroyValidationCacheEXT");
    vtable.vkMergeValidationCachesEXT = xx vkGetDeviceProcAddr(device, "vkMergeValidationCachesEXT");
    vtable.vkGetValidationCacheDataEXT = xx vkGetDeviceProcAddr(device, "vkGetValidationCacheDataEXT");
    vtable.vkCmdBindShadingRateImageNV = xx vkGetDeviceProcAddr(device, "vkCmdBindShadingRateImageNV");
    vtable.vkCmdSetViewportShadingRatePaletteNV = xx vkGetDeviceProcAddr(device, "vkCmdSetViewportShadingRatePaletteNV");
    vtable.vkCmdSetCoarseSampleOrderNV = xx vkGetDeviceProcAddr(device, "vkCmdSetCoarseSampleOrderNV");
    vtable.vkCreateAccelerationStructureNV = xx vkGetDeviceProcAddr(device, "vkCreateAccelerationStructureNV");
    vtable.vkDestroyAccelerationStructureNV = xx vkGetDeviceProcAddr(device, "vkDestroyAccelerationStructureNV");
    vtable.vkGetAccelerationStructureMemoryRequirementsNV = xx vkGetDeviceProcAddr(device, "vkGetAccelerationStructureMemoryRequirementsNV");
    vtable.vkBindAccelerationStructureMemoryNV = xx vkGetDeviceProcAddr(device, "vkBindAccelerationStructureMemoryNV");
    vtable.vkCmdBuildAccelerationStructureNV = xx vkGetDeviceProcAddr(device, "vkCmdBuildAccelerationStructureNV");
    vtable.vkCmdCopyAccelerationStructureNV = xx vkGetDeviceProcAddr(device, "vkCmdCopyAccelerationStructureNV");
    vtable.vkCmdTraceRaysNV = xx vkGetDeviceProcAddr(device, "vkCmdTraceRaysNV");
    vtable.vkCreateRayTracingPipelinesNV = xx vkGetDeviceProcAddr(device, "vkCreateRayTracingPipelinesNV");
    vtable.vkGetRayTracingShaderGroupHandlesKHR = xx vkGetDeviceProcAddr(device, "vkGetRayTracingShaderGroupHandlesKHR");
    vtable.vkGetRayTracingShaderGroupHandlesNV = xx vkGetDeviceProcAddr(device, "vkGetRayTracingShaderGroupHandlesNV");
    vtable.vkGetAccelerationStructureHandleNV = xx vkGetDeviceProcAddr(device, "vkGetAccelerationStructureHandleNV");
    vtable.vkCmdWriteAccelerationStructuresPropertiesNV = xx vkGetDeviceProcAddr(device, "vkCmdWriteAccelerationStructuresPropertiesNV");
    vtable.vkCompileDeferredNV = xx vkGetDeviceProcAddr(device, "vkCompileDeferredNV");
    vtable.vkGetMemoryHostPointerPropertiesEXT = xx vkGetDeviceProcAddr(device, "vkGetMemoryHostPointerPropertiesEXT");
    vtable.vkCmdWriteBufferMarkerAMD = xx vkGetDeviceProcAddr(device, "vkCmdWriteBufferMarkerAMD");
    vtable.vkCmdWriteBufferMarker2AMD = xx vkGetDeviceProcAddr(device, "vkCmdWriteBufferMarker2AMD");
    vtable.vkGetCalibratedTimestampsEXT = xx vkGetDeviceProcAddr(device, "vkGetCalibratedTimestampsEXT");
    vtable.vkCmdDrawMeshTasksNV = xx vkGetDeviceProcAddr(device, "vkCmdDrawMeshTasksNV");
    vtable.vkCmdDrawMeshTasksIndirectNV = xx vkGetDeviceProcAddr(device, "vkCmdDrawMeshTasksIndirectNV");
    vtable.vkCmdDrawMeshTasksIndirectCountNV = xx vkGetDeviceProcAddr(device, "vkCmdDrawMeshTasksIndirectCountNV");
    vtable.vkCmdSetExclusiveScissorEnableNV = xx vkGetDeviceProcAddr(device, "vkCmdSetExclusiveScissorEnableNV");
    vtable.vkCmdSetExclusiveScissorNV = xx vkGetDeviceProcAddr(device, "vkCmdSetExclusiveScissorNV");
    vtable.vkCmdSetCheckpointNV = xx vkGetDeviceProcAddr(device, "vkCmdSetCheckpointNV");
    vtable.vkGetQueueCheckpointDataNV = xx vkGetDeviceProcAddr(device, "vkGetQueueCheckpointDataNV");
    vtable.vkGetQueueCheckpointData2NV = xx vkGetDeviceProcAddr(device, "vkGetQueueCheckpointData2NV");
    vtable.vkInitializePerformanceApiINTEL = xx vkGetDeviceProcAddr(device, "vkInitializePerformanceApiINTEL");
    vtable.vkUninitializePerformanceApiINTEL = xx vkGetDeviceProcAddr(device, "vkUninitializePerformanceApiINTEL");
    vtable.vkCmdSetPerformanceMarkerINTEL = xx vkGetDeviceProcAddr(device, "vkCmdSetPerformanceMarkerINTEL");
    vtable.vkCmdSetPerformanceStreamMarkerINTEL = xx vkGetDeviceProcAddr(device, "vkCmdSetPerformanceStreamMarkerINTEL");
    vtable.vkCmdSetPerformanceOverrideINTEL = xx vkGetDeviceProcAddr(device, "vkCmdSetPerformanceOverrideINTEL");
    vtable.vkAcquirePerformanceConfigurationINTEL = xx vkGetDeviceProcAddr(device, "vkAcquirePerformanceConfigurationINTEL");
    vtable.vkReleasePerformanceConfigurationINTEL = xx vkGetDeviceProcAddr(device, "vkReleasePerformanceConfigurationINTEL");
    vtable.vkQueueSetPerformanceConfigurationINTEL = xx vkGetDeviceProcAddr(device, "vkQueueSetPerformanceConfigurationINTEL");
    vtable.vkGetPerformanceParameterINTEL = xx vkGetDeviceProcAddr(device, "vkGetPerformanceParameterINTEL");
    vtable.vkSetLocalDimmingAMD = xx vkGetDeviceProcAddr(device, "vkSetLocalDimmingAMD");
    vtable.vkGetBufferDeviceAddressEXT = xx vkGetDeviceProcAddr(device, "vkGetBufferDeviceAddressEXT");
    vtable.vkCmdSetLineStippleEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetLineStippleEXT");
    vtable.vkResetQueryPoolEXT = xx vkGetDeviceProcAddr(device, "vkResetQueryPoolEXT");
    vtable.vkCmdSetCullModeEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetCullModeEXT");
    vtable.vkCmdSetFrontFaceEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetFrontFaceEXT");
    vtable.vkCmdSetPrimitiveTopologyEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetPrimitiveTopologyEXT");
    vtable.vkCmdSetViewportWithCountEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetViewportWithCountEXT");
    vtable.vkCmdSetScissorWithCountEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetScissorWithCountEXT");
    vtable.vkCmdBindVertexBuffers2EXT = xx vkGetDeviceProcAddr(device, "vkCmdBindVertexBuffers2EXT");
    vtable.vkCmdSetDepthTestEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthTestEnableEXT");
    vtable.vkCmdSetDepthWriteEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthWriteEnableEXT");
    vtable.vkCmdSetDepthCompareOpEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthCompareOpEXT");
    vtable.vkCmdSetDepthBoundsTestEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthBoundsTestEnableEXT");
    vtable.vkCmdSetStencilTestEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetStencilTestEnableEXT");
    vtable.vkCmdSetStencilOpEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetStencilOpEXT");
    vtable.vkCopyMemoryToImageEXT = xx vkGetDeviceProcAddr(device, "vkCopyMemoryToImageEXT");
    vtable.vkCopyImageToMemoryEXT = xx vkGetDeviceProcAddr(device, "vkCopyImageToMemoryEXT");
    vtable.vkCopyImageToImageEXT = xx vkGetDeviceProcAddr(device, "vkCopyImageToImageEXT");
    vtable.vkTransitionImageLayoutEXT = xx vkGetDeviceProcAddr(device, "vkTransitionImageLayoutEXT");
    vtable.vkGetImageSubresourceLayout2EXT = xx vkGetDeviceProcAddr(device, "vkGetImageSubresourceLayout2EXT");
    vtable.vkReleaseSwapchainImagesEXT = xx vkGetDeviceProcAddr(device, "vkReleaseSwapchainImagesEXT");
    vtable.vkGetGeneratedCommandsMemoryRequirementsNV = xx vkGetDeviceProcAddr(device, "vkGetGeneratedCommandsMemoryRequirementsNV");
    vtable.vkCmdPreprocessGeneratedCommandsNV = xx vkGetDeviceProcAddr(device, "vkCmdPreprocessGeneratedCommandsNV");
    vtable.vkCmdExecuteGeneratedCommandsNV = xx vkGetDeviceProcAddr(device, "vkCmdExecuteGeneratedCommandsNV");
    vtable.vkCmdBindPipelineShaderGroupNV = xx vkGetDeviceProcAddr(device, "vkCmdBindPipelineShaderGroupNV");
    vtable.vkCreateIndirectCommandsLayoutNV = xx vkGetDeviceProcAddr(device, "vkCreateIndirectCommandsLayoutNV");
    vtable.vkDestroyIndirectCommandsLayoutNV = xx vkGetDeviceProcAddr(device, "vkDestroyIndirectCommandsLayoutNV");
    vtable.vkCmdSetDepthBias2EXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthBias2EXT");
    vtable.vkCreatePrivateDataSlotEXT = xx vkGetDeviceProcAddr(device, "vkCreatePrivateDataSlotEXT");
    vtable.vkDestroyPrivateDataSlotEXT = xx vkGetDeviceProcAddr(device, "vkDestroyPrivateDataSlotEXT");
    vtable.vkSetPrivateDataEXT = xx vkGetDeviceProcAddr(device, "vkSetPrivateDataEXT");
    vtable.vkGetPrivateDataEXT = xx vkGetDeviceProcAddr(device, "vkGetPrivateDataEXT");
    vtable.vkCreateCudaModuleNV = xx vkGetDeviceProcAddr(device, "vkCreateCudaModuleNV");
    vtable.vkGetCudaModuleCacheNV = xx vkGetDeviceProcAddr(device, "vkGetCudaModuleCacheNV");
    vtable.vkCreateCudaFunctionNV = xx vkGetDeviceProcAddr(device, "vkCreateCudaFunctionNV");
    vtable.vkDestroyCudaModuleNV = xx vkGetDeviceProcAddr(device, "vkDestroyCudaModuleNV");
    vtable.vkDestroyCudaFunctionNV = xx vkGetDeviceProcAddr(device, "vkDestroyCudaFunctionNV");
    vtable.vkCmdCudaLaunchKernelNV = xx vkGetDeviceProcAddr(device, "vkCmdCudaLaunchKernelNV");
    vtable.vkCmdDispatchTileQCOM = xx vkGetDeviceProcAddr(device, "vkCmdDispatchTileQCOM");
    vtable.vkCmdBeginPerTileExecutionQCOM = xx vkGetDeviceProcAddr(device, "vkCmdBeginPerTileExecutionQCOM");
    vtable.vkCmdEndPerTileExecutionQCOM = xx vkGetDeviceProcAddr(device, "vkCmdEndPerTileExecutionQCOM");
    vtable.vkGetDescriptorSetLayoutSizeEXT = xx vkGetDeviceProcAddr(device, "vkGetDescriptorSetLayoutSizeEXT");
    vtable.vkGetDescriptorSetLayoutBindingOffsetEXT = xx vkGetDeviceProcAddr(device, "vkGetDescriptorSetLayoutBindingOffsetEXT");
    vtable.vkGetDescriptorEXT = xx vkGetDeviceProcAddr(device, "vkGetDescriptorEXT");
    vtable.vkCmdBindDescriptorBuffersEXT = xx vkGetDeviceProcAddr(device, "vkCmdBindDescriptorBuffersEXT");
    vtable.vkCmdSetDescriptorBufferOffsetsEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDescriptorBufferOffsetsEXT");
    vtable.vkCmdBindDescriptorBufferEmbeddedSamplersEXT = xx vkGetDeviceProcAddr(device, "vkCmdBindDescriptorBufferEmbeddedSamplersEXT");
    vtable.vkGetBufferOpaqueCaptureDescriptorDataEXT = xx vkGetDeviceProcAddr(device, "vkGetBufferOpaqueCaptureDescriptorDataEXT");
    vtable.vkGetImageOpaqueCaptureDescriptorDataEXT = xx vkGetDeviceProcAddr(device, "vkGetImageOpaqueCaptureDescriptorDataEXT");
    vtable.vkGetImageViewOpaqueCaptureDescriptorDataEXT = xx vkGetDeviceProcAddr(device, "vkGetImageViewOpaqueCaptureDescriptorDataEXT");
    vtable.vkGetSamplerOpaqueCaptureDescriptorDataEXT = xx vkGetDeviceProcAddr(device, "vkGetSamplerOpaqueCaptureDescriptorDataEXT");
    vtable.vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT = xx vkGetDeviceProcAddr(device, "vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT");
    vtable.vkCmdSetFragmentShadingRateEnumNV = xx vkGetDeviceProcAddr(device, "vkCmdSetFragmentShadingRateEnumNV");
    vtable.vkGetDeviceFaultInfoEXT = xx vkGetDeviceProcAddr(device, "vkGetDeviceFaultInfoEXT");
    vtable.vkCmdSetVertexInputEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetVertexInputEXT");
    vtable.vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI = xx vkGetDeviceProcAddr(device, "vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI");
    vtable.vkCmdSubpassShadingHUAWEI = xx vkGetDeviceProcAddr(device, "vkCmdSubpassShadingHUAWEI");
    vtable.vkCmdBindInvocationMaskHUAWEI = xx vkGetDeviceProcAddr(device, "vkCmdBindInvocationMaskHUAWEI");
    vtable.vkGetMemoryRemoteAddressNV = xx vkGetDeviceProcAddr(device, "vkGetMemoryRemoteAddressNV");
    vtable.vkGetPipelinePropertiesEXT = xx vkGetDeviceProcAddr(device, "vkGetPipelinePropertiesEXT");
    vtable.vkCmdSetPatchControlPointsEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetPatchControlPointsEXT");
    vtable.vkCmdSetRasterizerDiscardEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetRasterizerDiscardEnableEXT");
    vtable.vkCmdSetDepthBiasEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthBiasEnableEXT");
    vtable.vkCmdSetLogicOpEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetLogicOpEXT");
    vtable.vkCmdSetPrimitiveRestartEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetPrimitiveRestartEnableEXT");
    vtable.vkCmdSetColorWriteEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetColorWriteEnableEXT");
    vtable.vkCmdDrawMultiEXT = xx vkGetDeviceProcAddr(device, "vkCmdDrawMultiEXT");
    vtable.vkCmdDrawMultiIndexedEXT = xx vkGetDeviceProcAddr(device, "vkCmdDrawMultiIndexedEXT");
    vtable.vkCreateMicromapEXT = xx vkGetDeviceProcAddr(device, "vkCreateMicromapEXT");
    vtable.vkDestroyMicromapEXT = xx vkGetDeviceProcAddr(device, "vkDestroyMicromapEXT");
    vtable.vkCmdBuildMicromapsEXT = xx vkGetDeviceProcAddr(device, "vkCmdBuildMicromapsEXT");
    vtable.vkBuildMicromapsEXT = xx vkGetDeviceProcAddr(device, "vkBuildMicromapsEXT");
    vtable.vkCopyMicromapEXT = xx vkGetDeviceProcAddr(device, "vkCopyMicromapEXT");
    vtable.vkCopyMicromapToMemoryEXT = xx vkGetDeviceProcAddr(device, "vkCopyMicromapToMemoryEXT");
    vtable.vkCopyMemoryToMicromapEXT = xx vkGetDeviceProcAddr(device, "vkCopyMemoryToMicromapEXT");
    vtable.vkWriteMicromapsPropertiesEXT = xx vkGetDeviceProcAddr(device, "vkWriteMicromapsPropertiesEXT");
    vtable.vkCmdCopyMicromapEXT = xx vkGetDeviceProcAddr(device, "vkCmdCopyMicromapEXT");
    vtable.vkCmdCopyMicromapToMemoryEXT = xx vkGetDeviceProcAddr(device, "vkCmdCopyMicromapToMemoryEXT");
    vtable.vkCmdCopyMemoryToMicromapEXT = xx vkGetDeviceProcAddr(device, "vkCmdCopyMemoryToMicromapEXT");
    vtable.vkCmdWriteMicromapsPropertiesEXT = xx vkGetDeviceProcAddr(device, "vkCmdWriteMicromapsPropertiesEXT");
    vtable.vkGetDeviceMicromapCompatibilityEXT = xx vkGetDeviceProcAddr(device, "vkGetDeviceMicromapCompatibilityEXT");
    vtable.vkGetMicromapBuildSizesEXT = xx vkGetDeviceProcAddr(device, "vkGetMicromapBuildSizesEXT");
    vtable.vkCmdDrawClusterHUAWEI = xx vkGetDeviceProcAddr(device, "vkCmdDrawClusterHUAWEI");
    vtable.vkCmdDrawClusterIndirectHUAWEI = xx vkGetDeviceProcAddr(device, "vkCmdDrawClusterIndirectHUAWEI");
    vtable.vkSetDeviceMemoryPriorityEXT = xx vkGetDeviceProcAddr(device, "vkSetDeviceMemoryPriorityEXT");
    vtable.vkGetDescriptorSetLayoutHostMappingInfoVALVE = xx vkGetDeviceProcAddr(device, "vkGetDescriptorSetLayoutHostMappingInfoVALVE");
    vtable.vkGetDescriptorSetHostMappingVALVE = xx vkGetDeviceProcAddr(device, "vkGetDescriptorSetHostMappingVALVE");
    vtable.vkCmdCopyMemoryIndirectNV = xx vkGetDeviceProcAddr(device, "vkCmdCopyMemoryIndirectNV");
    vtable.vkCmdCopyMemoryToImageIndirectNV = xx vkGetDeviceProcAddr(device, "vkCmdCopyMemoryToImageIndirectNV");
    vtable.vkCmdDecompressMemoryNV = xx vkGetDeviceProcAddr(device, "vkCmdDecompressMemoryNV");
    vtable.vkCmdDecompressMemoryIndirectCountNV = xx vkGetDeviceProcAddr(device, "vkCmdDecompressMemoryIndirectCountNV");
    vtable.vkGetPipelineIndirectMemoryRequirementsNV = xx vkGetDeviceProcAddr(device, "vkGetPipelineIndirectMemoryRequirementsNV");
    vtable.vkCmdUpdatePipelineIndirectBufferNV = xx vkGetDeviceProcAddr(device, "vkCmdUpdatePipelineIndirectBufferNV");
    vtable.vkGetPipelineIndirectDeviceAddressNV = xx vkGetDeviceProcAddr(device, "vkGetPipelineIndirectDeviceAddressNV");
    vtable.vkCmdSetDepthClampEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthClampEnableEXT");
    vtable.vkCmdSetPolygonModeEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetPolygonModeEXT");
    vtable.vkCmdSetRasterizationSamplesEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetRasterizationSamplesEXT");
    vtable.vkCmdSetSampleMaskEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetSampleMaskEXT");
    vtable.vkCmdSetAlphaToCoverageEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetAlphaToCoverageEnableEXT");
    vtable.vkCmdSetAlphaToOneEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetAlphaToOneEnableEXT");
    vtable.vkCmdSetLogicOpEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetLogicOpEnableEXT");
    vtable.vkCmdSetColorBlendEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetColorBlendEnableEXT");
    vtable.vkCmdSetColorBlendEquationEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetColorBlendEquationEXT");
    vtable.vkCmdSetColorWriteMaskEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetColorWriteMaskEXT");
    vtable.vkCmdSetTessellationDomainOriginEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetTessellationDomainOriginEXT");
    vtable.vkCmdSetRasterizationStreamEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetRasterizationStreamEXT");
    vtable.vkCmdSetConservativeRasterizationModeEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetConservativeRasterizationModeEXT");
    vtable.vkCmdSetExtraPrimitiveOverestimationSizeEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetExtraPrimitiveOverestimationSizeEXT");
    vtable.vkCmdSetDepthClipEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthClipEnableEXT");
    vtable.vkCmdSetSampleLocationsEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetSampleLocationsEnableEXT");
    vtable.vkCmdSetColorBlendAdvancedEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetColorBlendAdvancedEXT");
    vtable.vkCmdSetProvokingVertexModeEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetProvokingVertexModeEXT");
    vtable.vkCmdSetLineRasterizationModeEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetLineRasterizationModeEXT");
    vtable.vkCmdSetLineStippleEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetLineStippleEnableEXT");
    vtable.vkCmdSetDepthClipNegativeOneToOneEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthClipNegativeOneToOneEXT");
    vtable.vkCmdSetViewportWScalingEnableNV = xx vkGetDeviceProcAddr(device, "vkCmdSetViewportWScalingEnableNV");
    vtable.vkCmdSetViewportSwizzleNV = xx vkGetDeviceProcAddr(device, "vkCmdSetViewportSwizzleNV");
    vtable.vkCmdSetCoverageToColorEnableNV = xx vkGetDeviceProcAddr(device, "vkCmdSetCoverageToColorEnableNV");
    vtable.vkCmdSetCoverageToColorLocationNV = xx vkGetDeviceProcAddr(device, "vkCmdSetCoverageToColorLocationNV");
    vtable.vkCmdSetCoverageModulationModeNV = xx vkGetDeviceProcAddr(device, "vkCmdSetCoverageModulationModeNV");
    vtable.vkCmdSetCoverageModulationTableEnableNV = xx vkGetDeviceProcAddr(device, "vkCmdSetCoverageModulationTableEnableNV");
    vtable.vkCmdSetCoverageModulationTableNV = xx vkGetDeviceProcAddr(device, "vkCmdSetCoverageModulationTableNV");
    vtable.vkCmdSetShadingRateImageEnableNV = xx vkGetDeviceProcAddr(device, "vkCmdSetShadingRateImageEnableNV");
    vtable.vkCmdSetRepresentativeFragmentTestEnableNV = xx vkGetDeviceProcAddr(device, "vkCmdSetRepresentativeFragmentTestEnableNV");
    vtable.vkCmdSetCoverageReductionModeNV = xx vkGetDeviceProcAddr(device, "vkCmdSetCoverageReductionModeNV");
    vtable.vkGetShaderModuleIdentifierEXT = xx vkGetDeviceProcAddr(device, "vkGetShaderModuleIdentifierEXT");
    vtable.vkGetShaderModuleCreateInfoIdentifierEXT = xx vkGetDeviceProcAddr(device, "vkGetShaderModuleCreateInfoIdentifierEXT");
    vtable.vkCreateOpticalFlowSessionNV = xx vkGetDeviceProcAddr(device, "vkCreateOpticalFlowSessionNV");
    vtable.vkDestroyOpticalFlowSessionNV = xx vkGetDeviceProcAddr(device, "vkDestroyOpticalFlowSessionNV");
    vtable.vkBindOpticalFlowSessionImageNV = xx vkGetDeviceProcAddr(device, "vkBindOpticalFlowSessionImageNV");
    vtable.vkCmdOpticalFlowExecuteNV = xx vkGetDeviceProcAddr(device, "vkCmdOpticalFlowExecuteNV");
    vtable.vkAntiLagUpdateAMD = xx vkGetDeviceProcAddr(device, "vkAntiLagUpdateAMD");
    vtable.vkCreateShadersEXT = xx vkGetDeviceProcAddr(device, "vkCreateShadersEXT");
    vtable.vkDestroyShaderEXT = xx vkGetDeviceProcAddr(device, "vkDestroyShaderEXT");
    vtable.vkGetShaderBinaryDataEXT = xx vkGetDeviceProcAddr(device, "vkGetShaderBinaryDataEXT");
    vtable.vkCmdBindShadersEXT = xx vkGetDeviceProcAddr(device, "vkCmdBindShadersEXT");
    vtable.vkCmdSetDepthClampRangeEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthClampRangeEXT");
    vtable.vkGetFramebufferTilePropertiesQCOM = xx vkGetDeviceProcAddr(device, "vkGetFramebufferTilePropertiesQCOM");
    vtable.vkGetDynamicRenderingTilePropertiesQCOM = xx vkGetDeviceProcAddr(device, "vkGetDynamicRenderingTilePropertiesQCOM");
    vtable.vkConvertCooperativeVectorMatrixNV = xx vkGetDeviceProcAddr(device, "vkConvertCooperativeVectorMatrixNV");
    vtable.vkCmdConvertCooperativeVectorMatrixNV = xx vkGetDeviceProcAddr(device, "vkCmdConvertCooperativeVectorMatrixNV");
    vtable.vkSetLatencySleepModeNV = xx vkGetDeviceProcAddr(device, "vkSetLatencySleepModeNV");
    vtable.vkLatencySleepNV = xx vkGetDeviceProcAddr(device, "vkLatencySleepNV");
    vtable.vkSetLatencyMarkerNV = xx vkGetDeviceProcAddr(device, "vkSetLatencyMarkerNV");
    vtable.vkGetLatencyTimingsNV = xx vkGetDeviceProcAddr(device, "vkGetLatencyTimingsNV");
    vtable.vkQueueNotifyOutOfBandNV = xx vkGetDeviceProcAddr(device, "vkQueueNotifyOutOfBandNV");
    vtable.vkCmdSetAttachmentFeedbackLoopEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetAttachmentFeedbackLoopEnableEXT");
    vtable.vkCmdBindTileMemoryQCOM = xx vkGetDeviceProcAddr(device, "vkCmdBindTileMemoryQCOM");
    vtable.vkCreateExternalComputeQueueNV = xx vkGetDeviceProcAddr(device, "vkCreateExternalComputeQueueNV");
    vtable.vkDestroyExternalComputeQueueNV = xx vkGetDeviceProcAddr(device, "vkDestroyExternalComputeQueueNV");
    vtable.vkGetClusterAccelerationStructureBuildSizesNV = xx vkGetDeviceProcAddr(device, "vkGetClusterAccelerationStructureBuildSizesNV");
    vtable.vkCmdBuildClusterAccelerationStructureIndirectNV = xx vkGetDeviceProcAddr(device, "vkCmdBuildClusterAccelerationStructureIndirectNV");
    vtable.vkGetPartitionedAccelerationStructuresBuildSizesNV = xx vkGetDeviceProcAddr(device, "vkGetPartitionedAccelerationStructuresBuildSizesNV");
    vtable.vkCmdBuildPartitionedAccelerationStructuresNV = xx vkGetDeviceProcAddr(device, "vkCmdBuildPartitionedAccelerationStructuresNV");
    vtable.vkGetGeneratedCommandsMemoryRequirementsEXT = xx vkGetDeviceProcAddr(device, "vkGetGeneratedCommandsMemoryRequirementsEXT");
    vtable.vkCmdPreprocessGeneratedCommandsEXT = xx vkGetDeviceProcAddr(device, "vkCmdPreprocessGeneratedCommandsEXT");
    vtable.vkCmdExecuteGeneratedCommandsEXT = xx vkGetDeviceProcAddr(device, "vkCmdExecuteGeneratedCommandsEXT");
    vtable.vkCreateIndirectCommandsLayoutEXT = xx vkGetDeviceProcAddr(device, "vkCreateIndirectCommandsLayoutEXT");
    vtable.vkDestroyIndirectCommandsLayoutEXT = xx vkGetDeviceProcAddr(device, "vkDestroyIndirectCommandsLayoutEXT");
    vtable.vkCreateIndirectExecutionSetEXT = xx vkGetDeviceProcAddr(device, "vkCreateIndirectExecutionSetEXT");
    vtable.vkDestroyIndirectExecutionSetEXT = xx vkGetDeviceProcAddr(device, "vkDestroyIndirectExecutionSetEXT");
    vtable.vkUpdateIndirectExecutionSetPipelineEXT = xx vkGetDeviceProcAddr(device, "vkUpdateIndirectExecutionSetPipelineEXT");
    vtable.vkUpdateIndirectExecutionSetShaderEXT = xx vkGetDeviceProcAddr(device, "vkUpdateIndirectExecutionSetShaderEXT");
    vtable.vkCmdEndRendering2EXT = xx vkGetDeviceProcAddr(device, "vkCmdEndRendering2EXT");
    vtable.vkCreateAccelerationStructureKHR = xx vkGetDeviceProcAddr(device, "vkCreateAccelerationStructureKHR");
    vtable.vkDestroyAccelerationStructureKHR = xx vkGetDeviceProcAddr(device, "vkDestroyAccelerationStructureKHR");
    vtable.vkCmdBuildAccelerationStructuresKHR = xx vkGetDeviceProcAddr(device, "vkCmdBuildAccelerationStructuresKHR");
    vtable.vkCmdBuildAccelerationStructuresIndirectKHR = xx vkGetDeviceProcAddr(device, "vkCmdBuildAccelerationStructuresIndirectKHR");
    vtable.vkBuildAccelerationStructuresKHR = xx vkGetDeviceProcAddr(device, "vkBuildAccelerationStructuresKHR");
    vtable.vkCopyAccelerationStructureKHR = xx vkGetDeviceProcAddr(device, "vkCopyAccelerationStructureKHR");
    vtable.vkCopyAccelerationStructureToMemoryKHR = xx vkGetDeviceProcAddr(device, "vkCopyAccelerationStructureToMemoryKHR");
    vtable.vkCopyMemoryToAccelerationStructureKHR = xx vkGetDeviceProcAddr(device, "vkCopyMemoryToAccelerationStructureKHR");
    vtable.vkWriteAccelerationStructuresPropertiesKHR = xx vkGetDeviceProcAddr(device, "vkWriteAccelerationStructuresPropertiesKHR");
    vtable.vkCmdCopyAccelerationStructureKHR = xx vkGetDeviceProcAddr(device, "vkCmdCopyAccelerationStructureKHR");
    vtable.vkCmdCopyAccelerationStructureToMemoryKHR = xx vkGetDeviceProcAddr(device, "vkCmdCopyAccelerationStructureToMemoryKHR");
    vtable.vkCmdCopyMemoryToAccelerationStructureKHR = xx vkGetDeviceProcAddr(device, "vkCmdCopyMemoryToAccelerationStructureKHR");
    vtable.vkGetAccelerationStructureDeviceAddressKHR = xx vkGetDeviceProcAddr(device, "vkGetAccelerationStructureDeviceAddressKHR");
    vtable.vkCmdWriteAccelerationStructuresPropertiesKHR = xx vkGetDeviceProcAddr(device, "vkCmdWriteAccelerationStructuresPropertiesKHR");
    vtable.vkGetDeviceAccelerationStructureCompatibilityKHR = xx vkGetDeviceProcAddr(device, "vkGetDeviceAccelerationStructureCompatibilityKHR");
    vtable.vkGetAccelerationStructureBuildSizesKHR = xx vkGetDeviceProcAddr(device, "vkGetAccelerationStructureBuildSizesKHR");
    vtable.vkCmdTraceRaysKHR = xx vkGetDeviceProcAddr(device, "vkCmdTraceRaysKHR");
    vtable.vkCreateRayTracingPipelinesKHR = xx vkGetDeviceProcAddr(device, "vkCreateRayTracingPipelinesKHR");
    vtable.vkGetRayTracingCaptureReplayShaderGroupHandlesKHR = xx vkGetDeviceProcAddr(device, "vkGetRayTracingCaptureReplayShaderGroupHandlesKHR");
    vtable.vkCmdTraceRaysIndirectKHR = xx vkGetDeviceProcAddr(device, "vkCmdTraceRaysIndirectKHR");
    vtable.vkGetRayTracingShaderGroupStackSizeKHR = xx vkGetDeviceProcAddr(device, "vkGetRayTracingShaderGroupStackSizeKHR");
    vtable.vkCmdSetRayTracingPipelineStackSizeKHR = xx vkGetDeviceProcAddr(device, "vkCmdSetRayTracingPipelineStackSizeKHR");
    vtable.vkCmdDrawMeshTasksEXT = xx vkGetDeviceProcAddr(device, "vkCmdDrawMeshTasksEXT");
    vtable.vkCmdDrawMeshTasksIndirectEXT = xx vkGetDeviceProcAddr(device, "vkCmdDrawMeshTasksIndirectEXT");
    vtable.vkCmdDrawMeshTasksIndirectCountEXT = xx vkGetDeviceProcAddr(device, "vkCmdDrawMeshTasksIndirectCountEXT");
    vtable.vkGetAndroidHardwareBufferPropertiesANDROID = xx vkGetDeviceProcAddr(device, "vkGetAndroidHardwareBufferPropertiesANDROID");
    vtable.vkGetMemoryAndroidHardwareBufferANDROID = xx vkGetDeviceProcAddr(device, "vkGetMemoryAndroidHardwareBufferANDROID");
    vtable.vkCreateExecutionGraphPipelinesAMDX = xx vkGetDeviceProcAddr(device, "vkCreateExecutionGraphPipelinesAMDX");
    vtable.vkGetExecutionGraphPipelineScratchSizeAMDX = xx vkGetDeviceProcAddr(device, "vkGetExecutionGraphPipelineScratchSizeAMDX");
    vtable.vkGetExecutionGraphPipelineNodeIndexAMDX = xx vkGetDeviceProcAddr(device, "vkGetExecutionGraphPipelineNodeIndexAMDX");
    vtable.vkCmdInitializeGraphScratchMemoryAMDX = xx vkGetDeviceProcAddr(device, "vkCmdInitializeGraphScratchMemoryAMDX");
    vtable.vkCmdDispatchGraphAMDX = xx vkGetDeviceProcAddr(device, "vkCmdDispatchGraphAMDX");
    vtable.vkCmdDispatchGraphIndirectAMDX = xx vkGetDeviceProcAddr(device, "vkCmdDispatchGraphIndirectAMDX");
    vtable.vkCmdDispatchGraphIndirectCountAMDX = xx vkGetDeviceProcAddr(device, "vkCmdDispatchGraphIndirectCountAMDX");
}

load_device_proc_addresses :: (device: VkDevice) {
    vkDestroyDevice = xx vkGetDeviceProcAddr(device, "vkDestroyDevice");
    vkGetDeviceQueue = xx vkGetDeviceProcAddr(device, "vkGetDeviceQueue");
    vkQueueSubmit = xx vkGetDeviceProcAddr(device, "vkQueueSubmit");
    vkQueueWaitIdle = xx vkGetDeviceProcAddr(device, "vkQueueWaitIdle");
    vkDeviceWaitIdle = xx vkGetDeviceProcAddr(device, "vkDeviceWaitIdle");
    vkAllocateMemory = xx vkGetDeviceProcAddr(device, "vkAllocateMemory");
    vkFreeMemory = xx vkGetDeviceProcAddr(device, "vkFreeMemory");
    vkMapMemory = xx vkGetDeviceProcAddr(device, "vkMapMemory");
    vkUnmapMemory = xx vkGetDeviceProcAddr(device, "vkUnmapMemory");
    vkFlushMappedMemoryRanges = xx vkGetDeviceProcAddr(device, "vkFlushMappedMemoryRanges");
    vkInvalidateMappedMemoryRanges = xx vkGetDeviceProcAddr(device, "vkInvalidateMappedMemoryRanges");
    vkGetDeviceMemoryCommitment = xx vkGetDeviceProcAddr(device, "vkGetDeviceMemoryCommitment");
    vkBindBufferMemory = xx vkGetDeviceProcAddr(device, "vkBindBufferMemory");
    vkBindImageMemory = xx vkGetDeviceProcAddr(device, "vkBindImageMemory");
    vkGetBufferMemoryRequirements = xx vkGetDeviceProcAddr(device, "vkGetBufferMemoryRequirements");
    vkGetImageMemoryRequirements = xx vkGetDeviceProcAddr(device, "vkGetImageMemoryRequirements");
    vkGetImageSparseMemoryRequirements = xx vkGetDeviceProcAddr(device, "vkGetImageSparseMemoryRequirements");
    vkQueueBindSparse = xx vkGetDeviceProcAddr(device, "vkQueueBindSparse");
    vkCreateFence = xx vkGetDeviceProcAddr(device, "vkCreateFence");
    vkDestroyFence = xx vkGetDeviceProcAddr(device, "vkDestroyFence");
    vkResetFences = xx vkGetDeviceProcAddr(device, "vkResetFences");
    vkGetFenceStatus = xx vkGetDeviceProcAddr(device, "vkGetFenceStatus");
    vkWaitForFences = xx vkGetDeviceProcAddr(device, "vkWaitForFences");
    vkCreateSemaphore = xx vkGetDeviceProcAddr(device, "vkCreateSemaphore");
    vkDestroySemaphore = xx vkGetDeviceProcAddr(device, "vkDestroySemaphore");
    vkCreateEvent = xx vkGetDeviceProcAddr(device, "vkCreateEvent");
    vkDestroyEvent = xx vkGetDeviceProcAddr(device, "vkDestroyEvent");
    vkGetEventStatus = xx vkGetDeviceProcAddr(device, "vkGetEventStatus");
    vkSetEvent = xx vkGetDeviceProcAddr(device, "vkSetEvent");
    vkResetEvent = xx vkGetDeviceProcAddr(device, "vkResetEvent");
    vkCreateQueryPool = xx vkGetDeviceProcAddr(device, "vkCreateQueryPool");
    vkDestroyQueryPool = xx vkGetDeviceProcAddr(device, "vkDestroyQueryPool");
    vkGetQueryPoolResults = xx vkGetDeviceProcAddr(device, "vkGetQueryPoolResults");
    vkCreateBuffer = xx vkGetDeviceProcAddr(device, "vkCreateBuffer");
    vkDestroyBuffer = xx vkGetDeviceProcAddr(device, "vkDestroyBuffer");
    vkCreateBufferView = xx vkGetDeviceProcAddr(device, "vkCreateBufferView");
    vkDestroyBufferView = xx vkGetDeviceProcAddr(device, "vkDestroyBufferView");
    vkCreateImage = xx vkGetDeviceProcAddr(device, "vkCreateImage");
    vkDestroyImage = xx vkGetDeviceProcAddr(device, "vkDestroyImage");
    vkGetImageSubresourceLayout = xx vkGetDeviceProcAddr(device, "vkGetImageSubresourceLayout");
    vkCreateImageView = xx vkGetDeviceProcAddr(device, "vkCreateImageView");
    vkDestroyImageView = xx vkGetDeviceProcAddr(device, "vkDestroyImageView");
    vkCreateShaderModule = xx vkGetDeviceProcAddr(device, "vkCreateShaderModule");
    vkDestroyShaderModule = xx vkGetDeviceProcAddr(device, "vkDestroyShaderModule");
    vkCreatePipelineCache = xx vkGetDeviceProcAddr(device, "vkCreatePipelineCache");
    vkDestroyPipelineCache = xx vkGetDeviceProcAddr(device, "vkDestroyPipelineCache");
    vkGetPipelineCacheData = xx vkGetDeviceProcAddr(device, "vkGetPipelineCacheData");
    vkMergePipelineCaches = xx vkGetDeviceProcAddr(device, "vkMergePipelineCaches");
    vkCreateGraphicsPipelines = xx vkGetDeviceProcAddr(device, "vkCreateGraphicsPipelines");
    vkCreateComputePipelines = xx vkGetDeviceProcAddr(device, "vkCreateComputePipelines");
    vkDestroyPipeline = xx vkGetDeviceProcAddr(device, "vkDestroyPipeline");
    vkCreatePipelineLayout = xx vkGetDeviceProcAddr(device, "vkCreatePipelineLayout");
    vkDestroyPipelineLayout = xx vkGetDeviceProcAddr(device, "vkDestroyPipelineLayout");
    vkCreateSampler = xx vkGetDeviceProcAddr(device, "vkCreateSampler");
    vkDestroySampler = xx vkGetDeviceProcAddr(device, "vkDestroySampler");
    vkCreateDescriptorSetLayout = xx vkGetDeviceProcAddr(device, "vkCreateDescriptorSetLayout");
    vkDestroyDescriptorSetLayout = xx vkGetDeviceProcAddr(device, "vkDestroyDescriptorSetLayout");
    vkCreateDescriptorPool = xx vkGetDeviceProcAddr(device, "vkCreateDescriptorPool");
    vkDestroyDescriptorPool = xx vkGetDeviceProcAddr(device, "vkDestroyDescriptorPool");
    vkResetDescriptorPool = xx vkGetDeviceProcAddr(device, "vkResetDescriptorPool");
    vkAllocateDescriptorSets = xx vkGetDeviceProcAddr(device, "vkAllocateDescriptorSets");
    vkFreeDescriptorSets = xx vkGetDeviceProcAddr(device, "vkFreeDescriptorSets");
    vkUpdateDescriptorSets = xx vkGetDeviceProcAddr(device, "vkUpdateDescriptorSets");
    vkCreateFramebuffer = xx vkGetDeviceProcAddr(device, "vkCreateFramebuffer");
    vkDestroyFramebuffer = xx vkGetDeviceProcAddr(device, "vkDestroyFramebuffer");
    vkCreateRenderPass = xx vkGetDeviceProcAddr(device, "vkCreateRenderPass");
    vkDestroyRenderPass = xx vkGetDeviceProcAddr(device, "vkDestroyRenderPass");
    vkGetRenderAreaGranularity = xx vkGetDeviceProcAddr(device, "vkGetRenderAreaGranularity");
    vkCreateCommandPool = xx vkGetDeviceProcAddr(device, "vkCreateCommandPool");
    vkDestroyCommandPool = xx vkGetDeviceProcAddr(device, "vkDestroyCommandPool");
    vkResetCommandPool = xx vkGetDeviceProcAddr(device, "vkResetCommandPool");
    vkAllocateCommandBuffers = xx vkGetDeviceProcAddr(device, "vkAllocateCommandBuffers");
    vkFreeCommandBuffers = xx vkGetDeviceProcAddr(device, "vkFreeCommandBuffers");
    vkBeginCommandBuffer = xx vkGetDeviceProcAddr(device, "vkBeginCommandBuffer");
    vkEndCommandBuffer = xx vkGetDeviceProcAddr(device, "vkEndCommandBuffer");
    vkResetCommandBuffer = xx vkGetDeviceProcAddr(device, "vkResetCommandBuffer");
    vkCmdBindPipeline = xx vkGetDeviceProcAddr(device, "vkCmdBindPipeline");
    vkCmdSetViewport = xx vkGetDeviceProcAddr(device, "vkCmdSetViewport");
    vkCmdSetScissor = xx vkGetDeviceProcAddr(device, "vkCmdSetScissor");
    vkCmdSetLineWidth = xx vkGetDeviceProcAddr(device, "vkCmdSetLineWidth");
    vkCmdSetDepthBias = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthBias");
    vkCmdSetBlendConstants = xx vkGetDeviceProcAddr(device, "vkCmdSetBlendConstants");
    vkCmdSetDepthBounds = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthBounds");
    vkCmdSetStencilCompareMask = xx vkGetDeviceProcAddr(device, "vkCmdSetStencilCompareMask");
    vkCmdSetStencilWriteMask = xx vkGetDeviceProcAddr(device, "vkCmdSetStencilWriteMask");
    vkCmdSetStencilReference = xx vkGetDeviceProcAddr(device, "vkCmdSetStencilReference");
    vkCmdBindDescriptorSets = xx vkGetDeviceProcAddr(device, "vkCmdBindDescriptorSets");
    vkCmdBindIndexBuffer = xx vkGetDeviceProcAddr(device, "vkCmdBindIndexBuffer");
    vkCmdBindVertexBuffers = xx vkGetDeviceProcAddr(device, "vkCmdBindVertexBuffers");
    vkCmdDraw = xx vkGetDeviceProcAddr(device, "vkCmdDraw");
    vkCmdDrawIndexed = xx vkGetDeviceProcAddr(device, "vkCmdDrawIndexed");
    vkCmdDrawIndirect = xx vkGetDeviceProcAddr(device, "vkCmdDrawIndirect");
    vkCmdDrawIndexedIndirect = xx vkGetDeviceProcAddr(device, "vkCmdDrawIndexedIndirect");
    vkCmdDispatch = xx vkGetDeviceProcAddr(device, "vkCmdDispatch");
    vkCmdDispatchIndirect = xx vkGetDeviceProcAddr(device, "vkCmdDispatchIndirect");
    vkCmdCopyBuffer = xx vkGetDeviceProcAddr(device, "vkCmdCopyBuffer");
    vkCmdCopyImage = xx vkGetDeviceProcAddr(device, "vkCmdCopyImage");
    vkCmdBlitImage = xx vkGetDeviceProcAddr(device, "vkCmdBlitImage");
    vkCmdCopyBufferToImage = xx vkGetDeviceProcAddr(device, "vkCmdCopyBufferToImage");
    vkCmdCopyImageToBuffer = xx vkGetDeviceProcAddr(device, "vkCmdCopyImageToBuffer");
    vkCmdUpdateBuffer = xx vkGetDeviceProcAddr(device, "vkCmdUpdateBuffer");
    vkCmdFillBuffer = xx vkGetDeviceProcAddr(device, "vkCmdFillBuffer");
    vkCmdClearColorImage = xx vkGetDeviceProcAddr(device, "vkCmdClearColorImage");
    vkCmdClearDepthStencilImage = xx vkGetDeviceProcAddr(device, "vkCmdClearDepthStencilImage");
    vkCmdClearAttachments = xx vkGetDeviceProcAddr(device, "vkCmdClearAttachments");
    vkCmdResolveImage = xx vkGetDeviceProcAddr(device, "vkCmdResolveImage");
    vkCmdSetEvent = xx vkGetDeviceProcAddr(device, "vkCmdSetEvent");
    vkCmdResetEvent = xx vkGetDeviceProcAddr(device, "vkCmdResetEvent");
    vkCmdWaitEvents = xx vkGetDeviceProcAddr(device, "vkCmdWaitEvents");
    vkCmdPipelineBarrier = xx vkGetDeviceProcAddr(device, "vkCmdPipelineBarrier");
    vkCmdBeginQuery = xx vkGetDeviceProcAddr(device, "vkCmdBeginQuery");
    vkCmdEndQuery = xx vkGetDeviceProcAddr(device, "vkCmdEndQuery");
    vkCmdResetQueryPool = xx vkGetDeviceProcAddr(device, "vkCmdResetQueryPool");
    vkCmdWriteTimestamp = xx vkGetDeviceProcAddr(device, "vkCmdWriteTimestamp");
    vkCmdCopyQueryPoolResults = xx vkGetDeviceProcAddr(device, "vkCmdCopyQueryPoolResults");
    vkCmdPushConstants = xx vkGetDeviceProcAddr(device, "vkCmdPushConstants");
    vkCmdBeginRenderPass = xx vkGetDeviceProcAddr(device, "vkCmdBeginRenderPass");
    vkCmdNextSubpass = xx vkGetDeviceProcAddr(device, "vkCmdNextSubpass");
    vkCmdEndRenderPass = xx vkGetDeviceProcAddr(device, "vkCmdEndRenderPass");
    vkCmdExecuteCommands = xx vkGetDeviceProcAddr(device, "vkCmdExecuteCommands");
    vkBindBufferMemory2 = xx vkGetDeviceProcAddr(device, "vkBindBufferMemory2");
    vkBindImageMemory2 = xx vkGetDeviceProcAddr(device, "vkBindImageMemory2");
    vkGetDeviceGroupPeerMemoryFeatures = xx vkGetDeviceProcAddr(device, "vkGetDeviceGroupPeerMemoryFeatures");
    vkCmdSetDeviceMask = xx vkGetDeviceProcAddr(device, "vkCmdSetDeviceMask");
    vkCmdDispatchBase = xx vkGetDeviceProcAddr(device, "vkCmdDispatchBase");
    vkGetImageMemoryRequirements2 = xx vkGetDeviceProcAddr(device, "vkGetImageMemoryRequirements2");
    vkGetBufferMemoryRequirements2 = xx vkGetDeviceProcAddr(device, "vkGetBufferMemoryRequirements2");
    vkGetImageSparseMemoryRequirements2 = xx vkGetDeviceProcAddr(device, "vkGetImageSparseMemoryRequirements2");
    vkTrimCommandPool = xx vkGetDeviceProcAddr(device, "vkTrimCommandPool");
    vkGetDeviceQueue2 = xx vkGetDeviceProcAddr(device, "vkGetDeviceQueue2");
    vkCreateSamplerYcbcrConversion = xx vkGetDeviceProcAddr(device, "vkCreateSamplerYcbcrConversion");
    vkDestroySamplerYcbcrConversion = xx vkGetDeviceProcAddr(device, "vkDestroySamplerYcbcrConversion");
    vkCreateDescriptorUpdateTemplate = xx vkGetDeviceProcAddr(device, "vkCreateDescriptorUpdateTemplate");
    vkDestroyDescriptorUpdateTemplate = xx vkGetDeviceProcAddr(device, "vkDestroyDescriptorUpdateTemplate");
    vkUpdateDescriptorSetWithTemplate = xx vkGetDeviceProcAddr(device, "vkUpdateDescriptorSetWithTemplate");
    vkGetDescriptorSetLayoutSupport = xx vkGetDeviceProcAddr(device, "vkGetDescriptorSetLayoutSupport");
    vkCmdDrawIndirectCount = xx vkGetDeviceProcAddr(device, "vkCmdDrawIndirectCount");
    vkCmdDrawIndexedIndirectCount = xx vkGetDeviceProcAddr(device, "vkCmdDrawIndexedIndirectCount");
    vkCreateRenderPass2 = xx vkGetDeviceProcAddr(device, "vkCreateRenderPass2");
    vkCmdBeginRenderPass2 = xx vkGetDeviceProcAddr(device, "vkCmdBeginRenderPass2");
    vkCmdNextSubpass2 = xx vkGetDeviceProcAddr(device, "vkCmdNextSubpass2");
    vkCmdEndRenderPass2 = xx vkGetDeviceProcAddr(device, "vkCmdEndRenderPass2");
    vkResetQueryPool = xx vkGetDeviceProcAddr(device, "vkResetQueryPool");
    vkGetSemaphoreCounterValue = xx vkGetDeviceProcAddr(device, "vkGetSemaphoreCounterValue");
    vkWaitSemaphores = xx vkGetDeviceProcAddr(device, "vkWaitSemaphores");
    vkSignalSemaphore = xx vkGetDeviceProcAddr(device, "vkSignalSemaphore");
    vkGetBufferDeviceAddress = xx vkGetDeviceProcAddr(device, "vkGetBufferDeviceAddress");
    vkGetBufferOpaqueCaptureAddress = xx vkGetDeviceProcAddr(device, "vkGetBufferOpaqueCaptureAddress");
    vkGetDeviceMemoryOpaqueCaptureAddress = xx vkGetDeviceProcAddr(device, "vkGetDeviceMemoryOpaqueCaptureAddress");
    vkCreatePrivateDataSlot = xx vkGetDeviceProcAddr(device, "vkCreatePrivateDataSlot");
    vkDestroyPrivateDataSlot = xx vkGetDeviceProcAddr(device, "vkDestroyPrivateDataSlot");
    vkSetPrivateData = xx vkGetDeviceProcAddr(device, "vkSetPrivateData");
    vkGetPrivateData = xx vkGetDeviceProcAddr(device, "vkGetPrivateData");
    vkCmdSetEvent2 = xx vkGetDeviceProcAddr(device, "vkCmdSetEvent2");
    vkCmdResetEvent2 = xx vkGetDeviceProcAddr(device, "vkCmdResetEvent2");
    vkCmdWaitEvents2 = xx vkGetDeviceProcAddr(device, "vkCmdWaitEvents2");
    vkCmdPipelineBarrier2 = xx vkGetDeviceProcAddr(device, "vkCmdPipelineBarrier2");
    vkCmdWriteTimestamp2 = xx vkGetDeviceProcAddr(device, "vkCmdWriteTimestamp2");
    vkQueueSubmit2 = xx vkGetDeviceProcAddr(device, "vkQueueSubmit2");
    vkCmdCopyBuffer2 = xx vkGetDeviceProcAddr(device, "vkCmdCopyBuffer2");
    vkCmdCopyImage2 = xx vkGetDeviceProcAddr(device, "vkCmdCopyImage2");
    vkCmdCopyBufferToImage2 = xx vkGetDeviceProcAddr(device, "vkCmdCopyBufferToImage2");
    vkCmdCopyImageToBuffer2 = xx vkGetDeviceProcAddr(device, "vkCmdCopyImageToBuffer2");
    vkCmdBlitImage2 = xx vkGetDeviceProcAddr(device, "vkCmdBlitImage2");
    vkCmdResolveImage2 = xx vkGetDeviceProcAddr(device, "vkCmdResolveImage2");
    vkCmdBeginRendering = xx vkGetDeviceProcAddr(device, "vkCmdBeginRendering");
    vkCmdEndRendering = xx vkGetDeviceProcAddr(device, "vkCmdEndRendering");
    vkCmdSetCullMode = xx vkGetDeviceProcAddr(device, "vkCmdSetCullMode");
    vkCmdSetFrontFace = xx vkGetDeviceProcAddr(device, "vkCmdSetFrontFace");
    vkCmdSetPrimitiveTopology = xx vkGetDeviceProcAddr(device, "vkCmdSetPrimitiveTopology");
    vkCmdSetViewportWithCount = xx vkGetDeviceProcAddr(device, "vkCmdSetViewportWithCount");
    vkCmdSetScissorWithCount = xx vkGetDeviceProcAddr(device, "vkCmdSetScissorWithCount");
    vkCmdBindVertexBuffers2 = xx vkGetDeviceProcAddr(device, "vkCmdBindVertexBuffers2");
    vkCmdSetDepthTestEnable = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthTestEnable");
    vkCmdSetDepthWriteEnable = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthWriteEnable");
    vkCmdSetDepthCompareOp = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthCompareOp");
    vkCmdSetDepthBoundsTestEnable = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthBoundsTestEnable");
    vkCmdSetStencilTestEnable = xx vkGetDeviceProcAddr(device, "vkCmdSetStencilTestEnable");
    vkCmdSetStencilOp = xx vkGetDeviceProcAddr(device, "vkCmdSetStencilOp");
    vkCmdSetRasterizerDiscardEnable = xx vkGetDeviceProcAddr(device, "vkCmdSetRasterizerDiscardEnable");
    vkCmdSetDepthBiasEnable = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthBiasEnable");
    vkCmdSetPrimitiveRestartEnable = xx vkGetDeviceProcAddr(device, "vkCmdSetPrimitiveRestartEnable");
    vkGetDeviceBufferMemoryRequirements = xx vkGetDeviceProcAddr(device, "vkGetDeviceBufferMemoryRequirements");
    vkGetDeviceImageMemoryRequirements = xx vkGetDeviceProcAddr(device, "vkGetDeviceImageMemoryRequirements");
    vkGetDeviceImageSparseMemoryRequirements = xx vkGetDeviceProcAddr(device, "vkGetDeviceImageSparseMemoryRequirements");
    vkCmdSetLineStipple = xx vkGetDeviceProcAddr(device, "vkCmdSetLineStipple");
    vkMapMemory2 = xx vkGetDeviceProcAddr(device, "vkMapMemory2");
    vkUnmapMemory2 = xx vkGetDeviceProcAddr(device, "vkUnmapMemory2");
    vkCmdBindIndexBuffer2 = xx vkGetDeviceProcAddr(device, "vkCmdBindIndexBuffer2");
    vkGetRenderingAreaGranularity = xx vkGetDeviceProcAddr(device, "vkGetRenderingAreaGranularity");
    vkGetDeviceImageSubresourceLayout = xx vkGetDeviceProcAddr(device, "vkGetDeviceImageSubresourceLayout");
    vkGetImageSubresourceLayout2 = xx vkGetDeviceProcAddr(device, "vkGetImageSubresourceLayout2");
    vkCmdPushDescriptorSet = xx vkGetDeviceProcAddr(device, "vkCmdPushDescriptorSet");
    vkCmdPushDescriptorSetWithTemplate = xx vkGetDeviceProcAddr(device, "vkCmdPushDescriptorSetWithTemplate");
    vkCmdSetRenderingAttachmentLocations = xx vkGetDeviceProcAddr(device, "vkCmdSetRenderingAttachmentLocations");
    vkCmdSetRenderingInputAttachmentIndices = xx vkGetDeviceProcAddr(device, "vkCmdSetRenderingInputAttachmentIndices");
    vkCmdBindDescriptorSets2 = xx vkGetDeviceProcAddr(device, "vkCmdBindDescriptorSets2");
    vkCmdPushConstants2 = xx vkGetDeviceProcAddr(device, "vkCmdPushConstants2");
    vkCmdPushDescriptorSet2 = xx vkGetDeviceProcAddr(device, "vkCmdPushDescriptorSet2");
    vkCmdPushDescriptorSetWithTemplate2 = xx vkGetDeviceProcAddr(device, "vkCmdPushDescriptorSetWithTemplate2");
    vkCopyMemoryToImage = xx vkGetDeviceProcAddr(device, "vkCopyMemoryToImage");
    vkCopyImageToMemory = xx vkGetDeviceProcAddr(device, "vkCopyImageToMemory");
    vkCopyImageToImage = xx vkGetDeviceProcAddr(device, "vkCopyImageToImage");
    vkTransitionImageLayout = xx vkGetDeviceProcAddr(device, "vkTransitionImageLayout");
    vkCreateSwapchainKHR = xx vkGetDeviceProcAddr(device, "vkCreateSwapchainKHR");
    vkDestroySwapchainKHR = xx vkGetDeviceProcAddr(device, "vkDestroySwapchainKHR");
    vkGetSwapchainImagesKHR = xx vkGetDeviceProcAddr(device, "vkGetSwapchainImagesKHR");
    vkAcquireNextImageKHR = xx vkGetDeviceProcAddr(device, "vkAcquireNextImageKHR");
    vkQueuePresentKHR = xx vkGetDeviceProcAddr(device, "vkQueuePresentKHR");
    vkGetDeviceGroupPresentCapabilitiesKHR = xx vkGetDeviceProcAddr(device, "vkGetDeviceGroupPresentCapabilitiesKHR");
    vkGetDeviceGroupSurfacePresentModesKHR = xx vkGetDeviceProcAddr(device, "vkGetDeviceGroupSurfacePresentModesKHR");
    vkAcquireNextImage2KHR = xx vkGetDeviceProcAddr(device, "vkAcquireNextImage2KHR");
    vkCreateSharedSwapchainsKHR = xx vkGetDeviceProcAddr(device, "vkCreateSharedSwapchainsKHR");
    vkCreateVideoSessionKHR = xx vkGetDeviceProcAddr(device, "vkCreateVideoSessionKHR");
    vkDestroyVideoSessionKHR = xx vkGetDeviceProcAddr(device, "vkDestroyVideoSessionKHR");
    vkGetVideoSessionMemoryRequirementsKHR = xx vkGetDeviceProcAddr(device, "vkGetVideoSessionMemoryRequirementsKHR");
    vkBindVideoSessionMemoryKHR = xx vkGetDeviceProcAddr(device, "vkBindVideoSessionMemoryKHR");
    vkCreateVideoSessionParametersKHR = xx vkGetDeviceProcAddr(device, "vkCreateVideoSessionParametersKHR");
    vkUpdateVideoSessionParametersKHR = xx vkGetDeviceProcAddr(device, "vkUpdateVideoSessionParametersKHR");
    vkDestroyVideoSessionParametersKHR = xx vkGetDeviceProcAddr(device, "vkDestroyVideoSessionParametersKHR");
    vkCmdBeginVideoCodingKHR = xx vkGetDeviceProcAddr(device, "vkCmdBeginVideoCodingKHR");
    vkCmdEndVideoCodingKHR = xx vkGetDeviceProcAddr(device, "vkCmdEndVideoCodingKHR");
    vkCmdControlVideoCodingKHR = xx vkGetDeviceProcAddr(device, "vkCmdControlVideoCodingKHR");
    vkCmdDecodeVideoKHR = xx vkGetDeviceProcAddr(device, "vkCmdDecodeVideoKHR");
    vkCmdBeginRenderingKHR = xx vkGetDeviceProcAddr(device, "vkCmdBeginRenderingKHR");
    vkCmdEndRenderingKHR = xx vkGetDeviceProcAddr(device, "vkCmdEndRenderingKHR");
    vkGetDeviceGroupPeerMemoryFeaturesKHR = xx vkGetDeviceProcAddr(device, "vkGetDeviceGroupPeerMemoryFeaturesKHR");
    vkCmdSetDeviceMaskKHR = xx vkGetDeviceProcAddr(device, "vkCmdSetDeviceMaskKHR");
    vkCmdDispatchBaseKHR = xx vkGetDeviceProcAddr(device, "vkCmdDispatchBaseKHR");
    vkTrimCommandPoolKHR = xx vkGetDeviceProcAddr(device, "vkTrimCommandPoolKHR");
    vkGetMemoryFdKHR = xx vkGetDeviceProcAddr(device, "vkGetMemoryFdKHR");
    vkGetMemoryFdPropertiesKHR = xx vkGetDeviceProcAddr(device, "vkGetMemoryFdPropertiesKHR");
    vkImportSemaphoreFdKHR = xx vkGetDeviceProcAddr(device, "vkImportSemaphoreFdKHR");
    vkGetSemaphoreFdKHR = xx vkGetDeviceProcAddr(device, "vkGetSemaphoreFdKHR");
    vkCmdPushDescriptorSetKHR = xx vkGetDeviceProcAddr(device, "vkCmdPushDescriptorSetKHR");
    vkCmdPushDescriptorSetWithTemplateKHR = xx vkGetDeviceProcAddr(device, "vkCmdPushDescriptorSetWithTemplateKHR");
    vkCreateDescriptorUpdateTemplateKHR = xx vkGetDeviceProcAddr(device, "vkCreateDescriptorUpdateTemplateKHR");
    vkDestroyDescriptorUpdateTemplateKHR = xx vkGetDeviceProcAddr(device, "vkDestroyDescriptorUpdateTemplateKHR");
    vkUpdateDescriptorSetWithTemplateKHR = xx vkGetDeviceProcAddr(device, "vkUpdateDescriptorSetWithTemplateKHR");
    vkCreateRenderPass2KHR = xx vkGetDeviceProcAddr(device, "vkCreateRenderPass2KHR");
    vkCmdBeginRenderPass2KHR = xx vkGetDeviceProcAddr(device, "vkCmdBeginRenderPass2KHR");
    vkCmdNextSubpass2KHR = xx vkGetDeviceProcAddr(device, "vkCmdNextSubpass2KHR");
    vkCmdEndRenderPass2KHR = xx vkGetDeviceProcAddr(device, "vkCmdEndRenderPass2KHR");
    vkGetSwapchainStatusKHR = xx vkGetDeviceProcAddr(device, "vkGetSwapchainStatusKHR");
    vkImportFenceFdKHR = xx vkGetDeviceProcAddr(device, "vkImportFenceFdKHR");
    vkGetFenceFdKHR = xx vkGetDeviceProcAddr(device, "vkGetFenceFdKHR");
    vkAcquireProfilingLockKHR = xx vkGetDeviceProcAddr(device, "vkAcquireProfilingLockKHR");
    vkReleaseProfilingLockKHR = xx vkGetDeviceProcAddr(device, "vkReleaseProfilingLockKHR");
    vkGetImageMemoryRequirements2KHR = xx vkGetDeviceProcAddr(device, "vkGetImageMemoryRequirements2KHR");
    vkGetBufferMemoryRequirements2KHR = xx vkGetDeviceProcAddr(device, "vkGetBufferMemoryRequirements2KHR");
    vkGetImageSparseMemoryRequirements2KHR = xx vkGetDeviceProcAddr(device, "vkGetImageSparseMemoryRequirements2KHR");
    vkCreateSamplerYcbcrConversionKHR = xx vkGetDeviceProcAddr(device, "vkCreateSamplerYcbcrConversionKHR");
    vkDestroySamplerYcbcrConversionKHR = xx vkGetDeviceProcAddr(device, "vkDestroySamplerYcbcrConversionKHR");
    vkBindBufferMemory2KHR = xx vkGetDeviceProcAddr(device, "vkBindBufferMemory2KHR");
    vkBindImageMemory2KHR = xx vkGetDeviceProcAddr(device, "vkBindImageMemory2KHR");
    vkGetDescriptorSetLayoutSupportKHR = xx vkGetDeviceProcAddr(device, "vkGetDescriptorSetLayoutSupportKHR");
    vkCmdDrawIndirectCountKHR = xx vkGetDeviceProcAddr(device, "vkCmdDrawIndirectCountKHR");
    vkCmdDrawIndexedIndirectCountKHR = xx vkGetDeviceProcAddr(device, "vkCmdDrawIndexedIndirectCountKHR");
    vkGetSemaphoreCounterValueKHR = xx vkGetDeviceProcAddr(device, "vkGetSemaphoreCounterValueKHR");
    vkWaitSemaphoresKHR = xx vkGetDeviceProcAddr(device, "vkWaitSemaphoresKHR");
    vkSignalSemaphoreKHR = xx vkGetDeviceProcAddr(device, "vkSignalSemaphoreKHR");
    vkCmdSetFragmentShadingRateKHR = xx vkGetDeviceProcAddr(device, "vkCmdSetFragmentShadingRateKHR");
    vkCmdSetRenderingAttachmentLocationsKHR = xx vkGetDeviceProcAddr(device, "vkCmdSetRenderingAttachmentLocationsKHR");
    vkCmdSetRenderingInputAttachmentIndicesKHR = xx vkGetDeviceProcAddr(device, "vkCmdSetRenderingInputAttachmentIndicesKHR");
    vkWaitForPresentKHR = xx vkGetDeviceProcAddr(device, "vkWaitForPresentKHR");
    vkGetBufferDeviceAddressKHR = xx vkGetDeviceProcAddr(device, "vkGetBufferDeviceAddressKHR");
    vkGetBufferOpaqueCaptureAddressKHR = xx vkGetDeviceProcAddr(device, "vkGetBufferOpaqueCaptureAddressKHR");
    vkGetDeviceMemoryOpaqueCaptureAddressKHR = xx vkGetDeviceProcAddr(device, "vkGetDeviceMemoryOpaqueCaptureAddressKHR");
    vkCreateDeferredOperationKHR = xx vkGetDeviceProcAddr(device, "vkCreateDeferredOperationKHR");
    vkDestroyDeferredOperationKHR = xx vkGetDeviceProcAddr(device, "vkDestroyDeferredOperationKHR");
    vkGetDeferredOperationMaxConcurrencyKHR = xx vkGetDeviceProcAddr(device, "vkGetDeferredOperationMaxConcurrencyKHR");
    vkGetDeferredOperationResultKHR = xx vkGetDeviceProcAddr(device, "vkGetDeferredOperationResultKHR");
    vkDeferredOperationJoinKHR = xx vkGetDeviceProcAddr(device, "vkDeferredOperationJoinKHR");
    vkGetPipelineExecutablePropertiesKHR = xx vkGetDeviceProcAddr(device, "vkGetPipelineExecutablePropertiesKHR");
    vkGetPipelineExecutableStatisticsKHR = xx vkGetDeviceProcAddr(device, "vkGetPipelineExecutableStatisticsKHR");
    vkGetPipelineExecutableInternalRepresentationsKHR = xx vkGetDeviceProcAddr(device, "vkGetPipelineExecutableInternalRepresentationsKHR");
    vkMapMemory2KHR = xx vkGetDeviceProcAddr(device, "vkMapMemory2KHR");
    vkUnmapMemory2KHR = xx vkGetDeviceProcAddr(device, "vkUnmapMemory2KHR");
    vkGetEncodedVideoSessionParametersKHR = xx vkGetDeviceProcAddr(device, "vkGetEncodedVideoSessionParametersKHR");
    vkCmdEncodeVideoKHR = xx vkGetDeviceProcAddr(device, "vkCmdEncodeVideoKHR");
    vkCmdSetEvent2KHR = xx vkGetDeviceProcAddr(device, "vkCmdSetEvent2KHR");
    vkCmdResetEvent2KHR = xx vkGetDeviceProcAddr(device, "vkCmdResetEvent2KHR");
    vkCmdWaitEvents2KHR = xx vkGetDeviceProcAddr(device, "vkCmdWaitEvents2KHR");
    vkCmdPipelineBarrier2KHR = xx vkGetDeviceProcAddr(device, "vkCmdPipelineBarrier2KHR");
    vkCmdWriteTimestamp2KHR = xx vkGetDeviceProcAddr(device, "vkCmdWriteTimestamp2KHR");
    vkQueueSubmit2KHR = xx vkGetDeviceProcAddr(device, "vkQueueSubmit2KHR");
    vkCmdCopyBuffer2KHR = xx vkGetDeviceProcAddr(device, "vkCmdCopyBuffer2KHR");
    vkCmdCopyImage2KHR = xx vkGetDeviceProcAddr(device, "vkCmdCopyImage2KHR");
    vkCmdCopyBufferToImage2KHR = xx vkGetDeviceProcAddr(device, "vkCmdCopyBufferToImage2KHR");
    vkCmdCopyImageToBuffer2KHR = xx vkGetDeviceProcAddr(device, "vkCmdCopyImageToBuffer2KHR");
    vkCmdBlitImage2KHR = xx vkGetDeviceProcAddr(device, "vkCmdBlitImage2KHR");
    vkCmdResolveImage2KHR = xx vkGetDeviceProcAddr(device, "vkCmdResolveImage2KHR");
    vkCmdTraceRaysIndirect2KHR = xx vkGetDeviceProcAddr(device, "vkCmdTraceRaysIndirect2KHR");
    vkGetDeviceBufferMemoryRequirementsKHR = xx vkGetDeviceProcAddr(device, "vkGetDeviceBufferMemoryRequirementsKHR");
    vkGetDeviceImageMemoryRequirementsKHR = xx vkGetDeviceProcAddr(device, "vkGetDeviceImageMemoryRequirementsKHR");
    vkGetDeviceImageSparseMemoryRequirementsKHR = xx vkGetDeviceProcAddr(device, "vkGetDeviceImageSparseMemoryRequirementsKHR");
    vkCmdBindIndexBuffer2KHR = xx vkGetDeviceProcAddr(device, "vkCmdBindIndexBuffer2KHR");
    vkGetRenderingAreaGranularityKHR = xx vkGetDeviceProcAddr(device, "vkGetRenderingAreaGranularityKHR");
    vkGetDeviceImageSubresourceLayoutKHR = xx vkGetDeviceProcAddr(device, "vkGetDeviceImageSubresourceLayoutKHR");
    vkGetImageSubresourceLayout2KHR = xx vkGetDeviceProcAddr(device, "vkGetImageSubresourceLayout2KHR");
    vkCreatePipelineBinariesKHR = xx vkGetDeviceProcAddr(device, "vkCreatePipelineBinariesKHR");
    vkDestroyPipelineBinaryKHR = xx vkGetDeviceProcAddr(device, "vkDestroyPipelineBinaryKHR");
    vkGetPipelineKeyKHR = xx vkGetDeviceProcAddr(device, "vkGetPipelineKeyKHR");
    vkGetPipelineBinaryDataKHR = xx vkGetDeviceProcAddr(device, "vkGetPipelineBinaryDataKHR");
    vkReleaseCapturedPipelineDataKHR = xx vkGetDeviceProcAddr(device, "vkReleaseCapturedPipelineDataKHR");
    vkCmdSetLineStippleKHR = xx vkGetDeviceProcAddr(device, "vkCmdSetLineStippleKHR");
    vkGetCalibratedTimestampsKHR = xx vkGetDeviceProcAddr(device, "vkGetCalibratedTimestampsKHR");
    vkCmdBindDescriptorSets2KHR = xx vkGetDeviceProcAddr(device, "vkCmdBindDescriptorSets2KHR");
    vkCmdPushConstants2KHR = xx vkGetDeviceProcAddr(device, "vkCmdPushConstants2KHR");
    vkCmdPushDescriptorSet2KHR = xx vkGetDeviceProcAddr(device, "vkCmdPushDescriptorSet2KHR");
    vkCmdPushDescriptorSetWithTemplate2KHR = xx vkGetDeviceProcAddr(device, "vkCmdPushDescriptorSetWithTemplate2KHR");
    vkCmdSetDescriptorBufferOffsets2EXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDescriptorBufferOffsets2EXT");
    vkCmdBindDescriptorBufferEmbeddedSamplers2EXT = xx vkGetDeviceProcAddr(device, "vkCmdBindDescriptorBufferEmbeddedSamplers2EXT");
    vkDebugMarkerSetObjectTagEXT = xx vkGetDeviceProcAddr(device, "vkDebugMarkerSetObjectTagEXT");
    vkDebugMarkerSetObjectNameEXT = xx vkGetDeviceProcAddr(device, "vkDebugMarkerSetObjectNameEXT");
    vkCmdDebugMarkerBeginEXT = xx vkGetDeviceProcAddr(device, "vkCmdDebugMarkerBeginEXT");
    vkCmdDebugMarkerEndEXT = xx vkGetDeviceProcAddr(device, "vkCmdDebugMarkerEndEXT");
    vkCmdDebugMarkerInsertEXT = xx vkGetDeviceProcAddr(device, "vkCmdDebugMarkerInsertEXT");
    vkCmdBindTransformFeedbackBuffersEXT = xx vkGetDeviceProcAddr(device, "vkCmdBindTransformFeedbackBuffersEXT");
    vkCmdBeginTransformFeedbackEXT = xx vkGetDeviceProcAddr(device, "vkCmdBeginTransformFeedbackEXT");
    vkCmdEndTransformFeedbackEXT = xx vkGetDeviceProcAddr(device, "vkCmdEndTransformFeedbackEXT");
    vkCmdBeginQueryIndexedEXT = xx vkGetDeviceProcAddr(device, "vkCmdBeginQueryIndexedEXT");
    vkCmdEndQueryIndexedEXT = xx vkGetDeviceProcAddr(device, "vkCmdEndQueryIndexedEXT");
    vkCmdDrawIndirectByteCountEXT = xx vkGetDeviceProcAddr(device, "vkCmdDrawIndirectByteCountEXT");
    vkCreateCuModuleNVX = xx vkGetDeviceProcAddr(device, "vkCreateCuModuleNVX");
    vkCreateCuFunctionNVX = xx vkGetDeviceProcAddr(device, "vkCreateCuFunctionNVX");
    vkDestroyCuModuleNVX = xx vkGetDeviceProcAddr(device, "vkDestroyCuModuleNVX");
    vkDestroyCuFunctionNVX = xx vkGetDeviceProcAddr(device, "vkDestroyCuFunctionNVX");
    vkCmdCuLaunchKernelNVX = xx vkGetDeviceProcAddr(device, "vkCmdCuLaunchKernelNVX");
    vkGetImageViewHandleNVX = xx vkGetDeviceProcAddr(device, "vkGetImageViewHandleNVX");
    vkGetImageViewHandle64NVX = xx vkGetDeviceProcAddr(device, "vkGetImageViewHandle64NVX");
    vkGetImageViewAddressNVX = xx vkGetDeviceProcAddr(device, "vkGetImageViewAddressNVX");
    vkCmdDrawIndirectCountAMD = xx vkGetDeviceProcAddr(device, "vkCmdDrawIndirectCountAMD");
    vkCmdDrawIndexedIndirectCountAMD = xx vkGetDeviceProcAddr(device, "vkCmdDrawIndexedIndirectCountAMD");
    vkGetShaderInfoAMD = xx vkGetDeviceProcAddr(device, "vkGetShaderInfoAMD");
    vkCmdBeginConditionalRenderingEXT = xx vkGetDeviceProcAddr(device, "vkCmdBeginConditionalRenderingEXT");
    vkCmdEndConditionalRenderingEXT = xx vkGetDeviceProcAddr(device, "vkCmdEndConditionalRenderingEXT");
    vkCmdSetViewportWScalingNV = xx vkGetDeviceProcAddr(device, "vkCmdSetViewportWScalingNV");
    vkDisplayPowerControlEXT = xx vkGetDeviceProcAddr(device, "vkDisplayPowerControlEXT");
    vkRegisterDeviceEventEXT = xx vkGetDeviceProcAddr(device, "vkRegisterDeviceEventEXT");
    vkRegisterDisplayEventEXT = xx vkGetDeviceProcAddr(device, "vkRegisterDisplayEventEXT");
    vkGetSwapchainCounterEXT = xx vkGetDeviceProcAddr(device, "vkGetSwapchainCounterEXT");
    vkGetRefreshCycleDurationGOOGLE = xx vkGetDeviceProcAddr(device, "vkGetRefreshCycleDurationGOOGLE");
    vkGetPastPresentationTimingGOOGLE = xx vkGetDeviceProcAddr(device, "vkGetPastPresentationTimingGOOGLE");
    vkCmdSetDiscardRectangleEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDiscardRectangleEXT");
    vkCmdSetDiscardRectangleEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDiscardRectangleEnableEXT");
    vkCmdSetDiscardRectangleModeEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDiscardRectangleModeEXT");
    vkSetHdrMetadataEXT = xx vkGetDeviceProcAddr(device, "vkSetHdrMetadataEXT");
    vkSetDebugUtilsObjectNameEXT = xx vkGetDeviceProcAddr(device, "vkSetDebugUtilsObjectNameEXT");
    vkSetDebugUtilsObjectTagEXT = xx vkGetDeviceProcAddr(device, "vkSetDebugUtilsObjectTagEXT");
    vkQueueBeginDebugUtilsLabelEXT = xx vkGetDeviceProcAddr(device, "vkQueueBeginDebugUtilsLabelEXT");
    vkQueueEndDebugUtilsLabelEXT = xx vkGetDeviceProcAddr(device, "vkQueueEndDebugUtilsLabelEXT");
    vkQueueInsertDebugUtilsLabelEXT = xx vkGetDeviceProcAddr(device, "vkQueueInsertDebugUtilsLabelEXT");
    vkCmdBeginDebugUtilsLabelEXT = xx vkGetDeviceProcAddr(device, "vkCmdBeginDebugUtilsLabelEXT");
    vkCmdEndDebugUtilsLabelEXT = xx vkGetDeviceProcAddr(device, "vkCmdEndDebugUtilsLabelEXT");
    vkCmdInsertDebugUtilsLabelEXT = xx vkGetDeviceProcAddr(device, "vkCmdInsertDebugUtilsLabelEXT");
    vkCmdSetSampleLocationsEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetSampleLocationsEXT");
    vkGetImageDrmFormatModifierPropertiesEXT = xx vkGetDeviceProcAddr(device, "vkGetImageDrmFormatModifierPropertiesEXT");
    vkCreateValidationCacheEXT = xx vkGetDeviceProcAddr(device, "vkCreateValidationCacheEXT");
    vkDestroyValidationCacheEXT = xx vkGetDeviceProcAddr(device, "vkDestroyValidationCacheEXT");
    vkMergeValidationCachesEXT = xx vkGetDeviceProcAddr(device, "vkMergeValidationCachesEXT");
    vkGetValidationCacheDataEXT = xx vkGetDeviceProcAddr(device, "vkGetValidationCacheDataEXT");
    vkCmdBindShadingRateImageNV = xx vkGetDeviceProcAddr(device, "vkCmdBindShadingRateImageNV");
    vkCmdSetViewportShadingRatePaletteNV = xx vkGetDeviceProcAddr(device, "vkCmdSetViewportShadingRatePaletteNV");
    vkCmdSetCoarseSampleOrderNV = xx vkGetDeviceProcAddr(device, "vkCmdSetCoarseSampleOrderNV");
    vkCreateAccelerationStructureNV = xx vkGetDeviceProcAddr(device, "vkCreateAccelerationStructureNV");
    vkDestroyAccelerationStructureNV = xx vkGetDeviceProcAddr(device, "vkDestroyAccelerationStructureNV");
    vkGetAccelerationStructureMemoryRequirementsNV = xx vkGetDeviceProcAddr(device, "vkGetAccelerationStructureMemoryRequirementsNV");
    vkBindAccelerationStructureMemoryNV = xx vkGetDeviceProcAddr(device, "vkBindAccelerationStructureMemoryNV");
    vkCmdBuildAccelerationStructureNV = xx vkGetDeviceProcAddr(device, "vkCmdBuildAccelerationStructureNV");
    vkCmdCopyAccelerationStructureNV = xx vkGetDeviceProcAddr(device, "vkCmdCopyAccelerationStructureNV");
    vkCmdTraceRaysNV = xx vkGetDeviceProcAddr(device, "vkCmdTraceRaysNV");
    vkCreateRayTracingPipelinesNV = xx vkGetDeviceProcAddr(device, "vkCreateRayTracingPipelinesNV");
    vkGetRayTracingShaderGroupHandlesKHR = xx vkGetDeviceProcAddr(device, "vkGetRayTracingShaderGroupHandlesKHR");
    vkGetRayTracingShaderGroupHandlesNV = xx vkGetDeviceProcAddr(device, "vkGetRayTracingShaderGroupHandlesNV");
    vkGetAccelerationStructureHandleNV = xx vkGetDeviceProcAddr(device, "vkGetAccelerationStructureHandleNV");
    vkCmdWriteAccelerationStructuresPropertiesNV = xx vkGetDeviceProcAddr(device, "vkCmdWriteAccelerationStructuresPropertiesNV");
    vkCompileDeferredNV = xx vkGetDeviceProcAddr(device, "vkCompileDeferredNV");
    vkGetMemoryHostPointerPropertiesEXT = xx vkGetDeviceProcAddr(device, "vkGetMemoryHostPointerPropertiesEXT");
    vkCmdWriteBufferMarkerAMD = xx vkGetDeviceProcAddr(device, "vkCmdWriteBufferMarkerAMD");
    vkCmdWriteBufferMarker2AMD = xx vkGetDeviceProcAddr(device, "vkCmdWriteBufferMarker2AMD");
    vkGetCalibratedTimestampsEXT = xx vkGetDeviceProcAddr(device, "vkGetCalibratedTimestampsEXT");
    vkCmdDrawMeshTasksNV = xx vkGetDeviceProcAddr(device, "vkCmdDrawMeshTasksNV");
    vkCmdDrawMeshTasksIndirectNV = xx vkGetDeviceProcAddr(device, "vkCmdDrawMeshTasksIndirectNV");
    vkCmdDrawMeshTasksIndirectCountNV = xx vkGetDeviceProcAddr(device, "vkCmdDrawMeshTasksIndirectCountNV");
    vkCmdSetExclusiveScissorEnableNV = xx vkGetDeviceProcAddr(device, "vkCmdSetExclusiveScissorEnableNV");
    vkCmdSetExclusiveScissorNV = xx vkGetDeviceProcAddr(device, "vkCmdSetExclusiveScissorNV");
    vkCmdSetCheckpointNV = xx vkGetDeviceProcAddr(device, "vkCmdSetCheckpointNV");
    vkGetQueueCheckpointDataNV = xx vkGetDeviceProcAddr(device, "vkGetQueueCheckpointDataNV");
    vkGetQueueCheckpointData2NV = xx vkGetDeviceProcAddr(device, "vkGetQueueCheckpointData2NV");
    vkInitializePerformanceApiINTEL = xx vkGetDeviceProcAddr(device, "vkInitializePerformanceApiINTEL");
    vkUninitializePerformanceApiINTEL = xx vkGetDeviceProcAddr(device, "vkUninitializePerformanceApiINTEL");
    vkCmdSetPerformanceMarkerINTEL = xx vkGetDeviceProcAddr(device, "vkCmdSetPerformanceMarkerINTEL");
    vkCmdSetPerformanceStreamMarkerINTEL = xx vkGetDeviceProcAddr(device, "vkCmdSetPerformanceStreamMarkerINTEL");
    vkCmdSetPerformanceOverrideINTEL = xx vkGetDeviceProcAddr(device, "vkCmdSetPerformanceOverrideINTEL");
    vkAcquirePerformanceConfigurationINTEL = xx vkGetDeviceProcAddr(device, "vkAcquirePerformanceConfigurationINTEL");
    vkReleasePerformanceConfigurationINTEL = xx vkGetDeviceProcAddr(device, "vkReleasePerformanceConfigurationINTEL");
    vkQueueSetPerformanceConfigurationINTEL = xx vkGetDeviceProcAddr(device, "vkQueueSetPerformanceConfigurationINTEL");
    vkGetPerformanceParameterINTEL = xx vkGetDeviceProcAddr(device, "vkGetPerformanceParameterINTEL");
    vkSetLocalDimmingAMD = xx vkGetDeviceProcAddr(device, "vkSetLocalDimmingAMD");
    vkGetBufferDeviceAddressEXT = xx vkGetDeviceProcAddr(device, "vkGetBufferDeviceAddressEXT");
    vkCmdSetLineStippleEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetLineStippleEXT");
    vkResetQueryPoolEXT = xx vkGetDeviceProcAddr(device, "vkResetQueryPoolEXT");
    vkCmdSetCullModeEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetCullModeEXT");
    vkCmdSetFrontFaceEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetFrontFaceEXT");
    vkCmdSetPrimitiveTopologyEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetPrimitiveTopologyEXT");
    vkCmdSetViewportWithCountEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetViewportWithCountEXT");
    vkCmdSetScissorWithCountEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetScissorWithCountEXT");
    vkCmdBindVertexBuffers2EXT = xx vkGetDeviceProcAddr(device, "vkCmdBindVertexBuffers2EXT");
    vkCmdSetDepthTestEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthTestEnableEXT");
    vkCmdSetDepthWriteEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthWriteEnableEXT");
    vkCmdSetDepthCompareOpEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthCompareOpEXT");
    vkCmdSetDepthBoundsTestEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthBoundsTestEnableEXT");
    vkCmdSetStencilTestEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetStencilTestEnableEXT");
    vkCmdSetStencilOpEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetStencilOpEXT");
    vkCopyMemoryToImageEXT = xx vkGetDeviceProcAddr(device, "vkCopyMemoryToImageEXT");
    vkCopyImageToMemoryEXT = xx vkGetDeviceProcAddr(device, "vkCopyImageToMemoryEXT");
    vkCopyImageToImageEXT = xx vkGetDeviceProcAddr(device, "vkCopyImageToImageEXT");
    vkTransitionImageLayoutEXT = xx vkGetDeviceProcAddr(device, "vkTransitionImageLayoutEXT");
    vkGetImageSubresourceLayout2EXT = xx vkGetDeviceProcAddr(device, "vkGetImageSubresourceLayout2EXT");
    vkReleaseSwapchainImagesEXT = xx vkGetDeviceProcAddr(device, "vkReleaseSwapchainImagesEXT");
    vkGetGeneratedCommandsMemoryRequirementsNV = xx vkGetDeviceProcAddr(device, "vkGetGeneratedCommandsMemoryRequirementsNV");
    vkCmdPreprocessGeneratedCommandsNV = xx vkGetDeviceProcAddr(device, "vkCmdPreprocessGeneratedCommandsNV");
    vkCmdExecuteGeneratedCommandsNV = xx vkGetDeviceProcAddr(device, "vkCmdExecuteGeneratedCommandsNV");
    vkCmdBindPipelineShaderGroupNV = xx vkGetDeviceProcAddr(device, "vkCmdBindPipelineShaderGroupNV");
    vkCreateIndirectCommandsLayoutNV = xx vkGetDeviceProcAddr(device, "vkCreateIndirectCommandsLayoutNV");
    vkDestroyIndirectCommandsLayoutNV = xx vkGetDeviceProcAddr(device, "vkDestroyIndirectCommandsLayoutNV");
    vkCmdSetDepthBias2EXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthBias2EXT");
    vkCreatePrivateDataSlotEXT = xx vkGetDeviceProcAddr(device, "vkCreatePrivateDataSlotEXT");
    vkDestroyPrivateDataSlotEXT = xx vkGetDeviceProcAddr(device, "vkDestroyPrivateDataSlotEXT");
    vkSetPrivateDataEXT = xx vkGetDeviceProcAddr(device, "vkSetPrivateDataEXT");
    vkGetPrivateDataEXT = xx vkGetDeviceProcAddr(device, "vkGetPrivateDataEXT");
    vkCreateCudaModuleNV = xx vkGetDeviceProcAddr(device, "vkCreateCudaModuleNV");
    vkGetCudaModuleCacheNV = xx vkGetDeviceProcAddr(device, "vkGetCudaModuleCacheNV");
    vkCreateCudaFunctionNV = xx vkGetDeviceProcAddr(device, "vkCreateCudaFunctionNV");
    vkDestroyCudaModuleNV = xx vkGetDeviceProcAddr(device, "vkDestroyCudaModuleNV");
    vkDestroyCudaFunctionNV = xx vkGetDeviceProcAddr(device, "vkDestroyCudaFunctionNV");
    vkCmdCudaLaunchKernelNV = xx vkGetDeviceProcAddr(device, "vkCmdCudaLaunchKernelNV");
    vkCmdDispatchTileQCOM = xx vkGetDeviceProcAddr(device, "vkCmdDispatchTileQCOM");
    vkCmdBeginPerTileExecutionQCOM = xx vkGetDeviceProcAddr(device, "vkCmdBeginPerTileExecutionQCOM");
    vkCmdEndPerTileExecutionQCOM = xx vkGetDeviceProcAddr(device, "vkCmdEndPerTileExecutionQCOM");
    vkGetDescriptorSetLayoutSizeEXT = xx vkGetDeviceProcAddr(device, "vkGetDescriptorSetLayoutSizeEXT");
    vkGetDescriptorSetLayoutBindingOffsetEXT = xx vkGetDeviceProcAddr(device, "vkGetDescriptorSetLayoutBindingOffsetEXT");
    vkGetDescriptorEXT = xx vkGetDeviceProcAddr(device, "vkGetDescriptorEXT");
    vkCmdBindDescriptorBuffersEXT = xx vkGetDeviceProcAddr(device, "vkCmdBindDescriptorBuffersEXT");
    vkCmdSetDescriptorBufferOffsetsEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDescriptorBufferOffsetsEXT");
    vkCmdBindDescriptorBufferEmbeddedSamplersEXT = xx vkGetDeviceProcAddr(device, "vkCmdBindDescriptorBufferEmbeddedSamplersEXT");
    vkGetBufferOpaqueCaptureDescriptorDataEXT = xx vkGetDeviceProcAddr(device, "vkGetBufferOpaqueCaptureDescriptorDataEXT");
    vkGetImageOpaqueCaptureDescriptorDataEXT = xx vkGetDeviceProcAddr(device, "vkGetImageOpaqueCaptureDescriptorDataEXT");
    vkGetImageViewOpaqueCaptureDescriptorDataEXT = xx vkGetDeviceProcAddr(device, "vkGetImageViewOpaqueCaptureDescriptorDataEXT");
    vkGetSamplerOpaqueCaptureDescriptorDataEXT = xx vkGetDeviceProcAddr(device, "vkGetSamplerOpaqueCaptureDescriptorDataEXT");
    vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT = xx vkGetDeviceProcAddr(device, "vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT");
    vkCmdSetFragmentShadingRateEnumNV = xx vkGetDeviceProcAddr(device, "vkCmdSetFragmentShadingRateEnumNV");
    vkGetDeviceFaultInfoEXT = xx vkGetDeviceProcAddr(device, "vkGetDeviceFaultInfoEXT");
    vkCmdSetVertexInputEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetVertexInputEXT");
    vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI = xx vkGetDeviceProcAddr(device, "vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI");
    vkCmdSubpassShadingHUAWEI = xx vkGetDeviceProcAddr(device, "vkCmdSubpassShadingHUAWEI");
    vkCmdBindInvocationMaskHUAWEI = xx vkGetDeviceProcAddr(device, "vkCmdBindInvocationMaskHUAWEI");
    vkGetMemoryRemoteAddressNV = xx vkGetDeviceProcAddr(device, "vkGetMemoryRemoteAddressNV");
    vkGetPipelinePropertiesEXT = xx vkGetDeviceProcAddr(device, "vkGetPipelinePropertiesEXT");
    vkCmdSetPatchControlPointsEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetPatchControlPointsEXT");
    vkCmdSetRasterizerDiscardEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetRasterizerDiscardEnableEXT");
    vkCmdSetDepthBiasEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthBiasEnableEXT");
    vkCmdSetLogicOpEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetLogicOpEXT");
    vkCmdSetPrimitiveRestartEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetPrimitiveRestartEnableEXT");
    vkCmdSetColorWriteEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetColorWriteEnableEXT");
    vkCmdDrawMultiEXT = xx vkGetDeviceProcAddr(device, "vkCmdDrawMultiEXT");
    vkCmdDrawMultiIndexedEXT = xx vkGetDeviceProcAddr(device, "vkCmdDrawMultiIndexedEXT");
    vkCreateMicromapEXT = xx vkGetDeviceProcAddr(device, "vkCreateMicromapEXT");
    vkDestroyMicromapEXT = xx vkGetDeviceProcAddr(device, "vkDestroyMicromapEXT");
    vkCmdBuildMicromapsEXT = xx vkGetDeviceProcAddr(device, "vkCmdBuildMicromapsEXT");
    vkBuildMicromapsEXT = xx vkGetDeviceProcAddr(device, "vkBuildMicromapsEXT");
    vkCopyMicromapEXT = xx vkGetDeviceProcAddr(device, "vkCopyMicromapEXT");
    vkCopyMicromapToMemoryEXT = xx vkGetDeviceProcAddr(device, "vkCopyMicromapToMemoryEXT");
    vkCopyMemoryToMicromapEXT = xx vkGetDeviceProcAddr(device, "vkCopyMemoryToMicromapEXT");
    vkWriteMicromapsPropertiesEXT = xx vkGetDeviceProcAddr(device, "vkWriteMicromapsPropertiesEXT");
    vkCmdCopyMicromapEXT = xx vkGetDeviceProcAddr(device, "vkCmdCopyMicromapEXT");
    vkCmdCopyMicromapToMemoryEXT = xx vkGetDeviceProcAddr(device, "vkCmdCopyMicromapToMemoryEXT");
    vkCmdCopyMemoryToMicromapEXT = xx vkGetDeviceProcAddr(device, "vkCmdCopyMemoryToMicromapEXT");
    vkCmdWriteMicromapsPropertiesEXT = xx vkGetDeviceProcAddr(device, "vkCmdWriteMicromapsPropertiesEXT");
    vkGetDeviceMicromapCompatibilityEXT = xx vkGetDeviceProcAddr(device, "vkGetDeviceMicromapCompatibilityEXT");
    vkGetMicromapBuildSizesEXT = xx vkGetDeviceProcAddr(device, "vkGetMicromapBuildSizesEXT");
    vkCmdDrawClusterHUAWEI = xx vkGetDeviceProcAddr(device, "vkCmdDrawClusterHUAWEI");
    vkCmdDrawClusterIndirectHUAWEI = xx vkGetDeviceProcAddr(device, "vkCmdDrawClusterIndirectHUAWEI");
    vkSetDeviceMemoryPriorityEXT = xx vkGetDeviceProcAddr(device, "vkSetDeviceMemoryPriorityEXT");
    vkGetDescriptorSetLayoutHostMappingInfoVALVE = xx vkGetDeviceProcAddr(device, "vkGetDescriptorSetLayoutHostMappingInfoVALVE");
    vkGetDescriptorSetHostMappingVALVE = xx vkGetDeviceProcAddr(device, "vkGetDescriptorSetHostMappingVALVE");
    vkCmdCopyMemoryIndirectNV = xx vkGetDeviceProcAddr(device, "vkCmdCopyMemoryIndirectNV");
    vkCmdCopyMemoryToImageIndirectNV = xx vkGetDeviceProcAddr(device, "vkCmdCopyMemoryToImageIndirectNV");
    vkCmdDecompressMemoryNV = xx vkGetDeviceProcAddr(device, "vkCmdDecompressMemoryNV");
    vkCmdDecompressMemoryIndirectCountNV = xx vkGetDeviceProcAddr(device, "vkCmdDecompressMemoryIndirectCountNV");
    vkGetPipelineIndirectMemoryRequirementsNV = xx vkGetDeviceProcAddr(device, "vkGetPipelineIndirectMemoryRequirementsNV");
    vkCmdUpdatePipelineIndirectBufferNV = xx vkGetDeviceProcAddr(device, "vkCmdUpdatePipelineIndirectBufferNV");
    vkGetPipelineIndirectDeviceAddressNV = xx vkGetDeviceProcAddr(device, "vkGetPipelineIndirectDeviceAddressNV");
    vkCmdSetDepthClampEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthClampEnableEXT");
    vkCmdSetPolygonModeEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetPolygonModeEXT");
    vkCmdSetRasterizationSamplesEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetRasterizationSamplesEXT");
    vkCmdSetSampleMaskEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetSampleMaskEXT");
    vkCmdSetAlphaToCoverageEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetAlphaToCoverageEnableEXT");
    vkCmdSetAlphaToOneEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetAlphaToOneEnableEXT");
    vkCmdSetLogicOpEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetLogicOpEnableEXT");
    vkCmdSetColorBlendEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetColorBlendEnableEXT");
    vkCmdSetColorBlendEquationEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetColorBlendEquationEXT");
    vkCmdSetColorWriteMaskEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetColorWriteMaskEXT");
    vkCmdSetTessellationDomainOriginEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetTessellationDomainOriginEXT");
    vkCmdSetRasterizationStreamEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetRasterizationStreamEXT");
    vkCmdSetConservativeRasterizationModeEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetConservativeRasterizationModeEXT");
    vkCmdSetExtraPrimitiveOverestimationSizeEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetExtraPrimitiveOverestimationSizeEXT");
    vkCmdSetDepthClipEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthClipEnableEXT");
    vkCmdSetSampleLocationsEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetSampleLocationsEnableEXT");
    vkCmdSetColorBlendAdvancedEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetColorBlendAdvancedEXT");
    vkCmdSetProvokingVertexModeEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetProvokingVertexModeEXT");
    vkCmdSetLineRasterizationModeEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetLineRasterizationModeEXT");
    vkCmdSetLineStippleEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetLineStippleEnableEXT");
    vkCmdSetDepthClipNegativeOneToOneEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthClipNegativeOneToOneEXT");
    vkCmdSetViewportWScalingEnableNV = xx vkGetDeviceProcAddr(device, "vkCmdSetViewportWScalingEnableNV");
    vkCmdSetViewportSwizzleNV = xx vkGetDeviceProcAddr(device, "vkCmdSetViewportSwizzleNV");
    vkCmdSetCoverageToColorEnableNV = xx vkGetDeviceProcAddr(device, "vkCmdSetCoverageToColorEnableNV");
    vkCmdSetCoverageToColorLocationNV = xx vkGetDeviceProcAddr(device, "vkCmdSetCoverageToColorLocationNV");
    vkCmdSetCoverageModulationModeNV = xx vkGetDeviceProcAddr(device, "vkCmdSetCoverageModulationModeNV");
    vkCmdSetCoverageModulationTableEnableNV = xx vkGetDeviceProcAddr(device, "vkCmdSetCoverageModulationTableEnableNV");
    vkCmdSetCoverageModulationTableNV = xx vkGetDeviceProcAddr(device, "vkCmdSetCoverageModulationTableNV");
    vkCmdSetShadingRateImageEnableNV = xx vkGetDeviceProcAddr(device, "vkCmdSetShadingRateImageEnableNV");
    vkCmdSetRepresentativeFragmentTestEnableNV = xx vkGetDeviceProcAddr(device, "vkCmdSetRepresentativeFragmentTestEnableNV");
    vkCmdSetCoverageReductionModeNV = xx vkGetDeviceProcAddr(device, "vkCmdSetCoverageReductionModeNV");
    vkGetShaderModuleIdentifierEXT = xx vkGetDeviceProcAddr(device, "vkGetShaderModuleIdentifierEXT");
    vkGetShaderModuleCreateInfoIdentifierEXT = xx vkGetDeviceProcAddr(device, "vkGetShaderModuleCreateInfoIdentifierEXT");
    vkCreateOpticalFlowSessionNV = xx vkGetDeviceProcAddr(device, "vkCreateOpticalFlowSessionNV");
    vkDestroyOpticalFlowSessionNV = xx vkGetDeviceProcAddr(device, "vkDestroyOpticalFlowSessionNV");
    vkBindOpticalFlowSessionImageNV = xx vkGetDeviceProcAddr(device, "vkBindOpticalFlowSessionImageNV");
    vkCmdOpticalFlowExecuteNV = xx vkGetDeviceProcAddr(device, "vkCmdOpticalFlowExecuteNV");
    vkAntiLagUpdateAMD = xx vkGetDeviceProcAddr(device, "vkAntiLagUpdateAMD");
    vkCreateShadersEXT = xx vkGetDeviceProcAddr(device, "vkCreateShadersEXT");
    vkDestroyShaderEXT = xx vkGetDeviceProcAddr(device, "vkDestroyShaderEXT");
    vkGetShaderBinaryDataEXT = xx vkGetDeviceProcAddr(device, "vkGetShaderBinaryDataEXT");
    vkCmdBindShadersEXT = xx vkGetDeviceProcAddr(device, "vkCmdBindShadersEXT");
    vkCmdSetDepthClampRangeEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetDepthClampRangeEXT");
    vkGetFramebufferTilePropertiesQCOM = xx vkGetDeviceProcAddr(device, "vkGetFramebufferTilePropertiesQCOM");
    vkGetDynamicRenderingTilePropertiesQCOM = xx vkGetDeviceProcAddr(device, "vkGetDynamicRenderingTilePropertiesQCOM");
    vkConvertCooperativeVectorMatrixNV = xx vkGetDeviceProcAddr(device, "vkConvertCooperativeVectorMatrixNV");
    vkCmdConvertCooperativeVectorMatrixNV = xx vkGetDeviceProcAddr(device, "vkCmdConvertCooperativeVectorMatrixNV");
    vkSetLatencySleepModeNV = xx vkGetDeviceProcAddr(device, "vkSetLatencySleepModeNV");
    vkLatencySleepNV = xx vkGetDeviceProcAddr(device, "vkLatencySleepNV");
    vkSetLatencyMarkerNV = xx vkGetDeviceProcAddr(device, "vkSetLatencyMarkerNV");
    vkGetLatencyTimingsNV = xx vkGetDeviceProcAddr(device, "vkGetLatencyTimingsNV");
    vkQueueNotifyOutOfBandNV = xx vkGetDeviceProcAddr(device, "vkQueueNotifyOutOfBandNV");
    vkCmdSetAttachmentFeedbackLoopEnableEXT = xx vkGetDeviceProcAddr(device, "vkCmdSetAttachmentFeedbackLoopEnableEXT");
    vkCmdBindTileMemoryQCOM = xx vkGetDeviceProcAddr(device, "vkCmdBindTileMemoryQCOM");
    vkCreateExternalComputeQueueNV = xx vkGetDeviceProcAddr(device, "vkCreateExternalComputeQueueNV");
    vkDestroyExternalComputeQueueNV = xx vkGetDeviceProcAddr(device, "vkDestroyExternalComputeQueueNV");
    vkGetClusterAccelerationStructureBuildSizesNV = xx vkGetDeviceProcAddr(device, "vkGetClusterAccelerationStructureBuildSizesNV");
    vkCmdBuildClusterAccelerationStructureIndirectNV = xx vkGetDeviceProcAddr(device, "vkCmdBuildClusterAccelerationStructureIndirectNV");
    vkGetPartitionedAccelerationStructuresBuildSizesNV = xx vkGetDeviceProcAddr(device, "vkGetPartitionedAccelerationStructuresBuildSizesNV");
    vkCmdBuildPartitionedAccelerationStructuresNV = xx vkGetDeviceProcAddr(device, "vkCmdBuildPartitionedAccelerationStructuresNV");
    vkGetGeneratedCommandsMemoryRequirementsEXT = xx vkGetDeviceProcAddr(device, "vkGetGeneratedCommandsMemoryRequirementsEXT");
    vkCmdPreprocessGeneratedCommandsEXT = xx vkGetDeviceProcAddr(device, "vkCmdPreprocessGeneratedCommandsEXT");
    vkCmdExecuteGeneratedCommandsEXT = xx vkGetDeviceProcAddr(device, "vkCmdExecuteGeneratedCommandsEXT");
    vkCreateIndirectCommandsLayoutEXT = xx vkGetDeviceProcAddr(device, "vkCreateIndirectCommandsLayoutEXT");
    vkDestroyIndirectCommandsLayoutEXT = xx vkGetDeviceProcAddr(device, "vkDestroyIndirectCommandsLayoutEXT");
    vkCreateIndirectExecutionSetEXT = xx vkGetDeviceProcAddr(device, "vkCreateIndirectExecutionSetEXT");
    vkDestroyIndirectExecutionSetEXT = xx vkGetDeviceProcAddr(device, "vkDestroyIndirectExecutionSetEXT");
    vkUpdateIndirectExecutionSetPipelineEXT = xx vkGetDeviceProcAddr(device, "vkUpdateIndirectExecutionSetPipelineEXT");
    vkUpdateIndirectExecutionSetShaderEXT = xx vkGetDeviceProcAddr(device, "vkUpdateIndirectExecutionSetShaderEXT");
    vkCmdEndRendering2EXT = xx vkGetDeviceProcAddr(device, "vkCmdEndRendering2EXT");
    vkCreateAccelerationStructureKHR = xx vkGetDeviceProcAddr(device, "vkCreateAccelerationStructureKHR");
    vkDestroyAccelerationStructureKHR = xx vkGetDeviceProcAddr(device, "vkDestroyAccelerationStructureKHR");
    vkCmdBuildAccelerationStructuresKHR = xx vkGetDeviceProcAddr(device, "vkCmdBuildAccelerationStructuresKHR");
    vkCmdBuildAccelerationStructuresIndirectKHR = xx vkGetDeviceProcAddr(device, "vkCmdBuildAccelerationStructuresIndirectKHR");
    vkBuildAccelerationStructuresKHR = xx vkGetDeviceProcAddr(device, "vkBuildAccelerationStructuresKHR");
    vkCopyAccelerationStructureKHR = xx vkGetDeviceProcAddr(device, "vkCopyAccelerationStructureKHR");
    vkCopyAccelerationStructureToMemoryKHR = xx vkGetDeviceProcAddr(device, "vkCopyAccelerationStructureToMemoryKHR");
    vkCopyMemoryToAccelerationStructureKHR = xx vkGetDeviceProcAddr(device, "vkCopyMemoryToAccelerationStructureKHR");
    vkWriteAccelerationStructuresPropertiesKHR = xx vkGetDeviceProcAddr(device, "vkWriteAccelerationStructuresPropertiesKHR");
    vkCmdCopyAccelerationStructureKHR = xx vkGetDeviceProcAddr(device, "vkCmdCopyAccelerationStructureKHR");
    vkCmdCopyAccelerationStructureToMemoryKHR = xx vkGetDeviceProcAddr(device, "vkCmdCopyAccelerationStructureToMemoryKHR");
    vkCmdCopyMemoryToAccelerationStructureKHR = xx vkGetDeviceProcAddr(device, "vkCmdCopyMemoryToAccelerationStructureKHR");
    vkGetAccelerationStructureDeviceAddressKHR = xx vkGetDeviceProcAddr(device, "vkGetAccelerationStructureDeviceAddressKHR");
    vkCmdWriteAccelerationStructuresPropertiesKHR = xx vkGetDeviceProcAddr(device, "vkCmdWriteAccelerationStructuresPropertiesKHR");
    vkGetDeviceAccelerationStructureCompatibilityKHR = xx vkGetDeviceProcAddr(device, "vkGetDeviceAccelerationStructureCompatibilityKHR");
    vkGetAccelerationStructureBuildSizesKHR = xx vkGetDeviceProcAddr(device, "vkGetAccelerationStructureBuildSizesKHR");
    vkCmdTraceRaysKHR = xx vkGetDeviceProcAddr(device, "vkCmdTraceRaysKHR");
    vkCreateRayTracingPipelinesKHR = xx vkGetDeviceProcAddr(device, "vkCreateRayTracingPipelinesKHR");
    vkGetRayTracingCaptureReplayShaderGroupHandlesKHR = xx vkGetDeviceProcAddr(device, "vkGetRayTracingCaptureReplayShaderGroupHandlesKHR");
    vkCmdTraceRaysIndirectKHR = xx vkGetDeviceProcAddr(device, "vkCmdTraceRaysIndirectKHR");
    vkGetRayTracingShaderGroupStackSizeKHR = xx vkGetDeviceProcAddr(device, "vkGetRayTracingShaderGroupStackSizeKHR");
    vkCmdSetRayTracingPipelineStackSizeKHR = xx vkGetDeviceProcAddr(device, "vkCmdSetRayTracingPipelineStackSizeKHR");
    vkCmdDrawMeshTasksEXT = xx vkGetDeviceProcAddr(device, "vkCmdDrawMeshTasksEXT");
    vkCmdDrawMeshTasksIndirectEXT = xx vkGetDeviceProcAddr(device, "vkCmdDrawMeshTasksIndirectEXT");
    vkCmdDrawMeshTasksIndirectCountEXT = xx vkGetDeviceProcAddr(device, "vkCmdDrawMeshTasksIndirectCountEXT");
    vkGetAndroidHardwareBufferPropertiesANDROID = xx vkGetDeviceProcAddr(device, "vkGetAndroidHardwareBufferPropertiesANDROID");
    vkGetMemoryAndroidHardwareBufferANDROID = xx vkGetDeviceProcAddr(device, "vkGetMemoryAndroidHardwareBufferANDROID");
    vkCreateExecutionGraphPipelinesAMDX = xx vkGetDeviceProcAddr(device, "vkCreateExecutionGraphPipelinesAMDX");
    vkGetExecutionGraphPipelineScratchSizeAMDX = xx vkGetDeviceProcAddr(device, "vkGetExecutionGraphPipelineScratchSizeAMDX");
    vkGetExecutionGraphPipelineNodeIndexAMDX = xx vkGetDeviceProcAddr(device, "vkGetExecutionGraphPipelineNodeIndexAMDX");
    vkCmdInitializeGraphScratchMemoryAMDX = xx vkGetDeviceProcAddr(device, "vkCmdInitializeGraphScratchMemoryAMDX");
    vkCmdDispatchGraphAMDX = xx vkGetDeviceProcAddr(device, "vkCmdDispatchGraphAMDX");
    vkCmdDispatchGraphIndirectAMDX = xx vkGetDeviceProcAddr(device, "vkCmdDispatchGraphIndirectAMDX");
    vkCmdDispatchGraphIndirectCountAMDX = xx vkGetDeviceProcAddr(device, "vkCmdDispatchGraphIndirectCountAMDX");
}

load_instance_proc_addresses :: (instance: VkInstance) {
    vkDestroyInstance = xx vkGetInstanceProcAddr(instance, "vkDestroyInstance");
    vkEnumeratePhysicalDevices = xx vkGetInstanceProcAddr(instance, "vkEnumeratePhysicalDevices");
    vkGetPhysicalDeviceFeatures = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceFeatures");
    vkGetPhysicalDeviceFormatProperties = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceFormatProperties");
    vkGetPhysicalDeviceImageFormatProperties = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceImageFormatProperties");
    vkGetPhysicalDeviceProperties = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceProperties");
    vkGetPhysicalDeviceQueueFamilyProperties = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceQueueFamilyProperties");
    vkGetPhysicalDeviceMemoryProperties = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceMemoryProperties");
    vkGetDeviceProcAddr = xx vkGetInstanceProcAddr(instance, "vkGetDeviceProcAddr");
    vkCreateDevice = xx vkGetInstanceProcAddr(instance, "vkCreateDevice");
    vkEnumerateDeviceExtensionProperties = xx vkGetInstanceProcAddr(instance, "vkEnumerateDeviceExtensionProperties");
    vkEnumerateDeviceLayerProperties = xx vkGetInstanceProcAddr(instance, "vkEnumerateDeviceLayerProperties");
    vkGetPhysicalDeviceSparseImageFormatProperties = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSparseImageFormatProperties");
    vkEnumeratePhysicalDeviceGroups = xx vkGetInstanceProcAddr(instance, "vkEnumeratePhysicalDeviceGroups");
    vkGetPhysicalDeviceFeatures2 = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceFeatures2");
    vkGetPhysicalDeviceProperties2 = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceProperties2");
    vkGetPhysicalDeviceFormatProperties2 = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceFormatProperties2");
    vkGetPhysicalDeviceImageFormatProperties2 = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceImageFormatProperties2");
    vkGetPhysicalDeviceQueueFamilyProperties2 = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceQueueFamilyProperties2");
    vkGetPhysicalDeviceMemoryProperties2 = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceMemoryProperties2");
    vkGetPhysicalDeviceSparseImageFormatProperties2 = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSparseImageFormatProperties2");
    vkGetPhysicalDeviceExternalBufferProperties = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceExternalBufferProperties");
    vkGetPhysicalDeviceExternalFenceProperties = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceExternalFenceProperties");
    vkGetPhysicalDeviceExternalSemaphoreProperties = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceExternalSemaphoreProperties");
    vkGetPhysicalDeviceToolProperties = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceToolProperties");
    vkDestroySurfaceKHR = xx vkGetInstanceProcAddr(instance, "vkDestroySurfaceKHR");
    vkGetPhysicalDeviceSurfaceSupportKHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfaceSupportKHR");
    vkGetPhysicalDeviceSurfaceCapabilitiesKHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfaceCapabilitiesKHR");
    vkGetPhysicalDeviceSurfaceFormatsKHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfaceFormatsKHR");
    vkGetPhysicalDeviceSurfacePresentModesKHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfacePresentModesKHR");
    vkGetPhysicalDevicePresentRectanglesKHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDevicePresentRectanglesKHR");
    vkGetPhysicalDeviceDisplayPropertiesKHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceDisplayPropertiesKHR");
    vkGetPhysicalDeviceDisplayPlanePropertiesKHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceDisplayPlanePropertiesKHR");
    vkGetDisplayPlaneSupportedDisplaysKHR = xx vkGetInstanceProcAddr(instance, "vkGetDisplayPlaneSupportedDisplaysKHR");
    vkGetDisplayModePropertiesKHR = xx vkGetInstanceProcAddr(instance, "vkGetDisplayModePropertiesKHR");
    vkCreateDisplayModeKHR = xx vkGetInstanceProcAddr(instance, "vkCreateDisplayModeKHR");
    vkGetDisplayPlaneCapabilitiesKHR = xx vkGetInstanceProcAddr(instance, "vkGetDisplayPlaneCapabilitiesKHR");
    vkCreateDisplayPlaneSurfaceKHR = xx vkGetInstanceProcAddr(instance, "vkCreateDisplayPlaneSurfaceKHR");
    vkGetPhysicalDeviceVideoCapabilitiesKHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceVideoCapabilitiesKHR");
    vkGetPhysicalDeviceVideoFormatPropertiesKHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceVideoFormatPropertiesKHR");
    vkGetPhysicalDeviceFeatures2KHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceFeatures2KHR");
    vkGetPhysicalDeviceProperties2KHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceProperties2KHR");
    vkGetPhysicalDeviceFormatProperties2KHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceFormatProperties2KHR");
    vkGetPhysicalDeviceImageFormatProperties2KHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceImageFormatProperties2KHR");
    vkGetPhysicalDeviceQueueFamilyProperties2KHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceQueueFamilyProperties2KHR");
    vkGetPhysicalDeviceMemoryProperties2KHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceMemoryProperties2KHR");
    vkGetPhysicalDeviceSparseImageFormatProperties2KHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSparseImageFormatProperties2KHR");
    vkEnumeratePhysicalDeviceGroupsKHR = xx vkGetInstanceProcAddr(instance, "vkEnumeratePhysicalDeviceGroupsKHR");
    vkGetPhysicalDeviceExternalBufferPropertiesKHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceExternalBufferPropertiesKHR");
    vkGetPhysicalDeviceExternalSemaphorePropertiesKHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceExternalSemaphorePropertiesKHR");
    vkGetPhysicalDeviceExternalFencePropertiesKHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceExternalFencePropertiesKHR");
    vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR = xx vkGetInstanceProcAddr(instance, "vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR");
    vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR");
    vkGetPhysicalDeviceSurfaceCapabilities2KHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfaceCapabilities2KHR");
    vkGetPhysicalDeviceSurfaceFormats2KHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfaceFormats2KHR");
    vkGetPhysicalDeviceDisplayProperties2KHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceDisplayProperties2KHR");
    vkGetPhysicalDeviceDisplayPlaneProperties2KHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceDisplayPlaneProperties2KHR");
    vkGetDisplayModeProperties2KHR = xx vkGetInstanceProcAddr(instance, "vkGetDisplayModeProperties2KHR");
    vkGetDisplayPlaneCapabilities2KHR = xx vkGetInstanceProcAddr(instance, "vkGetDisplayPlaneCapabilities2KHR");
    vkGetPhysicalDeviceFragmentShadingRatesKHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceFragmentShadingRatesKHR");
    vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR");
    vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR");
    vkGetPhysicalDeviceCalibrateableTimeDomainsKHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceCalibrateableTimeDomainsKHR");
    vkCreateDebugReportCallbackEXT = xx vkGetInstanceProcAddr(instance, "vkCreateDebugReportCallbackEXT");
    vkDestroyDebugReportCallbackEXT = xx vkGetInstanceProcAddr(instance, "vkDestroyDebugReportCallbackEXT");
    vkDebugReportMessageEXT = xx vkGetInstanceProcAddr(instance, "vkDebugReportMessageEXT");
    vkGetPhysicalDeviceExternalImageFormatPropertiesNV = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceExternalImageFormatPropertiesNV");
    vkReleaseDisplayEXT = xx vkGetInstanceProcAddr(instance, "vkReleaseDisplayEXT");
    vkGetPhysicalDeviceSurfaceCapabilities2EXT = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSurfaceCapabilities2EXT");
    vkCreateDebugUtilsMessengerEXT = xx vkGetInstanceProcAddr(instance, "vkCreateDebugUtilsMessengerEXT");
    vkDestroyDebugUtilsMessengerEXT = xx vkGetInstanceProcAddr(instance, "vkDestroyDebugUtilsMessengerEXT");
    vkSubmitDebugUtilsMessageEXT = xx vkGetInstanceProcAddr(instance, "vkSubmitDebugUtilsMessageEXT");
    vkGetPhysicalDeviceMultisamplePropertiesEXT = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceMultisamplePropertiesEXT");
    vkGetPhysicalDeviceCalibrateableTimeDomainsEXT = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceCalibrateableTimeDomainsEXT");
    vkGetPhysicalDeviceToolPropertiesEXT = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceToolPropertiesEXT");
    vkGetPhysicalDeviceCooperativeMatrixPropertiesNV = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceCooperativeMatrixPropertiesNV");
    vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV");
    vkCreateHeadlessSurfaceEXT = xx vkGetInstanceProcAddr(instance, "vkCreateHeadlessSurfaceEXT");
    vkAcquireDrmDisplayEXT = xx vkGetInstanceProcAddr(instance, "vkAcquireDrmDisplayEXT");
    vkGetDrmDisplayEXT = xx vkGetInstanceProcAddr(instance, "vkGetDrmDisplayEXT");
    vkGetPhysicalDeviceOpticalFlowImageFormatsNV = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceOpticalFlowImageFormatsNV");
    vkGetPhysicalDeviceCooperativeVectorPropertiesNV = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceCooperativeVectorPropertiesNV");
    vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV");
    vkCreateAndroidSurfaceKHR = xx vkGetInstanceProcAddr(instance, "vkCreateAndroidSurfaceKHR");
    vkCreateWaylandSurfaceKHR = xx vkGetInstanceProcAddr(instance, "vkCreateWaylandSurfaceKHR");
    vkGetPhysicalDeviceWaylandPresentationSupportKHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceWaylandPresentationSupportKHR");
    vkCreateXcbSurfaceKHR = xx vkGetInstanceProcAddr(instance, "vkCreateXcbSurfaceKHR");
    vkGetPhysicalDeviceXcbPresentationSupportKHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceXcbPresentationSupportKHR");
    vkCreateXlibSurfaceKHR = xx vkGetInstanceProcAddr(instance, "vkCreateXlibSurfaceKHR");
    vkGetPhysicalDeviceXlibPresentationSupportKHR = xx vkGetInstanceProcAddr(instance, "vkGetPhysicalDeviceXlibPresentationSupportKHR");
    vkDestroyDevice = xx vkGetInstanceProcAddr(instance, "vkDestroyDevice");
    vkGetDeviceQueue = xx vkGetInstanceProcAddr(instance, "vkGetDeviceQueue");
    vkQueueSubmit = xx vkGetInstanceProcAddr(instance, "vkQueueSubmit");
    vkQueueWaitIdle = xx vkGetInstanceProcAddr(instance, "vkQueueWaitIdle");
    vkDeviceWaitIdle = xx vkGetInstanceProcAddr(instance, "vkDeviceWaitIdle");
    vkAllocateMemory = xx vkGetInstanceProcAddr(instance, "vkAllocateMemory");
    vkFreeMemory = xx vkGetInstanceProcAddr(instance, "vkFreeMemory");
    vkMapMemory = xx vkGetInstanceProcAddr(instance, "vkMapMemory");
    vkUnmapMemory = xx vkGetInstanceProcAddr(instance, "vkUnmapMemory");
    vkFlushMappedMemoryRanges = xx vkGetInstanceProcAddr(instance, "vkFlushMappedMemoryRanges");
    vkInvalidateMappedMemoryRanges = xx vkGetInstanceProcAddr(instance, "vkInvalidateMappedMemoryRanges");
    vkGetDeviceMemoryCommitment = xx vkGetInstanceProcAddr(instance, "vkGetDeviceMemoryCommitment");
    vkBindBufferMemory = xx vkGetInstanceProcAddr(instance, "vkBindBufferMemory");
    vkBindImageMemory = xx vkGetInstanceProcAddr(instance, "vkBindImageMemory");
    vkGetBufferMemoryRequirements = xx vkGetInstanceProcAddr(instance, "vkGetBufferMemoryRequirements");
    vkGetImageMemoryRequirements = xx vkGetInstanceProcAddr(instance, "vkGetImageMemoryRequirements");
    vkGetImageSparseMemoryRequirements = xx vkGetInstanceProcAddr(instance, "vkGetImageSparseMemoryRequirements");
    vkQueueBindSparse = xx vkGetInstanceProcAddr(instance, "vkQueueBindSparse");
    vkCreateFence = xx vkGetInstanceProcAddr(instance, "vkCreateFence");
    vkDestroyFence = xx vkGetInstanceProcAddr(instance, "vkDestroyFence");
    vkResetFences = xx vkGetInstanceProcAddr(instance, "vkResetFences");
    vkGetFenceStatus = xx vkGetInstanceProcAddr(instance, "vkGetFenceStatus");
    vkWaitForFences = xx vkGetInstanceProcAddr(instance, "vkWaitForFences");
    vkCreateSemaphore = xx vkGetInstanceProcAddr(instance, "vkCreateSemaphore");
    vkDestroySemaphore = xx vkGetInstanceProcAddr(instance, "vkDestroySemaphore");
    vkCreateEvent = xx vkGetInstanceProcAddr(instance, "vkCreateEvent");
    vkDestroyEvent = xx vkGetInstanceProcAddr(instance, "vkDestroyEvent");
    vkGetEventStatus = xx vkGetInstanceProcAddr(instance, "vkGetEventStatus");
    vkSetEvent = xx vkGetInstanceProcAddr(instance, "vkSetEvent");
    vkResetEvent = xx vkGetInstanceProcAddr(instance, "vkResetEvent");
    vkCreateQueryPool = xx vkGetInstanceProcAddr(instance, "vkCreateQueryPool");
    vkDestroyQueryPool = xx vkGetInstanceProcAddr(instance, "vkDestroyQueryPool");
    vkGetQueryPoolResults = xx vkGetInstanceProcAddr(instance, "vkGetQueryPoolResults");
    vkCreateBuffer = xx vkGetInstanceProcAddr(instance, "vkCreateBuffer");
    vkDestroyBuffer = xx vkGetInstanceProcAddr(instance, "vkDestroyBuffer");
    vkCreateBufferView = xx vkGetInstanceProcAddr(instance, "vkCreateBufferView");
    vkDestroyBufferView = xx vkGetInstanceProcAddr(instance, "vkDestroyBufferView");
    vkCreateImage = xx vkGetInstanceProcAddr(instance, "vkCreateImage");
    vkDestroyImage = xx vkGetInstanceProcAddr(instance, "vkDestroyImage");
    vkGetImageSubresourceLayout = xx vkGetInstanceProcAddr(instance, "vkGetImageSubresourceLayout");
    vkCreateImageView = xx vkGetInstanceProcAddr(instance, "vkCreateImageView");
    vkDestroyImageView = xx vkGetInstanceProcAddr(instance, "vkDestroyImageView");
    vkCreateShaderModule = xx vkGetInstanceProcAddr(instance, "vkCreateShaderModule");
    vkDestroyShaderModule = xx vkGetInstanceProcAddr(instance, "vkDestroyShaderModule");
    vkCreatePipelineCache = xx vkGetInstanceProcAddr(instance, "vkCreatePipelineCache");
    vkDestroyPipelineCache = xx vkGetInstanceProcAddr(instance, "vkDestroyPipelineCache");
    vkGetPipelineCacheData = xx vkGetInstanceProcAddr(instance, "vkGetPipelineCacheData");
    vkMergePipelineCaches = xx vkGetInstanceProcAddr(instance, "vkMergePipelineCaches");
    vkCreateGraphicsPipelines = xx vkGetInstanceProcAddr(instance, "vkCreateGraphicsPipelines");
    vkCreateComputePipelines = xx vkGetInstanceProcAddr(instance, "vkCreateComputePipelines");
    vkDestroyPipeline = xx vkGetInstanceProcAddr(instance, "vkDestroyPipeline");
    vkCreatePipelineLayout = xx vkGetInstanceProcAddr(instance, "vkCreatePipelineLayout");
    vkDestroyPipelineLayout = xx vkGetInstanceProcAddr(instance, "vkDestroyPipelineLayout");
    vkCreateSampler = xx vkGetInstanceProcAddr(instance, "vkCreateSampler");
    vkDestroySampler = xx vkGetInstanceProcAddr(instance, "vkDestroySampler");
    vkCreateDescriptorSetLayout = xx vkGetInstanceProcAddr(instance, "vkCreateDescriptorSetLayout");
    vkDestroyDescriptorSetLayout = xx vkGetInstanceProcAddr(instance, "vkDestroyDescriptorSetLayout");
    vkCreateDescriptorPool = xx vkGetInstanceProcAddr(instance, "vkCreateDescriptorPool");
    vkDestroyDescriptorPool = xx vkGetInstanceProcAddr(instance, "vkDestroyDescriptorPool");
    vkResetDescriptorPool = xx vkGetInstanceProcAddr(instance, "vkResetDescriptorPool");
    vkAllocateDescriptorSets = xx vkGetInstanceProcAddr(instance, "vkAllocateDescriptorSets");
    vkFreeDescriptorSets = xx vkGetInstanceProcAddr(instance, "vkFreeDescriptorSets");
    vkUpdateDescriptorSets = xx vkGetInstanceProcAddr(instance, "vkUpdateDescriptorSets");
    vkCreateFramebuffer = xx vkGetInstanceProcAddr(instance, "vkCreateFramebuffer");
    vkDestroyFramebuffer = xx vkGetInstanceProcAddr(instance, "vkDestroyFramebuffer");
    vkCreateRenderPass = xx vkGetInstanceProcAddr(instance, "vkCreateRenderPass");
    vkDestroyRenderPass = xx vkGetInstanceProcAddr(instance, "vkDestroyRenderPass");
    vkGetRenderAreaGranularity = xx vkGetInstanceProcAddr(instance, "vkGetRenderAreaGranularity");
    vkCreateCommandPool = xx vkGetInstanceProcAddr(instance, "vkCreateCommandPool");
    vkDestroyCommandPool = xx vkGetInstanceProcAddr(instance, "vkDestroyCommandPool");
    vkResetCommandPool = xx vkGetInstanceProcAddr(instance, "vkResetCommandPool");
    vkAllocateCommandBuffers = xx vkGetInstanceProcAddr(instance, "vkAllocateCommandBuffers");
    vkFreeCommandBuffers = xx vkGetInstanceProcAddr(instance, "vkFreeCommandBuffers");
    vkBeginCommandBuffer = xx vkGetInstanceProcAddr(instance, "vkBeginCommandBuffer");
    vkEndCommandBuffer = xx vkGetInstanceProcAddr(instance, "vkEndCommandBuffer");
    vkResetCommandBuffer = xx vkGetInstanceProcAddr(instance, "vkResetCommandBuffer");
    vkCmdBindPipeline = xx vkGetInstanceProcAddr(instance, "vkCmdBindPipeline");
    vkCmdSetViewport = xx vkGetInstanceProcAddr(instance, "vkCmdSetViewport");
    vkCmdSetScissor = xx vkGetInstanceProcAddr(instance, "vkCmdSetScissor");
    vkCmdSetLineWidth = xx vkGetInstanceProcAddr(instance, "vkCmdSetLineWidth");
    vkCmdSetDepthBias = xx vkGetInstanceProcAddr(instance, "vkCmdSetDepthBias");
    vkCmdSetBlendConstants = xx vkGetInstanceProcAddr(instance, "vkCmdSetBlendConstants");
    vkCmdSetDepthBounds = xx vkGetInstanceProcAddr(instance, "vkCmdSetDepthBounds");
    vkCmdSetStencilCompareMask = xx vkGetInstanceProcAddr(instance, "vkCmdSetStencilCompareMask");
    vkCmdSetStencilWriteMask = xx vkGetInstanceProcAddr(instance, "vkCmdSetStencilWriteMask");
    vkCmdSetStencilReference = xx vkGetInstanceProcAddr(instance, "vkCmdSetStencilReference");
    vkCmdBindDescriptorSets = xx vkGetInstanceProcAddr(instance, "vkCmdBindDescriptorSets");
    vkCmdBindIndexBuffer = xx vkGetInstanceProcAddr(instance, "vkCmdBindIndexBuffer");
    vkCmdBindVertexBuffers = xx vkGetInstanceProcAddr(instance, "vkCmdBindVertexBuffers");
    vkCmdDraw = xx vkGetInstanceProcAddr(instance, "vkCmdDraw");
    vkCmdDrawIndexed = xx vkGetInstanceProcAddr(instance, "vkCmdDrawIndexed");
    vkCmdDrawIndirect = xx vkGetInstanceProcAddr(instance, "vkCmdDrawIndirect");
    vkCmdDrawIndexedIndirect = xx vkGetInstanceProcAddr(instance, "vkCmdDrawIndexedIndirect");
    vkCmdDispatch = xx vkGetInstanceProcAddr(instance, "vkCmdDispatch");
    vkCmdDispatchIndirect = xx vkGetInstanceProcAddr(instance, "vkCmdDispatchIndirect");
    vkCmdCopyBuffer = xx vkGetInstanceProcAddr(instance, "vkCmdCopyBuffer");
    vkCmdCopyImage = xx vkGetInstanceProcAddr(instance, "vkCmdCopyImage");
    vkCmdBlitImage = xx vkGetInstanceProcAddr(instance, "vkCmdBlitImage");
    vkCmdCopyBufferToImage = xx vkGetInstanceProcAddr(instance, "vkCmdCopyBufferToImage");
    vkCmdCopyImageToBuffer = xx vkGetInstanceProcAddr(instance, "vkCmdCopyImageToBuffer");
    vkCmdUpdateBuffer = xx vkGetInstanceProcAddr(instance, "vkCmdUpdateBuffer");
    vkCmdFillBuffer = xx vkGetInstanceProcAddr(instance, "vkCmdFillBuffer");
    vkCmdClearColorImage = xx vkGetInstanceProcAddr(instance, "vkCmdClearColorImage");
    vkCmdClearDepthStencilImage = xx vkGetInstanceProcAddr(instance, "vkCmdClearDepthStencilImage");
    vkCmdClearAttachments = xx vkGetInstanceProcAddr(instance, "vkCmdClearAttachments");
    vkCmdResolveImage = xx vkGetInstanceProcAddr(instance, "vkCmdResolveImage");
    vkCmdSetEvent = xx vkGetInstanceProcAddr(instance, "vkCmdSetEvent");
    vkCmdResetEvent = xx vkGetInstanceProcAddr(instance, "vkCmdResetEvent");
    vkCmdWaitEvents = xx vkGetInstanceProcAddr(instance, "vkCmdWaitEvents");
    vkCmdPipelineBarrier = xx vkGetInstanceProcAddr(instance, "vkCmdPipelineBarrier");
    vkCmdBeginQuery = xx vkGetInstanceProcAddr(instance, "vkCmdBeginQuery");
    vkCmdEndQuery = xx vkGetInstanceProcAddr(instance, "vkCmdEndQuery");
    vkCmdResetQueryPool = xx vkGetInstanceProcAddr(instance, "vkCmdResetQueryPool");
    vkCmdWriteTimestamp = xx vkGetInstanceProcAddr(instance, "vkCmdWriteTimestamp");
    vkCmdCopyQueryPoolResults = xx vkGetInstanceProcAddr(instance, "vkCmdCopyQueryPoolResults");
    vkCmdPushConstants = xx vkGetInstanceProcAddr(instance, "vkCmdPushConstants");
    vkCmdBeginRenderPass = xx vkGetInstanceProcAddr(instance, "vkCmdBeginRenderPass");
    vkCmdNextSubpass = xx vkGetInstanceProcAddr(instance, "vkCmdNextSubpass");
    vkCmdEndRenderPass = xx vkGetInstanceProcAddr(instance, "vkCmdEndRenderPass");
    vkCmdExecuteCommands = xx vkGetInstanceProcAddr(instance, "vkCmdExecuteCommands");
    vkBindBufferMemory2 = xx vkGetInstanceProcAddr(instance, "vkBindBufferMemory2");
    vkBindImageMemory2 = xx vkGetInstanceProcAddr(instance, "vkBindImageMemory2");
    vkGetDeviceGroupPeerMemoryFeatures = xx vkGetInstanceProcAddr(instance, "vkGetDeviceGroupPeerMemoryFeatures");
    vkCmdSetDeviceMask = xx vkGetInstanceProcAddr(instance, "vkCmdSetDeviceMask");
    vkCmdDispatchBase = xx vkGetInstanceProcAddr(instance, "vkCmdDispatchBase");
    vkGetImageMemoryRequirements2 = xx vkGetInstanceProcAddr(instance, "vkGetImageMemoryRequirements2");
    vkGetBufferMemoryRequirements2 = xx vkGetInstanceProcAddr(instance, "vkGetBufferMemoryRequirements2");
    vkGetImageSparseMemoryRequirements2 = xx vkGetInstanceProcAddr(instance, "vkGetImageSparseMemoryRequirements2");
    vkTrimCommandPool = xx vkGetInstanceProcAddr(instance, "vkTrimCommandPool");
    vkGetDeviceQueue2 = xx vkGetInstanceProcAddr(instance, "vkGetDeviceQueue2");
    vkCreateSamplerYcbcrConversion = xx vkGetInstanceProcAddr(instance, "vkCreateSamplerYcbcrConversion");
    vkDestroySamplerYcbcrConversion = xx vkGetInstanceProcAddr(instance, "vkDestroySamplerYcbcrConversion");
    vkCreateDescriptorUpdateTemplate = xx vkGetInstanceProcAddr(instance, "vkCreateDescriptorUpdateTemplate");
    vkDestroyDescriptorUpdateTemplate = xx vkGetInstanceProcAddr(instance, "vkDestroyDescriptorUpdateTemplate");
    vkUpdateDescriptorSetWithTemplate = xx vkGetInstanceProcAddr(instance, "vkUpdateDescriptorSetWithTemplate");
    vkGetDescriptorSetLayoutSupport = xx vkGetInstanceProcAddr(instance, "vkGetDescriptorSetLayoutSupport");
    vkCmdDrawIndirectCount = xx vkGetInstanceProcAddr(instance, "vkCmdDrawIndirectCount");
    vkCmdDrawIndexedIndirectCount = xx vkGetInstanceProcAddr(instance, "vkCmdDrawIndexedIndirectCount");
    vkCreateRenderPass2 = xx vkGetInstanceProcAddr(instance, "vkCreateRenderPass2");
    vkCmdBeginRenderPass2 = xx vkGetInstanceProcAddr(instance, "vkCmdBeginRenderPass2");
    vkCmdNextSubpass2 = xx vkGetInstanceProcAddr(instance, "vkCmdNextSubpass2");
    vkCmdEndRenderPass2 = xx vkGetInstanceProcAddr(instance, "vkCmdEndRenderPass2");
    vkResetQueryPool = xx vkGetInstanceProcAddr(instance, "vkResetQueryPool");
    vkGetSemaphoreCounterValue = xx vkGetInstanceProcAddr(instance, "vkGetSemaphoreCounterValue");
    vkWaitSemaphores = xx vkGetInstanceProcAddr(instance, "vkWaitSemaphores");
    vkSignalSemaphore = xx vkGetInstanceProcAddr(instance, "vkSignalSemaphore");
    vkGetBufferDeviceAddress = xx vkGetInstanceProcAddr(instance, "vkGetBufferDeviceAddress");
    vkGetBufferOpaqueCaptureAddress = xx vkGetInstanceProcAddr(instance, "vkGetBufferOpaqueCaptureAddress");
    vkGetDeviceMemoryOpaqueCaptureAddress = xx vkGetInstanceProcAddr(instance, "vkGetDeviceMemoryOpaqueCaptureAddress");
    vkCreatePrivateDataSlot = xx vkGetInstanceProcAddr(instance, "vkCreatePrivateDataSlot");
    vkDestroyPrivateDataSlot = xx vkGetInstanceProcAddr(instance, "vkDestroyPrivateDataSlot");
    vkSetPrivateData = xx vkGetInstanceProcAddr(instance, "vkSetPrivateData");
    vkGetPrivateData = xx vkGetInstanceProcAddr(instance, "vkGetPrivateData");
    vkCmdSetEvent2 = xx vkGetInstanceProcAddr(instance, "vkCmdSetEvent2");
    vkCmdResetEvent2 = xx vkGetInstanceProcAddr(instance, "vkCmdResetEvent2");
    vkCmdWaitEvents2 = xx vkGetInstanceProcAddr(instance, "vkCmdWaitEvents2");
    vkCmdPipelineBarrier2 = xx vkGetInstanceProcAddr(instance, "vkCmdPipelineBarrier2");
    vkCmdWriteTimestamp2 = xx vkGetInstanceProcAddr(instance, "vkCmdWriteTimestamp2");
    vkQueueSubmit2 = xx vkGetInstanceProcAddr(instance, "vkQueueSubmit2");
    vkCmdCopyBuffer2 = xx vkGetInstanceProcAddr(instance, "vkCmdCopyBuffer2");
    vkCmdCopyImage2 = xx vkGetInstanceProcAddr(instance, "vkCmdCopyImage2");
    vkCmdCopyBufferToImage2 = xx vkGetInstanceProcAddr(instance, "vkCmdCopyBufferToImage2");
    vkCmdCopyImageToBuffer2 = xx vkGetInstanceProcAddr(instance, "vkCmdCopyImageToBuffer2");
    vkCmdBlitImage2 = xx vkGetInstanceProcAddr(instance, "vkCmdBlitImage2");
    vkCmdResolveImage2 = xx vkGetInstanceProcAddr(instance, "vkCmdResolveImage2");
    vkCmdBeginRendering = xx vkGetInstanceProcAddr(instance, "vkCmdBeginRendering");
    vkCmdEndRendering = xx vkGetInstanceProcAddr(instance, "vkCmdEndRendering");
    vkCmdSetCullMode = xx vkGetInstanceProcAddr(instance, "vkCmdSetCullMode");
    vkCmdSetFrontFace = xx vkGetInstanceProcAddr(instance, "vkCmdSetFrontFace");
    vkCmdSetPrimitiveTopology = xx vkGetInstanceProcAddr(instance, "vkCmdSetPrimitiveTopology");
    vkCmdSetViewportWithCount = xx vkGetInstanceProcAddr(instance, "vkCmdSetViewportWithCount");
    vkCmdSetScissorWithCount = xx vkGetInstanceProcAddr(instance, "vkCmdSetScissorWithCount");
    vkCmdBindVertexBuffers2 = xx vkGetInstanceProcAddr(instance, "vkCmdBindVertexBuffers2");
    vkCmdSetDepthTestEnable = xx vkGetInstanceProcAddr(instance, "vkCmdSetDepthTestEnable");
    vkCmdSetDepthWriteEnable = xx vkGetInstanceProcAddr(instance, "vkCmdSetDepthWriteEnable");
    vkCmdSetDepthCompareOp = xx vkGetInstanceProcAddr(instance, "vkCmdSetDepthCompareOp");
    vkCmdSetDepthBoundsTestEnable = xx vkGetInstanceProcAddr(instance, "vkCmdSetDepthBoundsTestEnable");
    vkCmdSetStencilTestEnable = xx vkGetInstanceProcAddr(instance, "vkCmdSetStencilTestEnable");
    vkCmdSetStencilOp = xx vkGetInstanceProcAddr(instance, "vkCmdSetStencilOp");
    vkCmdSetRasterizerDiscardEnable = xx vkGetInstanceProcAddr(instance, "vkCmdSetRasterizerDiscardEnable");
    vkCmdSetDepthBiasEnable = xx vkGetInstanceProcAddr(instance, "vkCmdSetDepthBiasEnable");
    vkCmdSetPrimitiveRestartEnable = xx vkGetInstanceProcAddr(instance, "vkCmdSetPrimitiveRestartEnable");
    vkGetDeviceBufferMemoryRequirements = xx vkGetInstanceProcAddr(instance, "vkGetDeviceBufferMemoryRequirements");
    vkGetDeviceImageMemoryRequirements = xx vkGetInstanceProcAddr(instance, "vkGetDeviceImageMemoryRequirements");
    vkGetDeviceImageSparseMemoryRequirements = xx vkGetInstanceProcAddr(instance, "vkGetDeviceImageSparseMemoryRequirements");
    vkCmdSetLineStipple = xx vkGetInstanceProcAddr(instance, "vkCmdSetLineStipple");
    vkMapMemory2 = xx vkGetInstanceProcAddr(instance, "vkMapMemory2");
    vkUnmapMemory2 = xx vkGetInstanceProcAddr(instance, "vkUnmapMemory2");
    vkCmdBindIndexBuffer2 = xx vkGetInstanceProcAddr(instance, "vkCmdBindIndexBuffer2");
    vkGetRenderingAreaGranularity = xx vkGetInstanceProcAddr(instance, "vkGetRenderingAreaGranularity");
    vkGetDeviceImageSubresourceLayout = xx vkGetInstanceProcAddr(instance, "vkGetDeviceImageSubresourceLayout");
    vkGetImageSubresourceLayout2 = xx vkGetInstanceProcAddr(instance, "vkGetImageSubresourceLayout2");
    vkCmdPushDescriptorSet = xx vkGetInstanceProcAddr(instance, "vkCmdPushDescriptorSet");
    vkCmdPushDescriptorSetWithTemplate = xx vkGetInstanceProcAddr(instance, "vkCmdPushDescriptorSetWithTemplate");
    vkCmdSetRenderingAttachmentLocations = xx vkGetInstanceProcAddr(instance, "vkCmdSetRenderingAttachmentLocations");
    vkCmdSetRenderingInputAttachmentIndices = xx vkGetInstanceProcAddr(instance, "vkCmdSetRenderingInputAttachmentIndices");
    vkCmdBindDescriptorSets2 = xx vkGetInstanceProcAddr(instance, "vkCmdBindDescriptorSets2");
    vkCmdPushConstants2 = xx vkGetInstanceProcAddr(instance, "vkCmdPushConstants2");
    vkCmdPushDescriptorSet2 = xx vkGetInstanceProcAddr(instance, "vkCmdPushDescriptorSet2");
    vkCmdPushDescriptorSetWithTemplate2 = xx vkGetInstanceProcAddr(instance, "vkCmdPushDescriptorSetWithTemplate2");
    vkCopyMemoryToImage = xx vkGetInstanceProcAddr(instance, "vkCopyMemoryToImage");
    vkCopyImageToMemory = xx vkGetInstanceProcAddr(instance, "vkCopyImageToMemory");
    vkCopyImageToImage = xx vkGetInstanceProcAddr(instance, "vkCopyImageToImage");
    vkTransitionImageLayout = xx vkGetInstanceProcAddr(instance, "vkTransitionImageLayout");
    vkCreateSwapchainKHR = xx vkGetInstanceProcAddr(instance, "vkCreateSwapchainKHR");
    vkDestroySwapchainKHR = xx vkGetInstanceProcAddr(instance, "vkDestroySwapchainKHR");
    vkGetSwapchainImagesKHR = xx vkGetInstanceProcAddr(instance, "vkGetSwapchainImagesKHR");
    vkAcquireNextImageKHR = xx vkGetInstanceProcAddr(instance, "vkAcquireNextImageKHR");
    vkQueuePresentKHR = xx vkGetInstanceProcAddr(instance, "vkQueuePresentKHR");
    vkGetDeviceGroupPresentCapabilitiesKHR = xx vkGetInstanceProcAddr(instance, "vkGetDeviceGroupPresentCapabilitiesKHR");
    vkGetDeviceGroupSurfacePresentModesKHR = xx vkGetInstanceProcAddr(instance, "vkGetDeviceGroupSurfacePresentModesKHR");
    vkAcquireNextImage2KHR = xx vkGetInstanceProcAddr(instance, "vkAcquireNextImage2KHR");
    vkCreateSharedSwapchainsKHR = xx vkGetInstanceProcAddr(instance, "vkCreateSharedSwapchainsKHR");
    vkCreateVideoSessionKHR = xx vkGetInstanceProcAddr(instance, "vkCreateVideoSessionKHR");
    vkDestroyVideoSessionKHR = xx vkGetInstanceProcAddr(instance, "vkDestroyVideoSessionKHR");
    vkGetVideoSessionMemoryRequirementsKHR = xx vkGetInstanceProcAddr(instance, "vkGetVideoSessionMemoryRequirementsKHR");
    vkBindVideoSessionMemoryKHR = xx vkGetInstanceProcAddr(instance, "vkBindVideoSessionMemoryKHR");
    vkCreateVideoSessionParametersKHR = xx vkGetInstanceProcAddr(instance, "vkCreateVideoSessionParametersKHR");
    vkUpdateVideoSessionParametersKHR = xx vkGetInstanceProcAddr(instance, "vkUpdateVideoSessionParametersKHR");
    vkDestroyVideoSessionParametersKHR = xx vkGetInstanceProcAddr(instance, "vkDestroyVideoSessionParametersKHR");
    vkCmdBeginVideoCodingKHR = xx vkGetInstanceProcAddr(instance, "vkCmdBeginVideoCodingKHR");
    vkCmdEndVideoCodingKHR = xx vkGetInstanceProcAddr(instance, "vkCmdEndVideoCodingKHR");
    vkCmdControlVideoCodingKHR = xx vkGetInstanceProcAddr(instance, "vkCmdControlVideoCodingKHR");
    vkCmdDecodeVideoKHR = xx vkGetInstanceProcAddr(instance, "vkCmdDecodeVideoKHR");
    vkCmdBeginRenderingKHR = xx vkGetInstanceProcAddr(instance, "vkCmdBeginRenderingKHR");
    vkCmdEndRenderingKHR = xx vkGetInstanceProcAddr(instance, "vkCmdEndRenderingKHR");
    vkGetDeviceGroupPeerMemoryFeaturesKHR = xx vkGetInstanceProcAddr(instance, "vkGetDeviceGroupPeerMemoryFeaturesKHR");
    vkCmdSetDeviceMaskKHR = xx vkGetInstanceProcAddr(instance, "vkCmdSetDeviceMaskKHR");
    vkCmdDispatchBaseKHR = xx vkGetInstanceProcAddr(instance, "vkCmdDispatchBaseKHR");
    vkTrimCommandPoolKHR = xx vkGetInstanceProcAddr(instance, "vkTrimCommandPoolKHR");
    vkGetMemoryFdKHR = xx vkGetInstanceProcAddr(instance, "vkGetMemoryFdKHR");
    vkGetMemoryFdPropertiesKHR = xx vkGetInstanceProcAddr(instance, "vkGetMemoryFdPropertiesKHR");
    vkImportSemaphoreFdKHR = xx vkGetInstanceProcAddr(instance, "vkImportSemaphoreFdKHR");
    vkGetSemaphoreFdKHR = xx vkGetInstanceProcAddr(instance, "vkGetSemaphoreFdKHR");
    vkCmdPushDescriptorSetKHR = xx vkGetInstanceProcAddr(instance, "vkCmdPushDescriptorSetKHR");
    vkCmdPushDescriptorSetWithTemplateKHR = xx vkGetInstanceProcAddr(instance, "vkCmdPushDescriptorSetWithTemplateKHR");
    vkCreateDescriptorUpdateTemplateKHR = xx vkGetInstanceProcAddr(instance, "vkCreateDescriptorUpdateTemplateKHR");
    vkDestroyDescriptorUpdateTemplateKHR = xx vkGetInstanceProcAddr(instance, "vkDestroyDescriptorUpdateTemplateKHR");
    vkUpdateDescriptorSetWithTemplateKHR = xx vkGetInstanceProcAddr(instance, "vkUpdateDescriptorSetWithTemplateKHR");
    vkCreateRenderPass2KHR = xx vkGetInstanceProcAddr(instance, "vkCreateRenderPass2KHR");
    vkCmdBeginRenderPass2KHR = xx vkGetInstanceProcAddr(instance, "vkCmdBeginRenderPass2KHR");
    vkCmdNextSubpass2KHR = xx vkGetInstanceProcAddr(instance, "vkCmdNextSubpass2KHR");
    vkCmdEndRenderPass2KHR = xx vkGetInstanceProcAddr(instance, "vkCmdEndRenderPass2KHR");
    vkGetSwapchainStatusKHR = xx vkGetInstanceProcAddr(instance, "vkGetSwapchainStatusKHR");
    vkImportFenceFdKHR = xx vkGetInstanceProcAddr(instance, "vkImportFenceFdKHR");
    vkGetFenceFdKHR = xx vkGetInstanceProcAddr(instance, "vkGetFenceFdKHR");
    vkAcquireProfilingLockKHR = xx vkGetInstanceProcAddr(instance, "vkAcquireProfilingLockKHR");
    vkReleaseProfilingLockKHR = xx vkGetInstanceProcAddr(instance, "vkReleaseProfilingLockKHR");
    vkGetImageMemoryRequirements2KHR = xx vkGetInstanceProcAddr(instance, "vkGetImageMemoryRequirements2KHR");
    vkGetBufferMemoryRequirements2KHR = xx vkGetInstanceProcAddr(instance, "vkGetBufferMemoryRequirements2KHR");
    vkGetImageSparseMemoryRequirements2KHR = xx vkGetInstanceProcAddr(instance, "vkGetImageSparseMemoryRequirements2KHR");
    vkCreateSamplerYcbcrConversionKHR = xx vkGetInstanceProcAddr(instance, "vkCreateSamplerYcbcrConversionKHR");
    vkDestroySamplerYcbcrConversionKHR = xx vkGetInstanceProcAddr(instance, "vkDestroySamplerYcbcrConversionKHR");
    vkBindBufferMemory2KHR = xx vkGetInstanceProcAddr(instance, "vkBindBufferMemory2KHR");
    vkBindImageMemory2KHR = xx vkGetInstanceProcAddr(instance, "vkBindImageMemory2KHR");
    vkGetDescriptorSetLayoutSupportKHR = xx vkGetInstanceProcAddr(instance, "vkGetDescriptorSetLayoutSupportKHR");
    vkCmdDrawIndirectCountKHR = xx vkGetInstanceProcAddr(instance, "vkCmdDrawIndirectCountKHR");
    vkCmdDrawIndexedIndirectCountKHR = xx vkGetInstanceProcAddr(instance, "vkCmdDrawIndexedIndirectCountKHR");
    vkGetSemaphoreCounterValueKHR = xx vkGetInstanceProcAddr(instance, "vkGetSemaphoreCounterValueKHR");
    vkWaitSemaphoresKHR = xx vkGetInstanceProcAddr(instance, "vkWaitSemaphoresKHR");
    vkSignalSemaphoreKHR = xx vkGetInstanceProcAddr(instance, "vkSignalSemaphoreKHR");
    vkCmdSetFragmentShadingRateKHR = xx vkGetInstanceProcAddr(instance, "vkCmdSetFragmentShadingRateKHR");
    vkCmdSetRenderingAttachmentLocationsKHR = xx vkGetInstanceProcAddr(instance, "vkCmdSetRenderingAttachmentLocationsKHR");
    vkCmdSetRenderingInputAttachmentIndicesKHR = xx vkGetInstanceProcAddr(instance, "vkCmdSetRenderingInputAttachmentIndicesKHR");
    vkWaitForPresentKHR = xx vkGetInstanceProcAddr(instance, "vkWaitForPresentKHR");
    vkGetBufferDeviceAddressKHR = xx vkGetInstanceProcAddr(instance, "vkGetBufferDeviceAddressKHR");
    vkGetBufferOpaqueCaptureAddressKHR = xx vkGetInstanceProcAddr(instance, "vkGetBufferOpaqueCaptureAddressKHR");
    vkGetDeviceMemoryOpaqueCaptureAddressKHR = xx vkGetInstanceProcAddr(instance, "vkGetDeviceMemoryOpaqueCaptureAddressKHR");
    vkCreateDeferredOperationKHR = xx vkGetInstanceProcAddr(instance, "vkCreateDeferredOperationKHR");
    vkDestroyDeferredOperationKHR = xx vkGetInstanceProcAddr(instance, "vkDestroyDeferredOperationKHR");
    vkGetDeferredOperationMaxConcurrencyKHR = xx vkGetInstanceProcAddr(instance, "vkGetDeferredOperationMaxConcurrencyKHR");
    vkGetDeferredOperationResultKHR = xx vkGetInstanceProcAddr(instance, "vkGetDeferredOperationResultKHR");
    vkDeferredOperationJoinKHR = xx vkGetInstanceProcAddr(instance, "vkDeferredOperationJoinKHR");
    vkGetPipelineExecutablePropertiesKHR = xx vkGetInstanceProcAddr(instance, "vkGetPipelineExecutablePropertiesKHR");
    vkGetPipelineExecutableStatisticsKHR = xx vkGetInstanceProcAddr(instance, "vkGetPipelineExecutableStatisticsKHR");
    vkGetPipelineExecutableInternalRepresentationsKHR = xx vkGetInstanceProcAddr(instance, "vkGetPipelineExecutableInternalRepresentationsKHR");
    vkMapMemory2KHR = xx vkGetInstanceProcAddr(instance, "vkMapMemory2KHR");
    vkUnmapMemory2KHR = xx vkGetInstanceProcAddr(instance, "vkUnmapMemory2KHR");
    vkGetEncodedVideoSessionParametersKHR = xx vkGetInstanceProcAddr(instance, "vkGetEncodedVideoSessionParametersKHR");
    vkCmdEncodeVideoKHR = xx vkGetInstanceProcAddr(instance, "vkCmdEncodeVideoKHR");
    vkCmdSetEvent2KHR = xx vkGetInstanceProcAddr(instance, "vkCmdSetEvent2KHR");
    vkCmdResetEvent2KHR = xx vkGetInstanceProcAddr(instance, "vkCmdResetEvent2KHR");
    vkCmdWaitEvents2KHR = xx vkGetInstanceProcAddr(instance, "vkCmdWaitEvents2KHR");
    vkCmdPipelineBarrier2KHR = xx vkGetInstanceProcAddr(instance, "vkCmdPipelineBarrier2KHR");
    vkCmdWriteTimestamp2KHR = xx vkGetInstanceProcAddr(instance, "vkCmdWriteTimestamp2KHR");
    vkQueueSubmit2KHR = xx vkGetInstanceProcAddr(instance, "vkQueueSubmit2KHR");
    vkCmdCopyBuffer2KHR = xx vkGetInstanceProcAddr(instance, "vkCmdCopyBuffer2KHR");
    vkCmdCopyImage2KHR = xx vkGetInstanceProcAddr(instance, "vkCmdCopyImage2KHR");
    vkCmdCopyBufferToImage2KHR = xx vkGetInstanceProcAddr(instance, "vkCmdCopyBufferToImage2KHR");
    vkCmdCopyImageToBuffer2KHR = xx vkGetInstanceProcAddr(instance, "vkCmdCopyImageToBuffer2KHR");
    vkCmdBlitImage2KHR = xx vkGetInstanceProcAddr(instance, "vkCmdBlitImage2KHR");
    vkCmdResolveImage2KHR = xx vkGetInstanceProcAddr(instance, "vkCmdResolveImage2KHR");
    vkCmdTraceRaysIndirect2KHR = xx vkGetInstanceProcAddr(instance, "vkCmdTraceRaysIndirect2KHR");
    vkGetDeviceBufferMemoryRequirementsKHR = xx vkGetInstanceProcAddr(instance, "vkGetDeviceBufferMemoryRequirementsKHR");
    vkGetDeviceImageMemoryRequirementsKHR = xx vkGetInstanceProcAddr(instance, "vkGetDeviceImageMemoryRequirementsKHR");
    vkGetDeviceImageSparseMemoryRequirementsKHR = xx vkGetInstanceProcAddr(instance, "vkGetDeviceImageSparseMemoryRequirementsKHR");
    vkCmdBindIndexBuffer2KHR = xx vkGetInstanceProcAddr(instance, "vkCmdBindIndexBuffer2KHR");
    vkGetRenderingAreaGranularityKHR = xx vkGetInstanceProcAddr(instance, "vkGetRenderingAreaGranularityKHR");
    vkGetDeviceImageSubresourceLayoutKHR = xx vkGetInstanceProcAddr(instance, "vkGetDeviceImageSubresourceLayoutKHR");
    vkGetImageSubresourceLayout2KHR = xx vkGetInstanceProcAddr(instance, "vkGetImageSubresourceLayout2KHR");
    vkCreatePipelineBinariesKHR = xx vkGetInstanceProcAddr(instance, "vkCreatePipelineBinariesKHR");
    vkDestroyPipelineBinaryKHR = xx vkGetInstanceProcAddr(instance, "vkDestroyPipelineBinaryKHR");
    vkGetPipelineKeyKHR = xx vkGetInstanceProcAddr(instance, "vkGetPipelineKeyKHR");
    vkGetPipelineBinaryDataKHR = xx vkGetInstanceProcAddr(instance, "vkGetPipelineBinaryDataKHR");
    vkReleaseCapturedPipelineDataKHR = xx vkGetInstanceProcAddr(instance, "vkReleaseCapturedPipelineDataKHR");
    vkCmdSetLineStippleKHR = xx vkGetInstanceProcAddr(instance, "vkCmdSetLineStippleKHR");
    vkGetCalibratedTimestampsKHR = xx vkGetInstanceProcAddr(instance, "vkGetCalibratedTimestampsKHR");
    vkCmdBindDescriptorSets2KHR = xx vkGetInstanceProcAddr(instance, "vkCmdBindDescriptorSets2KHR");
    vkCmdPushConstants2KHR = xx vkGetInstanceProcAddr(instance, "vkCmdPushConstants2KHR");
    vkCmdPushDescriptorSet2KHR = xx vkGetInstanceProcAddr(instance, "vkCmdPushDescriptorSet2KHR");
    vkCmdPushDescriptorSetWithTemplate2KHR = xx vkGetInstanceProcAddr(instance, "vkCmdPushDescriptorSetWithTemplate2KHR");
    vkCmdSetDescriptorBufferOffsets2EXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetDescriptorBufferOffsets2EXT");
    vkCmdBindDescriptorBufferEmbeddedSamplers2EXT = xx vkGetInstanceProcAddr(instance, "vkCmdBindDescriptorBufferEmbeddedSamplers2EXT");
    vkDebugMarkerSetObjectTagEXT = xx vkGetInstanceProcAddr(instance, "vkDebugMarkerSetObjectTagEXT");
    vkDebugMarkerSetObjectNameEXT = xx vkGetInstanceProcAddr(instance, "vkDebugMarkerSetObjectNameEXT");
    vkCmdDebugMarkerBeginEXT = xx vkGetInstanceProcAddr(instance, "vkCmdDebugMarkerBeginEXT");
    vkCmdDebugMarkerEndEXT = xx vkGetInstanceProcAddr(instance, "vkCmdDebugMarkerEndEXT");
    vkCmdDebugMarkerInsertEXT = xx vkGetInstanceProcAddr(instance, "vkCmdDebugMarkerInsertEXT");
    vkCmdBindTransformFeedbackBuffersEXT = xx vkGetInstanceProcAddr(instance, "vkCmdBindTransformFeedbackBuffersEXT");
    vkCmdBeginTransformFeedbackEXT = xx vkGetInstanceProcAddr(instance, "vkCmdBeginTransformFeedbackEXT");
    vkCmdEndTransformFeedbackEXT = xx vkGetInstanceProcAddr(instance, "vkCmdEndTransformFeedbackEXT");
    vkCmdBeginQueryIndexedEXT = xx vkGetInstanceProcAddr(instance, "vkCmdBeginQueryIndexedEXT");
    vkCmdEndQueryIndexedEXT = xx vkGetInstanceProcAddr(instance, "vkCmdEndQueryIndexedEXT");
    vkCmdDrawIndirectByteCountEXT = xx vkGetInstanceProcAddr(instance, "vkCmdDrawIndirectByteCountEXT");
    vkCreateCuModuleNVX = xx vkGetInstanceProcAddr(instance, "vkCreateCuModuleNVX");
    vkCreateCuFunctionNVX = xx vkGetInstanceProcAddr(instance, "vkCreateCuFunctionNVX");
    vkDestroyCuModuleNVX = xx vkGetInstanceProcAddr(instance, "vkDestroyCuModuleNVX");
    vkDestroyCuFunctionNVX = xx vkGetInstanceProcAddr(instance, "vkDestroyCuFunctionNVX");
    vkCmdCuLaunchKernelNVX = xx vkGetInstanceProcAddr(instance, "vkCmdCuLaunchKernelNVX");
    vkGetImageViewHandleNVX = xx vkGetInstanceProcAddr(instance, "vkGetImageViewHandleNVX");
    vkGetImageViewHandle64NVX = xx vkGetInstanceProcAddr(instance, "vkGetImageViewHandle64NVX");
    vkGetImageViewAddressNVX = xx vkGetInstanceProcAddr(instance, "vkGetImageViewAddressNVX");
    vkCmdDrawIndirectCountAMD = xx vkGetInstanceProcAddr(instance, "vkCmdDrawIndirectCountAMD");
    vkCmdDrawIndexedIndirectCountAMD = xx vkGetInstanceProcAddr(instance, "vkCmdDrawIndexedIndirectCountAMD");
    vkGetShaderInfoAMD = xx vkGetInstanceProcAddr(instance, "vkGetShaderInfoAMD");
    vkCmdBeginConditionalRenderingEXT = xx vkGetInstanceProcAddr(instance, "vkCmdBeginConditionalRenderingEXT");
    vkCmdEndConditionalRenderingEXT = xx vkGetInstanceProcAddr(instance, "vkCmdEndConditionalRenderingEXT");
    vkCmdSetViewportWScalingNV = xx vkGetInstanceProcAddr(instance, "vkCmdSetViewportWScalingNV");
    vkDisplayPowerControlEXT = xx vkGetInstanceProcAddr(instance, "vkDisplayPowerControlEXT");
    vkRegisterDeviceEventEXT = xx vkGetInstanceProcAddr(instance, "vkRegisterDeviceEventEXT");
    vkRegisterDisplayEventEXT = xx vkGetInstanceProcAddr(instance, "vkRegisterDisplayEventEXT");
    vkGetSwapchainCounterEXT = xx vkGetInstanceProcAddr(instance, "vkGetSwapchainCounterEXT");
    vkGetRefreshCycleDurationGOOGLE = xx vkGetInstanceProcAddr(instance, "vkGetRefreshCycleDurationGOOGLE");
    vkGetPastPresentationTimingGOOGLE = xx vkGetInstanceProcAddr(instance, "vkGetPastPresentationTimingGOOGLE");
    vkCmdSetDiscardRectangleEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetDiscardRectangleEXT");
    vkCmdSetDiscardRectangleEnableEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetDiscardRectangleEnableEXT");
    vkCmdSetDiscardRectangleModeEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetDiscardRectangleModeEXT");
    vkSetHdrMetadataEXT = xx vkGetInstanceProcAddr(instance, "vkSetHdrMetadataEXT");
    vkSetDebugUtilsObjectNameEXT = xx vkGetInstanceProcAddr(instance, "vkSetDebugUtilsObjectNameEXT");
    vkSetDebugUtilsObjectTagEXT = xx vkGetInstanceProcAddr(instance, "vkSetDebugUtilsObjectTagEXT");
    vkQueueBeginDebugUtilsLabelEXT = xx vkGetInstanceProcAddr(instance, "vkQueueBeginDebugUtilsLabelEXT");
    vkQueueEndDebugUtilsLabelEXT = xx vkGetInstanceProcAddr(instance, "vkQueueEndDebugUtilsLabelEXT");
    vkQueueInsertDebugUtilsLabelEXT = xx vkGetInstanceProcAddr(instance, "vkQueueInsertDebugUtilsLabelEXT");
    vkCmdBeginDebugUtilsLabelEXT = xx vkGetInstanceProcAddr(instance, "vkCmdBeginDebugUtilsLabelEXT");
    vkCmdEndDebugUtilsLabelEXT = xx vkGetInstanceProcAddr(instance, "vkCmdEndDebugUtilsLabelEXT");
    vkCmdInsertDebugUtilsLabelEXT = xx vkGetInstanceProcAddr(instance, "vkCmdInsertDebugUtilsLabelEXT");
    vkCmdSetSampleLocationsEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetSampleLocationsEXT");
    vkGetImageDrmFormatModifierPropertiesEXT = xx vkGetInstanceProcAddr(instance, "vkGetImageDrmFormatModifierPropertiesEXT");
    vkCreateValidationCacheEXT = xx vkGetInstanceProcAddr(instance, "vkCreateValidationCacheEXT");
    vkDestroyValidationCacheEXT = xx vkGetInstanceProcAddr(instance, "vkDestroyValidationCacheEXT");
    vkMergeValidationCachesEXT = xx vkGetInstanceProcAddr(instance, "vkMergeValidationCachesEXT");
    vkGetValidationCacheDataEXT = xx vkGetInstanceProcAddr(instance, "vkGetValidationCacheDataEXT");
    vkCmdBindShadingRateImageNV = xx vkGetInstanceProcAddr(instance, "vkCmdBindShadingRateImageNV");
    vkCmdSetViewportShadingRatePaletteNV = xx vkGetInstanceProcAddr(instance, "vkCmdSetViewportShadingRatePaletteNV");
    vkCmdSetCoarseSampleOrderNV = xx vkGetInstanceProcAddr(instance, "vkCmdSetCoarseSampleOrderNV");
    vkCreateAccelerationStructureNV = xx vkGetInstanceProcAddr(instance, "vkCreateAccelerationStructureNV");
    vkDestroyAccelerationStructureNV = xx vkGetInstanceProcAddr(instance, "vkDestroyAccelerationStructureNV");
    vkGetAccelerationStructureMemoryRequirementsNV = xx vkGetInstanceProcAddr(instance, "vkGetAccelerationStructureMemoryRequirementsNV");
    vkBindAccelerationStructureMemoryNV = xx vkGetInstanceProcAddr(instance, "vkBindAccelerationStructureMemoryNV");
    vkCmdBuildAccelerationStructureNV = xx vkGetInstanceProcAddr(instance, "vkCmdBuildAccelerationStructureNV");
    vkCmdCopyAccelerationStructureNV = xx vkGetInstanceProcAddr(instance, "vkCmdCopyAccelerationStructureNV");
    vkCmdTraceRaysNV = xx vkGetInstanceProcAddr(instance, "vkCmdTraceRaysNV");
    vkCreateRayTracingPipelinesNV = xx vkGetInstanceProcAddr(instance, "vkCreateRayTracingPipelinesNV");
    vkGetRayTracingShaderGroupHandlesKHR = xx vkGetInstanceProcAddr(instance, "vkGetRayTracingShaderGroupHandlesKHR");
    vkGetRayTracingShaderGroupHandlesNV = xx vkGetInstanceProcAddr(instance, "vkGetRayTracingShaderGroupHandlesNV");
    vkGetAccelerationStructureHandleNV = xx vkGetInstanceProcAddr(instance, "vkGetAccelerationStructureHandleNV");
    vkCmdWriteAccelerationStructuresPropertiesNV = xx vkGetInstanceProcAddr(instance, "vkCmdWriteAccelerationStructuresPropertiesNV");
    vkCompileDeferredNV = xx vkGetInstanceProcAddr(instance, "vkCompileDeferredNV");
    vkGetMemoryHostPointerPropertiesEXT = xx vkGetInstanceProcAddr(instance, "vkGetMemoryHostPointerPropertiesEXT");
    vkCmdWriteBufferMarkerAMD = xx vkGetInstanceProcAddr(instance, "vkCmdWriteBufferMarkerAMD");
    vkCmdWriteBufferMarker2AMD = xx vkGetInstanceProcAddr(instance, "vkCmdWriteBufferMarker2AMD");
    vkGetCalibratedTimestampsEXT = xx vkGetInstanceProcAddr(instance, "vkGetCalibratedTimestampsEXT");
    vkCmdDrawMeshTasksNV = xx vkGetInstanceProcAddr(instance, "vkCmdDrawMeshTasksNV");
    vkCmdDrawMeshTasksIndirectNV = xx vkGetInstanceProcAddr(instance, "vkCmdDrawMeshTasksIndirectNV");
    vkCmdDrawMeshTasksIndirectCountNV = xx vkGetInstanceProcAddr(instance, "vkCmdDrawMeshTasksIndirectCountNV");
    vkCmdSetExclusiveScissorEnableNV = xx vkGetInstanceProcAddr(instance, "vkCmdSetExclusiveScissorEnableNV");
    vkCmdSetExclusiveScissorNV = xx vkGetInstanceProcAddr(instance, "vkCmdSetExclusiveScissorNV");
    vkCmdSetCheckpointNV = xx vkGetInstanceProcAddr(instance, "vkCmdSetCheckpointNV");
    vkGetQueueCheckpointDataNV = xx vkGetInstanceProcAddr(instance, "vkGetQueueCheckpointDataNV");
    vkGetQueueCheckpointData2NV = xx vkGetInstanceProcAddr(instance, "vkGetQueueCheckpointData2NV");
    vkInitializePerformanceApiINTEL = xx vkGetInstanceProcAddr(instance, "vkInitializePerformanceApiINTEL");
    vkUninitializePerformanceApiINTEL = xx vkGetInstanceProcAddr(instance, "vkUninitializePerformanceApiINTEL");
    vkCmdSetPerformanceMarkerINTEL = xx vkGetInstanceProcAddr(instance, "vkCmdSetPerformanceMarkerINTEL");
    vkCmdSetPerformanceStreamMarkerINTEL = xx vkGetInstanceProcAddr(instance, "vkCmdSetPerformanceStreamMarkerINTEL");
    vkCmdSetPerformanceOverrideINTEL = xx vkGetInstanceProcAddr(instance, "vkCmdSetPerformanceOverrideINTEL");
    vkAcquirePerformanceConfigurationINTEL = xx vkGetInstanceProcAddr(instance, "vkAcquirePerformanceConfigurationINTEL");
    vkReleasePerformanceConfigurationINTEL = xx vkGetInstanceProcAddr(instance, "vkReleasePerformanceConfigurationINTEL");
    vkQueueSetPerformanceConfigurationINTEL = xx vkGetInstanceProcAddr(instance, "vkQueueSetPerformanceConfigurationINTEL");
    vkGetPerformanceParameterINTEL = xx vkGetInstanceProcAddr(instance, "vkGetPerformanceParameterINTEL");
    vkSetLocalDimmingAMD = xx vkGetInstanceProcAddr(instance, "vkSetLocalDimmingAMD");
    vkGetBufferDeviceAddressEXT = xx vkGetInstanceProcAddr(instance, "vkGetBufferDeviceAddressEXT");
    vkCmdSetLineStippleEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetLineStippleEXT");
    vkResetQueryPoolEXT = xx vkGetInstanceProcAddr(instance, "vkResetQueryPoolEXT");
    vkCmdSetCullModeEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetCullModeEXT");
    vkCmdSetFrontFaceEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetFrontFaceEXT");
    vkCmdSetPrimitiveTopologyEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetPrimitiveTopologyEXT");
    vkCmdSetViewportWithCountEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetViewportWithCountEXT");
    vkCmdSetScissorWithCountEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetScissorWithCountEXT");
    vkCmdBindVertexBuffers2EXT = xx vkGetInstanceProcAddr(instance, "vkCmdBindVertexBuffers2EXT");
    vkCmdSetDepthTestEnableEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetDepthTestEnableEXT");
    vkCmdSetDepthWriteEnableEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetDepthWriteEnableEXT");
    vkCmdSetDepthCompareOpEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetDepthCompareOpEXT");
    vkCmdSetDepthBoundsTestEnableEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetDepthBoundsTestEnableEXT");
    vkCmdSetStencilTestEnableEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetStencilTestEnableEXT");
    vkCmdSetStencilOpEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetStencilOpEXT");
    vkCopyMemoryToImageEXT = xx vkGetInstanceProcAddr(instance, "vkCopyMemoryToImageEXT");
    vkCopyImageToMemoryEXT = xx vkGetInstanceProcAddr(instance, "vkCopyImageToMemoryEXT");
    vkCopyImageToImageEXT = xx vkGetInstanceProcAddr(instance, "vkCopyImageToImageEXT");
    vkTransitionImageLayoutEXT = xx vkGetInstanceProcAddr(instance, "vkTransitionImageLayoutEXT");
    vkGetImageSubresourceLayout2EXT = xx vkGetInstanceProcAddr(instance, "vkGetImageSubresourceLayout2EXT");
    vkReleaseSwapchainImagesEXT = xx vkGetInstanceProcAddr(instance, "vkReleaseSwapchainImagesEXT");
    vkGetGeneratedCommandsMemoryRequirementsNV = xx vkGetInstanceProcAddr(instance, "vkGetGeneratedCommandsMemoryRequirementsNV");
    vkCmdPreprocessGeneratedCommandsNV = xx vkGetInstanceProcAddr(instance, "vkCmdPreprocessGeneratedCommandsNV");
    vkCmdExecuteGeneratedCommandsNV = xx vkGetInstanceProcAddr(instance, "vkCmdExecuteGeneratedCommandsNV");
    vkCmdBindPipelineShaderGroupNV = xx vkGetInstanceProcAddr(instance, "vkCmdBindPipelineShaderGroupNV");
    vkCreateIndirectCommandsLayoutNV = xx vkGetInstanceProcAddr(instance, "vkCreateIndirectCommandsLayoutNV");
    vkDestroyIndirectCommandsLayoutNV = xx vkGetInstanceProcAddr(instance, "vkDestroyIndirectCommandsLayoutNV");
    vkCmdSetDepthBias2EXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetDepthBias2EXT");
    vkCreatePrivateDataSlotEXT = xx vkGetInstanceProcAddr(instance, "vkCreatePrivateDataSlotEXT");
    vkDestroyPrivateDataSlotEXT = xx vkGetInstanceProcAddr(instance, "vkDestroyPrivateDataSlotEXT");
    vkSetPrivateDataEXT = xx vkGetInstanceProcAddr(instance, "vkSetPrivateDataEXT");
    vkGetPrivateDataEXT = xx vkGetInstanceProcAddr(instance, "vkGetPrivateDataEXT");
    vkCreateCudaModuleNV = xx vkGetInstanceProcAddr(instance, "vkCreateCudaModuleNV");
    vkGetCudaModuleCacheNV = xx vkGetInstanceProcAddr(instance, "vkGetCudaModuleCacheNV");
    vkCreateCudaFunctionNV = xx vkGetInstanceProcAddr(instance, "vkCreateCudaFunctionNV");
    vkDestroyCudaModuleNV = xx vkGetInstanceProcAddr(instance, "vkDestroyCudaModuleNV");
    vkDestroyCudaFunctionNV = xx vkGetInstanceProcAddr(instance, "vkDestroyCudaFunctionNV");
    vkCmdCudaLaunchKernelNV = xx vkGetInstanceProcAddr(instance, "vkCmdCudaLaunchKernelNV");
    vkCmdDispatchTileQCOM = xx vkGetInstanceProcAddr(instance, "vkCmdDispatchTileQCOM");
    vkCmdBeginPerTileExecutionQCOM = xx vkGetInstanceProcAddr(instance, "vkCmdBeginPerTileExecutionQCOM");
    vkCmdEndPerTileExecutionQCOM = xx vkGetInstanceProcAddr(instance, "vkCmdEndPerTileExecutionQCOM");
    vkGetDescriptorSetLayoutSizeEXT = xx vkGetInstanceProcAddr(instance, "vkGetDescriptorSetLayoutSizeEXT");
    vkGetDescriptorSetLayoutBindingOffsetEXT = xx vkGetInstanceProcAddr(instance, "vkGetDescriptorSetLayoutBindingOffsetEXT");
    vkGetDescriptorEXT = xx vkGetInstanceProcAddr(instance, "vkGetDescriptorEXT");
    vkCmdBindDescriptorBuffersEXT = xx vkGetInstanceProcAddr(instance, "vkCmdBindDescriptorBuffersEXT");
    vkCmdSetDescriptorBufferOffsetsEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetDescriptorBufferOffsetsEXT");
    vkCmdBindDescriptorBufferEmbeddedSamplersEXT = xx vkGetInstanceProcAddr(instance, "vkCmdBindDescriptorBufferEmbeddedSamplersEXT");
    vkGetBufferOpaqueCaptureDescriptorDataEXT = xx vkGetInstanceProcAddr(instance, "vkGetBufferOpaqueCaptureDescriptorDataEXT");
    vkGetImageOpaqueCaptureDescriptorDataEXT = xx vkGetInstanceProcAddr(instance, "vkGetImageOpaqueCaptureDescriptorDataEXT");
    vkGetImageViewOpaqueCaptureDescriptorDataEXT = xx vkGetInstanceProcAddr(instance, "vkGetImageViewOpaqueCaptureDescriptorDataEXT");
    vkGetSamplerOpaqueCaptureDescriptorDataEXT = xx vkGetInstanceProcAddr(instance, "vkGetSamplerOpaqueCaptureDescriptorDataEXT");
    vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT = xx vkGetInstanceProcAddr(instance, "vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT");
    vkCmdSetFragmentShadingRateEnumNV = xx vkGetInstanceProcAddr(instance, "vkCmdSetFragmentShadingRateEnumNV");
    vkGetDeviceFaultInfoEXT = xx vkGetInstanceProcAddr(instance, "vkGetDeviceFaultInfoEXT");
    vkCmdSetVertexInputEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetVertexInputEXT");
    vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI = xx vkGetInstanceProcAddr(instance, "vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI");
    vkCmdSubpassShadingHUAWEI = xx vkGetInstanceProcAddr(instance, "vkCmdSubpassShadingHUAWEI");
    vkCmdBindInvocationMaskHUAWEI = xx vkGetInstanceProcAddr(instance, "vkCmdBindInvocationMaskHUAWEI");
    vkGetMemoryRemoteAddressNV = xx vkGetInstanceProcAddr(instance, "vkGetMemoryRemoteAddressNV");
    vkGetPipelinePropertiesEXT = xx vkGetInstanceProcAddr(instance, "vkGetPipelinePropertiesEXT");
    vkCmdSetPatchControlPointsEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetPatchControlPointsEXT");
    vkCmdSetRasterizerDiscardEnableEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetRasterizerDiscardEnableEXT");
    vkCmdSetDepthBiasEnableEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetDepthBiasEnableEXT");
    vkCmdSetLogicOpEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetLogicOpEXT");
    vkCmdSetPrimitiveRestartEnableEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetPrimitiveRestartEnableEXT");
    vkCmdSetColorWriteEnableEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetColorWriteEnableEXT");
    vkCmdDrawMultiEXT = xx vkGetInstanceProcAddr(instance, "vkCmdDrawMultiEXT");
    vkCmdDrawMultiIndexedEXT = xx vkGetInstanceProcAddr(instance, "vkCmdDrawMultiIndexedEXT");
    vkCreateMicromapEXT = xx vkGetInstanceProcAddr(instance, "vkCreateMicromapEXT");
    vkDestroyMicromapEXT = xx vkGetInstanceProcAddr(instance, "vkDestroyMicromapEXT");
    vkCmdBuildMicromapsEXT = xx vkGetInstanceProcAddr(instance, "vkCmdBuildMicromapsEXT");
    vkBuildMicromapsEXT = xx vkGetInstanceProcAddr(instance, "vkBuildMicromapsEXT");
    vkCopyMicromapEXT = xx vkGetInstanceProcAddr(instance, "vkCopyMicromapEXT");
    vkCopyMicromapToMemoryEXT = xx vkGetInstanceProcAddr(instance, "vkCopyMicromapToMemoryEXT");
    vkCopyMemoryToMicromapEXT = xx vkGetInstanceProcAddr(instance, "vkCopyMemoryToMicromapEXT");
    vkWriteMicromapsPropertiesEXT = xx vkGetInstanceProcAddr(instance, "vkWriteMicromapsPropertiesEXT");
    vkCmdCopyMicromapEXT = xx vkGetInstanceProcAddr(instance, "vkCmdCopyMicromapEXT");
    vkCmdCopyMicromapToMemoryEXT = xx vkGetInstanceProcAddr(instance, "vkCmdCopyMicromapToMemoryEXT");
    vkCmdCopyMemoryToMicromapEXT = xx vkGetInstanceProcAddr(instance, "vkCmdCopyMemoryToMicromapEXT");
    vkCmdWriteMicromapsPropertiesEXT = xx vkGetInstanceProcAddr(instance, "vkCmdWriteMicromapsPropertiesEXT");
    vkGetDeviceMicromapCompatibilityEXT = xx vkGetInstanceProcAddr(instance, "vkGetDeviceMicromapCompatibilityEXT");
    vkGetMicromapBuildSizesEXT = xx vkGetInstanceProcAddr(instance, "vkGetMicromapBuildSizesEXT");
    vkCmdDrawClusterHUAWEI = xx vkGetInstanceProcAddr(instance, "vkCmdDrawClusterHUAWEI");
    vkCmdDrawClusterIndirectHUAWEI = xx vkGetInstanceProcAddr(instance, "vkCmdDrawClusterIndirectHUAWEI");
    vkSetDeviceMemoryPriorityEXT = xx vkGetInstanceProcAddr(instance, "vkSetDeviceMemoryPriorityEXT");
    vkGetDescriptorSetLayoutHostMappingInfoVALVE = xx vkGetInstanceProcAddr(instance, "vkGetDescriptorSetLayoutHostMappingInfoVALVE");
    vkGetDescriptorSetHostMappingVALVE = xx vkGetInstanceProcAddr(instance, "vkGetDescriptorSetHostMappingVALVE");
    vkCmdCopyMemoryIndirectNV = xx vkGetInstanceProcAddr(instance, "vkCmdCopyMemoryIndirectNV");
    vkCmdCopyMemoryToImageIndirectNV = xx vkGetInstanceProcAddr(instance, "vkCmdCopyMemoryToImageIndirectNV");
    vkCmdDecompressMemoryNV = xx vkGetInstanceProcAddr(instance, "vkCmdDecompressMemoryNV");
    vkCmdDecompressMemoryIndirectCountNV = xx vkGetInstanceProcAddr(instance, "vkCmdDecompressMemoryIndirectCountNV");
    vkGetPipelineIndirectMemoryRequirementsNV = xx vkGetInstanceProcAddr(instance, "vkGetPipelineIndirectMemoryRequirementsNV");
    vkCmdUpdatePipelineIndirectBufferNV = xx vkGetInstanceProcAddr(instance, "vkCmdUpdatePipelineIndirectBufferNV");
    vkGetPipelineIndirectDeviceAddressNV = xx vkGetInstanceProcAddr(instance, "vkGetPipelineIndirectDeviceAddressNV");
    vkCmdSetDepthClampEnableEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetDepthClampEnableEXT");
    vkCmdSetPolygonModeEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetPolygonModeEXT");
    vkCmdSetRasterizationSamplesEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetRasterizationSamplesEXT");
    vkCmdSetSampleMaskEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetSampleMaskEXT");
    vkCmdSetAlphaToCoverageEnableEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetAlphaToCoverageEnableEXT");
    vkCmdSetAlphaToOneEnableEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetAlphaToOneEnableEXT");
    vkCmdSetLogicOpEnableEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetLogicOpEnableEXT");
    vkCmdSetColorBlendEnableEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetColorBlendEnableEXT");
    vkCmdSetColorBlendEquationEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetColorBlendEquationEXT");
    vkCmdSetColorWriteMaskEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetColorWriteMaskEXT");
    vkCmdSetTessellationDomainOriginEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetTessellationDomainOriginEXT");
    vkCmdSetRasterizationStreamEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetRasterizationStreamEXT");
    vkCmdSetConservativeRasterizationModeEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetConservativeRasterizationModeEXT");
    vkCmdSetExtraPrimitiveOverestimationSizeEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetExtraPrimitiveOverestimationSizeEXT");
    vkCmdSetDepthClipEnableEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetDepthClipEnableEXT");
    vkCmdSetSampleLocationsEnableEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetSampleLocationsEnableEXT");
    vkCmdSetColorBlendAdvancedEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetColorBlendAdvancedEXT");
    vkCmdSetProvokingVertexModeEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetProvokingVertexModeEXT");
    vkCmdSetLineRasterizationModeEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetLineRasterizationModeEXT");
    vkCmdSetLineStippleEnableEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetLineStippleEnableEXT");
    vkCmdSetDepthClipNegativeOneToOneEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetDepthClipNegativeOneToOneEXT");
    vkCmdSetViewportWScalingEnableNV = xx vkGetInstanceProcAddr(instance, "vkCmdSetViewportWScalingEnableNV");
    vkCmdSetViewportSwizzleNV = xx vkGetInstanceProcAddr(instance, "vkCmdSetViewportSwizzleNV");
    vkCmdSetCoverageToColorEnableNV = xx vkGetInstanceProcAddr(instance, "vkCmdSetCoverageToColorEnableNV");
    vkCmdSetCoverageToColorLocationNV = xx vkGetInstanceProcAddr(instance, "vkCmdSetCoverageToColorLocationNV");
    vkCmdSetCoverageModulationModeNV = xx vkGetInstanceProcAddr(instance, "vkCmdSetCoverageModulationModeNV");
    vkCmdSetCoverageModulationTableEnableNV = xx vkGetInstanceProcAddr(instance, "vkCmdSetCoverageModulationTableEnableNV");
    vkCmdSetCoverageModulationTableNV = xx vkGetInstanceProcAddr(instance, "vkCmdSetCoverageModulationTableNV");
    vkCmdSetShadingRateImageEnableNV = xx vkGetInstanceProcAddr(instance, "vkCmdSetShadingRateImageEnableNV");
    vkCmdSetRepresentativeFragmentTestEnableNV = xx vkGetInstanceProcAddr(instance, "vkCmdSetRepresentativeFragmentTestEnableNV");
    vkCmdSetCoverageReductionModeNV = xx vkGetInstanceProcAddr(instance, "vkCmdSetCoverageReductionModeNV");
    vkGetShaderModuleIdentifierEXT = xx vkGetInstanceProcAddr(instance, "vkGetShaderModuleIdentifierEXT");
    vkGetShaderModuleCreateInfoIdentifierEXT = xx vkGetInstanceProcAddr(instance, "vkGetShaderModuleCreateInfoIdentifierEXT");
    vkCreateOpticalFlowSessionNV = xx vkGetInstanceProcAddr(instance, "vkCreateOpticalFlowSessionNV");
    vkDestroyOpticalFlowSessionNV = xx vkGetInstanceProcAddr(instance, "vkDestroyOpticalFlowSessionNV");
    vkBindOpticalFlowSessionImageNV = xx vkGetInstanceProcAddr(instance, "vkBindOpticalFlowSessionImageNV");
    vkCmdOpticalFlowExecuteNV = xx vkGetInstanceProcAddr(instance, "vkCmdOpticalFlowExecuteNV");
    vkAntiLagUpdateAMD = xx vkGetInstanceProcAddr(instance, "vkAntiLagUpdateAMD");
    vkCreateShadersEXT = xx vkGetInstanceProcAddr(instance, "vkCreateShadersEXT");
    vkDestroyShaderEXT = xx vkGetInstanceProcAddr(instance, "vkDestroyShaderEXT");
    vkGetShaderBinaryDataEXT = xx vkGetInstanceProcAddr(instance, "vkGetShaderBinaryDataEXT");
    vkCmdBindShadersEXT = xx vkGetInstanceProcAddr(instance, "vkCmdBindShadersEXT");
    vkCmdSetDepthClampRangeEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetDepthClampRangeEXT");
    vkGetFramebufferTilePropertiesQCOM = xx vkGetInstanceProcAddr(instance, "vkGetFramebufferTilePropertiesQCOM");
    vkGetDynamicRenderingTilePropertiesQCOM = xx vkGetInstanceProcAddr(instance, "vkGetDynamicRenderingTilePropertiesQCOM");
    vkConvertCooperativeVectorMatrixNV = xx vkGetInstanceProcAddr(instance, "vkConvertCooperativeVectorMatrixNV");
    vkCmdConvertCooperativeVectorMatrixNV = xx vkGetInstanceProcAddr(instance, "vkCmdConvertCooperativeVectorMatrixNV");
    vkSetLatencySleepModeNV = xx vkGetInstanceProcAddr(instance, "vkSetLatencySleepModeNV");
    vkLatencySleepNV = xx vkGetInstanceProcAddr(instance, "vkLatencySleepNV");
    vkSetLatencyMarkerNV = xx vkGetInstanceProcAddr(instance, "vkSetLatencyMarkerNV");
    vkGetLatencyTimingsNV = xx vkGetInstanceProcAddr(instance, "vkGetLatencyTimingsNV");
    vkQueueNotifyOutOfBandNV = xx vkGetInstanceProcAddr(instance, "vkQueueNotifyOutOfBandNV");
    vkCmdSetAttachmentFeedbackLoopEnableEXT = xx vkGetInstanceProcAddr(instance, "vkCmdSetAttachmentFeedbackLoopEnableEXT");
    vkCmdBindTileMemoryQCOM = xx vkGetInstanceProcAddr(instance, "vkCmdBindTileMemoryQCOM");
    vkCreateExternalComputeQueueNV = xx vkGetInstanceProcAddr(instance, "vkCreateExternalComputeQueueNV");
    vkDestroyExternalComputeQueueNV = xx vkGetInstanceProcAddr(instance, "vkDestroyExternalComputeQueueNV");
    vkGetClusterAccelerationStructureBuildSizesNV = xx vkGetInstanceProcAddr(instance, "vkGetClusterAccelerationStructureBuildSizesNV");
    vkCmdBuildClusterAccelerationStructureIndirectNV = xx vkGetInstanceProcAddr(instance, "vkCmdBuildClusterAccelerationStructureIndirectNV");
    vkGetPartitionedAccelerationStructuresBuildSizesNV = xx vkGetInstanceProcAddr(instance, "vkGetPartitionedAccelerationStructuresBuildSizesNV");
    vkCmdBuildPartitionedAccelerationStructuresNV = xx vkGetInstanceProcAddr(instance, "vkCmdBuildPartitionedAccelerationStructuresNV");
    vkGetGeneratedCommandsMemoryRequirementsEXT = xx vkGetInstanceProcAddr(instance, "vkGetGeneratedCommandsMemoryRequirementsEXT");
    vkCmdPreprocessGeneratedCommandsEXT = xx vkGetInstanceProcAddr(instance, "vkCmdPreprocessGeneratedCommandsEXT");
    vkCmdExecuteGeneratedCommandsEXT = xx vkGetInstanceProcAddr(instance, "vkCmdExecuteGeneratedCommandsEXT");
    vkCreateIndirectCommandsLayoutEXT = xx vkGetInstanceProcAddr(instance, "vkCreateIndirectCommandsLayoutEXT");
    vkDestroyIndirectCommandsLayoutEXT = xx vkGetInstanceProcAddr(instance, "vkDestroyIndirectCommandsLayoutEXT");
    vkCreateIndirectExecutionSetEXT = xx vkGetInstanceProcAddr(instance, "vkCreateIndirectExecutionSetEXT");
    vkDestroyIndirectExecutionSetEXT = xx vkGetInstanceProcAddr(instance, "vkDestroyIndirectExecutionSetEXT");
    vkUpdateIndirectExecutionSetPipelineEXT = xx vkGetInstanceProcAddr(instance, "vkUpdateIndirectExecutionSetPipelineEXT");
    vkUpdateIndirectExecutionSetShaderEXT = xx vkGetInstanceProcAddr(instance, "vkUpdateIndirectExecutionSetShaderEXT");
    vkCmdEndRendering2EXT = xx vkGetInstanceProcAddr(instance, "vkCmdEndRendering2EXT");
    vkCreateAccelerationStructureKHR = xx vkGetInstanceProcAddr(instance, "vkCreateAccelerationStructureKHR");
    vkDestroyAccelerationStructureKHR = xx vkGetInstanceProcAddr(instance, "vkDestroyAccelerationStructureKHR");
    vkCmdBuildAccelerationStructuresKHR = xx vkGetInstanceProcAddr(instance, "vkCmdBuildAccelerationStructuresKHR");
    vkCmdBuildAccelerationStructuresIndirectKHR = xx vkGetInstanceProcAddr(instance, "vkCmdBuildAccelerationStructuresIndirectKHR");
    vkBuildAccelerationStructuresKHR = xx vkGetInstanceProcAddr(instance, "vkBuildAccelerationStructuresKHR");
    vkCopyAccelerationStructureKHR = xx vkGetInstanceProcAddr(instance, "vkCopyAccelerationStructureKHR");
    vkCopyAccelerationStructureToMemoryKHR = xx vkGetInstanceProcAddr(instance, "vkCopyAccelerationStructureToMemoryKHR");
    vkCopyMemoryToAccelerationStructureKHR = xx vkGetInstanceProcAddr(instance, "vkCopyMemoryToAccelerationStructureKHR");
    vkWriteAccelerationStructuresPropertiesKHR = xx vkGetInstanceProcAddr(instance, "vkWriteAccelerationStructuresPropertiesKHR");
    vkCmdCopyAccelerationStructureKHR = xx vkGetInstanceProcAddr(instance, "vkCmdCopyAccelerationStructureKHR");
    vkCmdCopyAccelerationStructureToMemoryKHR = xx vkGetInstanceProcAddr(instance, "vkCmdCopyAccelerationStructureToMemoryKHR");
    vkCmdCopyMemoryToAccelerationStructureKHR = xx vkGetInstanceProcAddr(instance, "vkCmdCopyMemoryToAccelerationStructureKHR");
    vkGetAccelerationStructureDeviceAddressKHR = xx vkGetInstanceProcAddr(instance, "vkGetAccelerationStructureDeviceAddressKHR");
    vkCmdWriteAccelerationStructuresPropertiesKHR = xx vkGetInstanceProcAddr(instance, "vkCmdWriteAccelerationStructuresPropertiesKHR");
    vkGetDeviceAccelerationStructureCompatibilityKHR = xx vkGetInstanceProcAddr(instance, "vkGetDeviceAccelerationStructureCompatibilityKHR");
    vkGetAccelerationStructureBuildSizesKHR = xx vkGetInstanceProcAddr(instance, "vkGetAccelerationStructureBuildSizesKHR");
    vkCmdTraceRaysKHR = xx vkGetInstanceProcAddr(instance, "vkCmdTraceRaysKHR");
    vkCreateRayTracingPipelinesKHR = xx vkGetInstanceProcAddr(instance, "vkCreateRayTracingPipelinesKHR");
    vkGetRayTracingCaptureReplayShaderGroupHandlesKHR = xx vkGetInstanceProcAddr(instance, "vkGetRayTracingCaptureReplayShaderGroupHandlesKHR");
    vkCmdTraceRaysIndirectKHR = xx vkGetInstanceProcAddr(instance, "vkCmdTraceRaysIndirectKHR");
    vkGetRayTracingShaderGroupStackSizeKHR = xx vkGetInstanceProcAddr(instance, "vkGetRayTracingShaderGroupStackSizeKHR");
    vkCmdSetRayTracingPipelineStackSizeKHR = xx vkGetInstanceProcAddr(instance, "vkCmdSetRayTracingPipelineStackSizeKHR");
    vkCmdDrawMeshTasksEXT = xx vkGetInstanceProcAddr(instance, "vkCmdDrawMeshTasksEXT");
    vkCmdDrawMeshTasksIndirectEXT = xx vkGetInstanceProcAddr(instance, "vkCmdDrawMeshTasksIndirectEXT");
    vkCmdDrawMeshTasksIndirectCountEXT = xx vkGetInstanceProcAddr(instance, "vkCmdDrawMeshTasksIndirectCountEXT");
    vkGetAndroidHardwareBufferPropertiesANDROID = xx vkGetInstanceProcAddr(instance, "vkGetAndroidHardwareBufferPropertiesANDROID");
    vkGetMemoryAndroidHardwareBufferANDROID = xx vkGetInstanceProcAddr(instance, "vkGetMemoryAndroidHardwareBufferANDROID");
    vkCreateExecutionGraphPipelinesAMDX = xx vkGetInstanceProcAddr(instance, "vkCreateExecutionGraphPipelinesAMDX");
    vkGetExecutionGraphPipelineScratchSizeAMDX = xx vkGetInstanceProcAddr(instance, "vkGetExecutionGraphPipelineScratchSizeAMDX");
    vkGetExecutionGraphPipelineNodeIndexAMDX = xx vkGetInstanceProcAddr(instance, "vkGetExecutionGraphPipelineNodeIndexAMDX");
    vkCmdInitializeGraphScratchMemoryAMDX = xx vkGetInstanceProcAddr(instance, "vkCmdInitializeGraphScratchMemoryAMDX");
    vkCmdDispatchGraphAMDX = xx vkGetInstanceProcAddr(instance, "vkCmdDispatchGraphAMDX");
    vkCmdDispatchGraphIndirectAMDX = xx vkGetInstanceProcAddr(instance, "vkCmdDispatchGraphIndirectAMDX");
    vkCmdDispatchGraphIndirectCountAMDX = xx vkGetInstanceProcAddr(instance, "vkCmdDispatchGraphIndirectCountAMDX");
}

load_global_proc_addresses :: () {

    vkCreateInstance = xx vkGetInstanceProcAddr(null, "vkCreateInstance");
    vkEnumerateInstanceExtensionProperties = xx vkGetInstanceProcAddr(null, "vkEnumerateInstanceExtensionProperties");
    vkEnumerateInstanceLayerProperties = xx vkGetInstanceProcAddr(null, "vkEnumerateInstanceLayerProperties");
    vkEnumerateInstanceVersion = xx vkGetInstanceProcAddr(null, "vkEnumerateInstanceVersion");
    vkDebugUtilsMessengerCallbackEXT = xx vkGetInstanceProcAddr(null, "vkDebugUtilsMessengerCallbackEXT");
    vkDeviceMemoryReportCallbackEXT = xx vkGetInstanceProcAddr(null, "vkDeviceMemoryReportCallbackEXT");
}

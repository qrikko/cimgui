project "cimgui"
	kind "StaticLib"
	language "c"
	staticruntime "on"

	targetdir (engine.lib)
	objdir (engine.intermediate)

	includedirs { "./**" }

	files {
		"./cimgui.h",
		"./cimgui.cpp",
		"./imgui/imgui.cpp",
		"./imgui/imgui_draw.cpp",
		"./imgui/imgui_demo.cpp",
		"./imgui/imgui_tables.cpp",
		"./imgui/imgui_widgets.cpp",
	}
	defines { 
		"IMGUI_STATIC", 
		"CIMGUI_DEFINE_ENUMS_AND_STRUCTS"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
	filter "configurations:Release"
		runtime "Release"
		optimize "on"
	filter {}

	filter "system:windows"
	filter {}

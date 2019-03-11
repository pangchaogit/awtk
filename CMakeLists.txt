cmake_minimum_required(VERSION 3.0)

project(awtk-c-demos)

set(ENV{LCD} "SDL_GPU")
#message("ENV{LCD} $ENV{LCD}")
set(CMAKE_CXX_STANDARD 11)

set(VGCANVAS "NANOVG" CACHE STRING "")
set(NANOVG_BACKEND "GL3" CACHE STRING "")

set(AWTK_LIBS "" CACHE INTERNAL "")
set(AWTK_INCLUDES ${CMAKE_CURRENT_LIST_DIR}/3rd
        ${CMAKE_CURRENT_LIST_DIR}/3rd/nanovg/base
        ${CMAKE_CURRENT_LIST_DIR}/3rd/nanovg/gl
        ${CMAKE_CURRENT_LIST_DIR}/3rd/SDL/include
        ${CMAKE_CURRENT_LIST_DIR}/3rd/libunibreak
        ${CMAKE_CURRENT_LIST_DIR}/src/
        ${CMAKE_CURRENT_LIST_DIR}/tools
        ${CMAKE_CURRENT_LIST_DIR}/src/tkc
        ${CMAKE_CURRENT_LIST_DIR}/src/ext_widgets
        CACHE INTERNAL "")

add_definitions(-DWITH_STB_FONT)
add_definitions(-DWITH_FT_FONT)
add_definitions(-DSTBTT_STATIC)
add_definitions(-DSTB_IMAGE_STATIC)
add_definitions(-DWITH_STB_IMAGE)
add_definitions(-DWITH_VGCANVAS)
add_definitions(-DWITH_UNICODE_BREAK)
add_definitions(-DWITH_DESKTOP_STYLE)
add_definitions(-DSDL2)
add_definitions(-DHAS_STD_MALLOC)
add_definitions(-DWITH_SDL)
add_definitions(-DWITH_FS_RES)
add_definitions(-DHAS_STDIO)
#add_definitions(-DWITH_FB_BGR565)
add_definitions(-DWITH_NANOVG_GPU)
add_definitions(-DWITH_VGCANVAS_LCD)
add_definitions(-DWITH_NANOVG_GL3)
add_definitions(-DWITH_NANOVG_GL)
add_definitions(-DLINUX)
add_definitions(-DHAS_PTHREAD)
add_definitions(-DSDL_REAL_API)
add_definitions(-DSDL_TIMER_UNIX)
add_definitions(-DSDL_VIDEO_DRIVER_X11)
add_definitions(-DSDL_VIDEO_DRIVER_X11_SUPPORTS_GENERIC_EVENTS)
add_definitions(-DSDL_AUDIO_DRIVER_SNDIO)
add_definitions(-DSDL_VIDEO_OPENGL_GLX)
add_definitions(-DSDL_VIDEO_RENDER_OGL)
add_definitions(-DSDL_LOADSO_DLOPEN)
add_definitions(-DSDL_VIDEO_OPENGL_EGL)
add_definitions(-DSDL_VIDEO_OPENGL_ES2)
add_definitions(-DSDL_REAL_API)
add_definitions(-DSDL_HAPTIC_DISABLED)
add_definitions(-DSDL_SENSOR_DISABLED)
add_definitions(-DSDL_JOYSTICK_DISABLED)



#add_definitions(-DWITH_NANOVG_GL3)
#add_definitions(-DWITH_NANOVG_GL)
add_subdirectory(src)
add_subdirectory(3rd)
add_subdirectory(tools)
add_subdirectory(demos)


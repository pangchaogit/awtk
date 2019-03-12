
include_directories(include
                    gen
                    src/video/khronos
                    src )
file(GLOB sources gen/*.c
        src/*.c
        src/atomic/*.c
        src/audio/*.c
        src/cpuinfo/*.c
        src/events/*.c
        src/file/*.c
        src/libm/*.c
        src/power/*.c
        src/render/opengl/*.c
        src/render/opengles2/*.c
        src/render/software/*.c
        src/render/*.c
        src/stdlib/*.c
        src/thread/*.c
        src/timer/SDL_timer.c
        src/video/yuv2rgb/*.c
        src/video/*.c
        src/loadso/dlopen//*.c
        src/audio/dummy/*.c
        src/audio/sndio/*.c
        src/video/x11/*.c
        src/video/dummy/*.c
        src/core/linux/*.c
        src/thread/pthread/*.c
        src/power/linux/*.c
        src/filesystem/unix/*.c
        src/timer/unix/*.c
        src/core/unix/*.c
        src/main/dummy/*.c )

FIND_PACKAGE(PkgConfig REQUIRED)
PKG_CHECK_MODULES(GTK3 REQUIRED gtk+-3.0)
include_directories(${GTK3_INCLUDE_DIRS})
add_library(SDL2 ${sources})
message("GTK3_LIBRARIES ${GTK3_LIBRARIES}")
target_link_libraries(SDL2 ${GTK3_LIBRARIES} glfw X11 pthread Xext dl sndio)

set(AWTK_LIBS ${AWTK_LIBS} SDL2 CACHE INTERNAL "")
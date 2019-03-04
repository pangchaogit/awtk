
include_directories(${AWTK_INCLUDES})

file(GLOB_RECURSE sources
        tkc/*.c
        base/*.c
        layouters/*.c
        widgets/*.c
        ui_loader/*.c
        xml/*.c
        svg/*.c
        clip_board/*.c
        font_loader/*.c
        blend/*.c
        ext_widgets/*.c
        image_loader/*.c
        designer_support/*.c
        widget_animators/*.c
        platforms/pc/*.c
        misc/*.cpp
        awtk_global.c
        main_loop/main_loop_simple.c
        input_methods/input_method_creator.c
        lcd/lcd_mem_*.c
        )

if($ENV{LCD} MATCHES "SDL_GPU")
    set(sources ${sources} window_animators/window_animator_gpu.c
                            lcd/lcd_nanovg.c
                            main_loop/main_loop_sdl_gpu.c)
elseif($ENV{LCD} MATCHES "SDL_FB")
    set(sources ${sources} window_animators/window_animator_fb.c
                            lcd/lcd_sdl2.c,
                            main_loop/main_loop_sdl_fb.c)
else()
    set(sources ${sources} window_animators/window_animator_fb.c)
endif()

if (NANOVG_BACKEND MATCHES "AGG")
    set(sources ${sources} vgcanvas/vgcanvas_nanovg_soft.c)
elseif(NANOVG_BACKEND MATCHES "AGGE")
    set(sources ${sources} vgcanvas/vgcanvas_nanovg_soft.c)
elseif(NANOVG_BACKEND MATCHES "BGFX")
    set(sources ${sources} vgcanvas/vgcanvas_nanovg_bgfx.c)
else()
    set(sources ${sources} vgcanvas/vgcanvas_nanovg_gl.c)
endif ()

#message("sources ${sources}")

if ($ENV{INPUT_ENGINE})
    set(sources ${sources} input_engines/input_engine_pinyin.cpp)
else()
    set(sources ${sources} input_engines/input_engine_null.c)
endif()

add_library(awtk ${sources})
set(AWTK_LIBS ${AWTK_LIBS} awtk CACHE INTERNAL "")
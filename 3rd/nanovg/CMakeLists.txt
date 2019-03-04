
file(GLOB nanovg_base base/*.c)

if (NANOVG_BACKEND MATCHES "AGG")
    file(GLOB nanovg_src agg/*.cpp)
elseif(NANOVG_BACKEND MATCHES "AGGE")
    file(GLOB nanovg_src agge/*.cpp)
elseif(NANOVG_BACKEND MATCHES "BGFX")
    file(GLOB nanovg_src bgfx/*.cpp)
elseif(NANOVG_BACKEND MATCHES "GLES2")
elseif(NANOVG_BACKEND MATCHES "GLES3")
elseif(NANOVG_BACKEND MATCHES "GL3") # "GL3" by default
    set(AWTK_INCLUDES ${AWTK_INCLUDES} ${CMAKE_CURRENT_LIST_DIR}/gl CACHE INTERNAL "")
else()
    message(SEND_ERROR "Not supported NANOVG_BACKEND ${NANOVG_BACKEND}")
endif ()

add_library(nanovg ${nanovg_base} ${nanovg_src})
set(AWTK_LIBS ${AWTK_LIBS} nanovg CACHE INTERNAL "")
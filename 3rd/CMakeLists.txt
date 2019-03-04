
if (NANOVG_BACKEND MATCHES "AGG")
    add_subdirectory(agg)
elseif(NANOVG_BACKEND MATCHES "AGGE")
    add_subdirectory(agge)
elseif(NANOVG_BACKEND MATCHES "BGFX")
    add_subdirectory(bgfx)
elseif(NANOVG_BACKEND MATCHES "GLES2")
#    add_definitions(-DNANOVG_GLES2_IMPLEMENTATION)
elseif(NANOVG_BACKEND MATCHES "GLES3")
#    add_definitions(-DNANOVG_GLES3_IMPLEMENTATION)
elseif(NANOVG_BACKEND MATCHES "GL3") # "GL3" by default
#    message("defined WITH_NANOVG_GL3")
#    add_definitions(-DWITH_NANOVG_GL3)
else()
    message(SEND_ERROR "Not supported NANOVG_BACKEND ${NANOVG_BACKEND}")
endif ()


add_subdirectory(SDL)
add_subdirectory(nanovg)
add_subdirectory(glad)
add_subdirectory(gpinyin)
add_subdirectory(libunibreak)

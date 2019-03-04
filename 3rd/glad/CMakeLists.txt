
file(GLOB glad_src *.c)
add_library(glad ${glad_src})

set(AWTK_LIBS ${AWTK_LIBS} glad CACHE INTERNAL "")
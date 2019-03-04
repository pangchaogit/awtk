
add_library(image_gen image_gen.c)

set(AWTK_LIBS ${AWTK_LIBS} image_gen CACHE INTERNAL "")
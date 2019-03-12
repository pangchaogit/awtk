
add_library(theme_gen theme_gen.cc xml_theme_gen.cc)

set(AWTK_LIBS ${AWTK_LIBS} theme_gen CACHE INTERNAL "")

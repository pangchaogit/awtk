
add_library(str_gen xml_str_gen.cc str_gen.cc)
set(AWTK_LIBS ${AWTK_LIBS} str_gen CACHE INTERNAL "")

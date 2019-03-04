
include_directories(include ${AWTK_INCLUDES})
file(GLOB gpinyin_src src/*.cpp)
add_library(gpinyin ${gpinyin_src})

set(AWTK_LIBS ${AWTK_LIBS} gpinyin CACHE INTERNAL "")
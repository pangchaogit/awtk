
include_directories(${AWTK_INCLUDES})

add_library(assets assets.c)
set(AWTK_LIBS ${AWTK_LIBS} assets CACHE INTERNAL "")

set(AWTK_LIBS ${AWTK_LIBS} ${AWTK_LIBS} CACHE INTERNAL "")

message("AWTK_LIBS " ${AWTK_LIBS})

add_executable(demo_animator_app demo_animator_app.c)
target_link_libraries(demo_animator_app ${AWTK_LIBS})

add_executable(mutable_image mutable_image.c)
target_link_libraries(mutable_image ${AWTK_LIBS})

add_executable(frambuffer frambuffer.c video_capture.c  )
target_link_libraries(frambuffer ${AWTK_LIBS})

add_executable(new_frambuffer new_frambuffer.c)
target_link_libraries(new_frambuffer ${AWTK_LIBS})

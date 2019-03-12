<<<<<<< HEAD
include_directories(${AWTK_INCLUDES}
        )

find_package(OpenCV REQUIRED)

find_package(Caffe REQUIRED)
#message(FATAL_ERROR ${Caffe_INCLUDE_DIRS})
include_directories(${Caffe_INCLUDE_DIRS})
add_library(assets assets.c)
set(AWTK_LIBS ${AWTK_LIBS} assets CACHE INTERNAL "")

set(AWTK_LIBS ${AWTK_LIBS} ${AWTK_LIBS} CACHE INTERNAL "")

message("AWTK_LIBS " ${AWTK_LIBS})

add_executable(demo_thread_app demo_thread_app.c)
target_link_libraries(demo_thread_app ${AWTK_LIBS})

add_executable(demo_animator_app demo_animator_app.c)
target_link_libraries(demo_animator_app ${AWTK_LIBS})

add_executable(preview_ui preview_ui.c)
target_link_libraries(preview_ui ${AWTK_LIBS})

add_executable(mutable_image mutable_image.c)
target_link_libraries(mutable_image ${AWTK_LIBS})

add_executable(frambuffer frambuffer.c video_capture.c  )
target_link_libraries(frambuffer ${AWTK_LIBS})

add_executable(new_frambuffer new_frambuffer.c)
target_link_libraries(new_frambuffer ${AWTK_LIBS})

add_executable(test_opencv test_opencv.cpp mtcnn.h mtcnn.cpp CvxText.h CvxText.cpp)
target_link_libraries(test_opencv ${OpenCV_LIBS} ${AWTK_LIBS}  ${Caffe_LIBRARIES} freetype )

add_executable(awtk_show awtk_show.cpp mtcnn.h mtcnn.cpp CvxText.h CvxText.cpp)
target_link_libraries(awtk_show ${OpenCV_LIBS} ${AWTK_LIBS}  ${Caffe_LIBRARIES} freetype )


add_executable(MTCNN test_mtcnn.cpp mtcnn.cpp mtcnn.h)
target_link_libraries(MTCNN ${OpenCV_LIBS} ${Caffe_LIBRARIES} )
=======
include_directories(${AWTK_INCLUDES}
        )

find_package(OpenCV REQUIRED)

find_package(Caffe REQUIRED)
#message(FATAL_ERROR ${Caffe_INCLUDE_DIRS})
include_directories(${Caffe_INCLUDE_DIRS})
add_library(assets assets.c)
set(AWTK_LIBS ${AWTK_LIBS} assets CACHE INTERNAL "")

set(AWTK_LIBS ${AWTK_LIBS} ${AWTK_LIBS} CACHE INTERNAL "")

message("AWTK_LIBS " ${AWTK_LIBS})

add_executable(demo_animator_app demo_animator_app.c)
target_link_libraries(demo_animator_app ${AWTK_LIBS})

add_executable(preview_ui preview_ui.c)
target_link_libraries(preview_ui ${AWTK_LIBS})

add_executable(mutable_image mutable_image.c)
target_link_libraries(mutable_image ${AWTK_LIBS})

add_executable(frambuffer frambuffer.c video_capture.c  )
target_link_libraries(frambuffer ${AWTK_LIBS})

add_executable(new_frambuffer new_frambuffer.c)
target_link_libraries(new_frambuffer ${AWTK_LIBS})

add_executable(test_opencv test_opencv.cpp mtcnn.h mtcnn.cpp CvxText.h CvxText.cpp)
target_link_libraries(test_opencv ${OpenCV_LIBS} ${AWTK_LIBS}  ${Caffe_LIBRARIES} freetype )

add_executable(awtk_show awtk_show.cpp mtcnn.h mtcnn.cpp CvxText.h CvxText.cpp)
target_link_libraries(awtk_show ${OpenCV_LIBS} ${AWTK_LIBS}  ${Caffe_LIBRARIES} freetype )


add_executable(MTCNN test_mtcnn.cpp mtcnn.cpp mtcnn.h)
target_link_libraries(MTCNN ${OpenCV_LIBS} ${Caffe_LIBRARIES} )
>>>>>>> f0b07eb62fc777719170c6c80beebae73b26d7f5

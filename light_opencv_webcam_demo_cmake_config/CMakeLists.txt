cmake_minimum_required(VERSION 2.8)
project( webcam_grapper )
find_package( OpenCV REQUIRED )
add_executable( webcam_grapper webcam_grapper.cpp )
target_link_libraries( webcam_grapper ${OpenCV_LIBS} )

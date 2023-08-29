# Install script for directory: /home/paliwal/Desktop/RobotVision-EdgeDetection/catkin_ws/src/edge_detection_service

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/paliwal/Desktop/RobotVision-EdgeDetection/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/edge_detection_service/msg" TYPE FILE FILES "/home/paliwal/Desktop/RobotVision-EdgeDetection/catkin_ws/src/edge_detection_service/msg/EdgePoint.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/edge_detection_service/srv" TYPE FILE FILES "/home/paliwal/Desktop/RobotVision-EdgeDetection/catkin_ws/src/edge_detection_service/srv/EdgeDetection.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/edge_detection_service/cmake" TYPE FILE FILES "/home/paliwal/Desktop/RobotVision-EdgeDetection/catkin_ws/build/edge_detection_service/catkin_generated/installspace/edge_detection_service-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/paliwal/Desktop/RobotVision-EdgeDetection/catkin_ws/devel/include/edge_detection_service")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/paliwal/Desktop/RobotVision-EdgeDetection/catkin_ws/devel/share/roseus/ros/edge_detection_service")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/paliwal/Desktop/RobotVision-EdgeDetection/catkin_ws/devel/share/common-lisp/ros/edge_detection_service")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/paliwal/Desktop/RobotVision-EdgeDetection/catkin_ws/devel/share/gennodejs/ros/edge_detection_service")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/home/nikhil/miniconda3/bin/python3" -m compileall "/home/paliwal/Desktop/RobotVision-EdgeDetection/catkin_ws/devel/lib/python3/dist-packages/edge_detection_service")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/paliwal/Desktop/RobotVision-EdgeDetection/catkin_ws/devel/lib/python3/dist-packages/edge_detection_service")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/paliwal/Desktop/RobotVision-EdgeDetection/catkin_ws/build/edge_detection_service/catkin_generated/installspace/edge_detection_service.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/edge_detection_service/cmake" TYPE FILE FILES "/home/paliwal/Desktop/RobotVision-EdgeDetection/catkin_ws/build/edge_detection_service/catkin_generated/installspace/edge_detection_service-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/edge_detection_service/cmake" TYPE FILE FILES
    "/home/paliwal/Desktop/RobotVision-EdgeDetection/catkin_ws/build/edge_detection_service/catkin_generated/installspace/edge_detection_serviceConfig.cmake"
    "/home/paliwal/Desktop/RobotVision-EdgeDetection/catkin_ws/build/edge_detection_service/catkin_generated/installspace/edge_detection_serviceConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/edge_detection_service" TYPE FILE FILES "/home/paliwal/Desktop/RobotVision-EdgeDetection/catkin_ws/src/edge_detection_service/package.xml")
endif()


cmake_minimum_required(VERSION 3.0.2)
project(clearpath_oak)

find_package(catkin REQUIRED COMPONENTS
  rospy
  message_generation
  std_msgs
  sensor_msgs
  geometry_msgs
)
add_message_files(
  FILES
  BoundingBox2D.msg
  DetectedObject.msg
  DetectedObjects.msg
  Point2D.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
  sensor_msgs
  geometry_msgs
)

###################################
## catkin specific configuration ##
###################################

catkin_package(
#  INCLUDE_DIRS include
  CATKIN_DEPENDS roscpp message_runtime geometry_msgs sensor_msgs vision_msgs
)

###########
## Build ##
###########

include_directories(
#  include
  ${catkin_INCLUDE_DIRS}
)


#############
## Install ##
#############

install(DIRECTORY
  config
  launch
  msg
  nn
  urdf
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(DIRECTORY
  nodes
  scripts
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

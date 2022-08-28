cmake_minimum_required(VERSION 2.8.3)
project(dds_application)

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  roscpp
  rospy
  std_msgs
message_generation
)


## Generate services in the 'srv' folder
add_service_files(
   FILES
   Calculator.srv
)


## Generate added messages and services with any dependencies listed here
generate_messages(
   DEPENDENCIES
   std_msgs
)

###################################
## catkin specific configuration ##
###################################
catkin_package(
  INCLUDE_DIRS include
  LIBRARIES dds_application
  CATKIN_DEPENDS geometry_msgs message_runtime roscpp rospy std_msgs
  DEPENDS system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)


## Build service client and server
add_executable(dds_application_server src/dds_application_server.cpp)
target_link_libraries(dds_application_server ${catkin_LIBRARIES})
add_dependencies(dds_application_server dds_application_gencpp)

add_executable(dds_application_client src/dds_application_client.cpp)
target_link_libraries(dds_application_client ${catkin_LIBRARIES})
add_dependencies(dds_application_client dds_application_gencpp)



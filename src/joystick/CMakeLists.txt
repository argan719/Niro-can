cmake_minimum_required(VERSION 3.0.2)
project(joystick)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  message_generation
)

find_package(SDL2 REQUIRED)

add_message_files(
  FILES
  control_msg.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(
  CATKIN_DEPENDS roscpp std_msgs message_runtime
)

include_directories(
  ${catkin_INCLUDE_DIRS}
  ${SDL2_INCLUDE_DIRS}
)

add_executable(xbox_controller src/xbox_controller.cpp)
add_executable(xbox_listener src/xbox_listener.cpp)

add_dependencies(xbox_controller ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
add_dependencies(xbox_listener ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

target_link_libraries(xbox_controller
  ${catkin_LIBRARIES}
  SDL2
)

target_link_libraries(xbox_listener
  ${catkin_LIBRARIES}
)
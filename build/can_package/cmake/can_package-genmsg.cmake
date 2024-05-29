# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "can_package: 9 messages, 0 services")

set(MSG_I_FLAGS "-Ican_package:/home/ubuntu/catkin_ws/src/can_package/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Ican_msgs:/home/ubuntu/catkin_ws/src/ros_canopen/can_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(can_package_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG.msg" NAME_WE)
add_custom_target(_can_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_package" "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_1.msg" NAME_WE)
add_custom_target(_can_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_package" "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_1.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_2.msg" NAME_WE)
add_custom_target(_can_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_package" "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_2.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_EPS.msg" NAME_WE)
add_custom_target(_can_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_package" "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_EPS.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_ETC.msg" NAME_WE)
add_custom_target(_can_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_package" "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_ETC.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_IMU.msg" NAME_WE)
add_custom_target(_can_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_package" "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_IMU.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SCC.msg" NAME_WE)
add_custom_target(_can_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_package" "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SCC.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SPD.msg" NAME_WE)
add_custom_target(_can_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_package" "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SPD.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FEEDBACK.msg" NAME_WE)
add_custom_target(_can_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_package" "/home/ubuntu/catkin_ws/src/can_package/msg/FEEDBACK.msg" "can_package/FB_EAIT_EPS:can_package/FB_EAIT_SCC:can_package/FB_EAIT_SPD:can_package/FB_EAIT_IMU"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_package
)
_generate_msg_cpp(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_package
)
_generate_msg_cpp(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_package
)
_generate_msg_cpp(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_EPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_package
)
_generate_msg_cpp(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_ETC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_package
)
_generate_msg_cpp(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_IMU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_package
)
_generate_msg_cpp(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SCC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_package
)
_generate_msg_cpp(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SPD.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_package
)
_generate_msg_cpp(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FEEDBACK.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_EPS.msg;/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SCC.msg;/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SPD.msg;/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_IMU.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_package
)

### Generating Services

### Generating Module File
_generate_module_cpp(can_package
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_package
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(can_package_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(can_package_generate_messages can_package_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG.msg" NAME_WE)
add_dependencies(can_package_generate_messages_cpp _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_1.msg" NAME_WE)
add_dependencies(can_package_generate_messages_cpp _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_2.msg" NAME_WE)
add_dependencies(can_package_generate_messages_cpp _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_EPS.msg" NAME_WE)
add_dependencies(can_package_generate_messages_cpp _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_ETC.msg" NAME_WE)
add_dependencies(can_package_generate_messages_cpp _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_IMU.msg" NAME_WE)
add_dependencies(can_package_generate_messages_cpp _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SCC.msg" NAME_WE)
add_dependencies(can_package_generate_messages_cpp _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SPD.msg" NAME_WE)
add_dependencies(can_package_generate_messages_cpp _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FEEDBACK.msg" NAME_WE)
add_dependencies(can_package_generate_messages_cpp _can_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(can_package_gencpp)
add_dependencies(can_package_gencpp can_package_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS can_package_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/can_package
)
_generate_msg_eus(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/can_package
)
_generate_msg_eus(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/can_package
)
_generate_msg_eus(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_EPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/can_package
)
_generate_msg_eus(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_ETC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/can_package
)
_generate_msg_eus(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_IMU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/can_package
)
_generate_msg_eus(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SCC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/can_package
)
_generate_msg_eus(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SPD.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/can_package
)
_generate_msg_eus(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FEEDBACK.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_EPS.msg;/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SCC.msg;/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SPD.msg;/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_IMU.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/can_package
)

### Generating Services

### Generating Module File
_generate_module_eus(can_package
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/can_package
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(can_package_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(can_package_generate_messages can_package_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG.msg" NAME_WE)
add_dependencies(can_package_generate_messages_eus _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_1.msg" NAME_WE)
add_dependencies(can_package_generate_messages_eus _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_2.msg" NAME_WE)
add_dependencies(can_package_generate_messages_eus _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_EPS.msg" NAME_WE)
add_dependencies(can_package_generate_messages_eus _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_ETC.msg" NAME_WE)
add_dependencies(can_package_generate_messages_eus _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_IMU.msg" NAME_WE)
add_dependencies(can_package_generate_messages_eus _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SCC.msg" NAME_WE)
add_dependencies(can_package_generate_messages_eus _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SPD.msg" NAME_WE)
add_dependencies(can_package_generate_messages_eus _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FEEDBACK.msg" NAME_WE)
add_dependencies(can_package_generate_messages_eus _can_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(can_package_geneus)
add_dependencies(can_package_geneus can_package_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS can_package_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_package
)
_generate_msg_lisp(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_package
)
_generate_msg_lisp(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_package
)
_generate_msg_lisp(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_EPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_package
)
_generate_msg_lisp(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_ETC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_package
)
_generate_msg_lisp(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_IMU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_package
)
_generate_msg_lisp(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SCC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_package
)
_generate_msg_lisp(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SPD.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_package
)
_generate_msg_lisp(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FEEDBACK.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_EPS.msg;/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SCC.msg;/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SPD.msg;/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_IMU.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_package
)

### Generating Services

### Generating Module File
_generate_module_lisp(can_package
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_package
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(can_package_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(can_package_generate_messages can_package_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG.msg" NAME_WE)
add_dependencies(can_package_generate_messages_lisp _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_1.msg" NAME_WE)
add_dependencies(can_package_generate_messages_lisp _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_2.msg" NAME_WE)
add_dependencies(can_package_generate_messages_lisp _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_EPS.msg" NAME_WE)
add_dependencies(can_package_generate_messages_lisp _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_ETC.msg" NAME_WE)
add_dependencies(can_package_generate_messages_lisp _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_IMU.msg" NAME_WE)
add_dependencies(can_package_generate_messages_lisp _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SCC.msg" NAME_WE)
add_dependencies(can_package_generate_messages_lisp _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SPD.msg" NAME_WE)
add_dependencies(can_package_generate_messages_lisp _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FEEDBACK.msg" NAME_WE)
add_dependencies(can_package_generate_messages_lisp _can_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(can_package_genlisp)
add_dependencies(can_package_genlisp can_package_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS can_package_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/can_package
)
_generate_msg_nodejs(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/can_package
)
_generate_msg_nodejs(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/can_package
)
_generate_msg_nodejs(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_EPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/can_package
)
_generate_msg_nodejs(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_ETC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/can_package
)
_generate_msg_nodejs(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_IMU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/can_package
)
_generate_msg_nodejs(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SCC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/can_package
)
_generate_msg_nodejs(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SPD.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/can_package
)
_generate_msg_nodejs(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FEEDBACK.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_EPS.msg;/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SCC.msg;/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SPD.msg;/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_IMU.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/can_package
)

### Generating Services

### Generating Module File
_generate_module_nodejs(can_package
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/can_package
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(can_package_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(can_package_generate_messages can_package_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG.msg" NAME_WE)
add_dependencies(can_package_generate_messages_nodejs _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_1.msg" NAME_WE)
add_dependencies(can_package_generate_messages_nodejs _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_2.msg" NAME_WE)
add_dependencies(can_package_generate_messages_nodejs _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_EPS.msg" NAME_WE)
add_dependencies(can_package_generate_messages_nodejs _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_ETC.msg" NAME_WE)
add_dependencies(can_package_generate_messages_nodejs _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_IMU.msg" NAME_WE)
add_dependencies(can_package_generate_messages_nodejs _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SCC.msg" NAME_WE)
add_dependencies(can_package_generate_messages_nodejs _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SPD.msg" NAME_WE)
add_dependencies(can_package_generate_messages_nodejs _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FEEDBACK.msg" NAME_WE)
add_dependencies(can_package_generate_messages_nodejs _can_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(can_package_gennodejs)
add_dependencies(can_package_gennodejs can_package_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS can_package_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_package
)
_generate_msg_py(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_package
)
_generate_msg_py(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_package
)
_generate_msg_py(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_EPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_package
)
_generate_msg_py(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_ETC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_package
)
_generate_msg_py(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_IMU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_package
)
_generate_msg_py(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SCC.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_package
)
_generate_msg_py(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SPD.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_package
)
_generate_msg_py(can_package
  "/home/ubuntu/catkin_ws/src/can_package/msg/FEEDBACK.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_EPS.msg;/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SCC.msg;/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SPD.msg;/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_IMU.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_package
)

### Generating Services

### Generating Module File
_generate_module_py(can_package
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_package
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(can_package_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(can_package_generate_messages can_package_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG.msg" NAME_WE)
add_dependencies(can_package_generate_messages_py _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_1.msg" NAME_WE)
add_dependencies(can_package_generate_messages_py _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/CONTROL_MSG_2.msg" NAME_WE)
add_dependencies(can_package_generate_messages_py _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_EPS.msg" NAME_WE)
add_dependencies(can_package_generate_messages_py _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_ETC.msg" NAME_WE)
add_dependencies(can_package_generate_messages_py _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_IMU.msg" NAME_WE)
add_dependencies(can_package_generate_messages_py _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SCC.msg" NAME_WE)
add_dependencies(can_package_generate_messages_py _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FB_EAIT_SPD.msg" NAME_WE)
add_dependencies(can_package_generate_messages_py _can_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/can_package/msg/FEEDBACK.msg" NAME_WE)
add_dependencies(can_package_generate_messages_py _can_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(can_package_genpy)
add_dependencies(can_package_genpy can_package_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS can_package_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_package
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(can_package_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET can_msgs_generate_messages_cpp)
  add_dependencies(can_package_generate_messages_cpp can_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/can_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/can_package
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(can_package_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET can_msgs_generate_messages_eus)
  add_dependencies(can_package_generate_messages_eus can_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/can_package
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(can_package_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET can_msgs_generate_messages_lisp)
  add_dependencies(can_package_generate_messages_lisp can_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/can_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/can_package
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(can_package_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET can_msgs_generate_messages_nodejs)
  add_dependencies(can_package_generate_messages_nodejs can_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_package)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_package\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_package
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(can_package_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET can_msgs_generate_messages_py)
  add_dependencies(can_package_generate_messages_py can_msgs_generate_messages_py)
endif()

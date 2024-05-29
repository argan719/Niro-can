# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include".split(';') if "${prefix}/include;/usr/include" != "" else []
PROJECT_CATKIN_DEPENDS = "canopen_402;canopen_chain_node;canopen_master;controller_manager;hardware_interface;joint_limits_interface;roscpp;urdf".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lcanopen_motor;/usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0;/usr/lib/x86_64-linux-gnu/libmuparser.so".split(';') if "-lcanopen_motor;/usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0;/usr/lib/x86_64-linux-gnu/libmuparser.so" != "" else []
PROJECT_NAME = "canopen_motor_node"
PROJECT_SPACE_DIR = "/home/ubuntu/catkin_ws/install"
PROJECT_VERSION = "0.8.5"

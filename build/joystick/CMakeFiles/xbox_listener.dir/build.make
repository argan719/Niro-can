# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/catkin_ws/build

# Include any dependencies generated for this target.
include joystick/CMakeFiles/xbox_listener.dir/depend.make

# Include the progress variables for this target.
include joystick/CMakeFiles/xbox_listener.dir/progress.make

# Include the compile flags for this target's objects.
include joystick/CMakeFiles/xbox_listener.dir/flags.make

joystick/CMakeFiles/xbox_listener.dir/src/xbox_listener.cpp.o: joystick/CMakeFiles/xbox_listener.dir/flags.make
joystick/CMakeFiles/xbox_listener.dir/src/xbox_listener.cpp.o: /home/ubuntu/catkin_ws/src/joystick/src/xbox_listener.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object joystick/CMakeFiles/xbox_listener.dir/src/xbox_listener.cpp.o"
	cd /home/ubuntu/catkin_ws/build/joystick && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xbox_listener.dir/src/xbox_listener.cpp.o -c /home/ubuntu/catkin_ws/src/joystick/src/xbox_listener.cpp

joystick/CMakeFiles/xbox_listener.dir/src/xbox_listener.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xbox_listener.dir/src/xbox_listener.cpp.i"
	cd /home/ubuntu/catkin_ws/build/joystick && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/catkin_ws/src/joystick/src/xbox_listener.cpp > CMakeFiles/xbox_listener.dir/src/xbox_listener.cpp.i

joystick/CMakeFiles/xbox_listener.dir/src/xbox_listener.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xbox_listener.dir/src/xbox_listener.cpp.s"
	cd /home/ubuntu/catkin_ws/build/joystick && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/catkin_ws/src/joystick/src/xbox_listener.cpp -o CMakeFiles/xbox_listener.dir/src/xbox_listener.cpp.s

# Object files for target xbox_listener
xbox_listener_OBJECTS = \
"CMakeFiles/xbox_listener.dir/src/xbox_listener.cpp.o"

# External object files for target xbox_listener
xbox_listener_EXTERNAL_OBJECTS =

/home/ubuntu/catkin_ws/devel/lib/joystick/xbox_listener: joystick/CMakeFiles/xbox_listener.dir/src/xbox_listener.cpp.o
/home/ubuntu/catkin_ws/devel/lib/joystick/xbox_listener: joystick/CMakeFiles/xbox_listener.dir/build.make
/home/ubuntu/catkin_ws/devel/lib/joystick/xbox_listener: /opt/ros/noetic/lib/libroscpp.so
/home/ubuntu/catkin_ws/devel/lib/joystick/xbox_listener: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/ubuntu/catkin_ws/devel/lib/joystick/xbox_listener: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/ubuntu/catkin_ws/devel/lib/joystick/xbox_listener: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/ubuntu/catkin_ws/devel/lib/joystick/xbox_listener: /opt/ros/noetic/lib/librosconsole.so
/home/ubuntu/catkin_ws/devel/lib/joystick/xbox_listener: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/ubuntu/catkin_ws/devel/lib/joystick/xbox_listener: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/ubuntu/catkin_ws/devel/lib/joystick/xbox_listener: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/ubuntu/catkin_ws/devel/lib/joystick/xbox_listener: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/ubuntu/catkin_ws/devel/lib/joystick/xbox_listener: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/ubuntu/catkin_ws/devel/lib/joystick/xbox_listener: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/ubuntu/catkin_ws/devel/lib/joystick/xbox_listener: /opt/ros/noetic/lib/librostime.so
/home/ubuntu/catkin_ws/devel/lib/joystick/xbox_listener: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/ubuntu/catkin_ws/devel/lib/joystick/xbox_listener: /opt/ros/noetic/lib/libcpp_common.so
/home/ubuntu/catkin_ws/devel/lib/joystick/xbox_listener: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/ubuntu/catkin_ws/devel/lib/joystick/xbox_listener: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/ubuntu/catkin_ws/devel/lib/joystick/xbox_listener: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/ubuntu/catkin_ws/devel/lib/joystick/xbox_listener: joystick/CMakeFiles/xbox_listener.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/ubuntu/catkin_ws/devel/lib/joystick/xbox_listener"
	cd /home/ubuntu/catkin_ws/build/joystick && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/xbox_listener.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
joystick/CMakeFiles/xbox_listener.dir/build: /home/ubuntu/catkin_ws/devel/lib/joystick/xbox_listener

.PHONY : joystick/CMakeFiles/xbox_listener.dir/build

joystick/CMakeFiles/xbox_listener.dir/clean:
	cd /home/ubuntu/catkin_ws/build/joystick && $(CMAKE_COMMAND) -P CMakeFiles/xbox_listener.dir/cmake_clean.cmake
.PHONY : joystick/CMakeFiles/xbox_listener.dir/clean

joystick/CMakeFiles/xbox_listener.dir/depend:
	cd /home/ubuntu/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/catkin_ws/src /home/ubuntu/catkin_ws/src/joystick /home/ubuntu/catkin_ws/build /home/ubuntu/catkin_ws/build/joystick /home/ubuntu/catkin_ws/build/joystick/CMakeFiles/xbox_listener.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : joystick/CMakeFiles/xbox_listener.dir/depend


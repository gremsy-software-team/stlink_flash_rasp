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
CMAKE_SOURCE_DIR = /home/pi/st-link_flasher/stlink_flash_rasp/stlink

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/st-link_flasher/stlink_flash_rasp/stlink

# Include any dependencies generated for this target.
include CMakeFiles/st-flash-by-button.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/st-flash-by-button.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/st-flash-by-button.dir/flags.make

CMakeFiles/st-flash-by-button.dir/src/st-flash-by-button/flash_button.c.o: CMakeFiles/st-flash-by-button.dir/flags.make
CMakeFiles/st-flash-by-button.dir/src/st-flash-by-button/flash_button.c.o: src/st-flash-by-button/flash_button.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/st-link_flasher/stlink_flash_rasp/stlink/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/st-flash-by-button.dir/src/st-flash-by-button/flash_button.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/st-flash-by-button.dir/src/st-flash-by-button/flash_button.c.o   -c /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/st-flash-by-button/flash_button.c

CMakeFiles/st-flash-by-button.dir/src/st-flash-by-button/flash_button.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/st-flash-by-button.dir/src/st-flash-by-button/flash_button.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/st-flash-by-button/flash_button.c > CMakeFiles/st-flash-by-button.dir/src/st-flash-by-button/flash_button.c.i

CMakeFiles/st-flash-by-button.dir/src/st-flash-by-button/flash_button.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/st-flash-by-button.dir/src/st-flash-by-button/flash_button.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/st-flash-by-button/flash_button.c -o CMakeFiles/st-flash-by-button.dir/src/st-flash-by-button/flash_button.c.s

# Object files for target st-flash-by-button
st__flash__by__button_OBJECTS = \
"CMakeFiles/st-flash-by-button.dir/src/st-flash-by-button/flash_button.c.o"

# External object files for target st-flash-by-button
st__flash__by__button_EXTERNAL_OBJECTS =

bin/st-flash-by-button: CMakeFiles/st-flash-by-button.dir/src/st-flash-by-button/flash_button.c.o
bin/st-flash-by-button: CMakeFiles/st-flash-by-button.dir/build.make
bin/st-flash-by-button: lib/libstlink.so.1.7.0
bin/st-flash-by-button: /usr/lib/libwiringPi.so
bin/st-flash-by-button: /usr/lib/arm-linux-gnueabihf/libusb-1.0.so
bin/st-flash-by-button: CMakeFiles/st-flash-by-button.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/st-link_flasher/stlink_flash_rasp/stlink/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable bin/st-flash-by-button"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/st-flash-by-button.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/st-flash-by-button.dir/build: bin/st-flash-by-button

.PHONY : CMakeFiles/st-flash-by-button.dir/build

CMakeFiles/st-flash-by-button.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/st-flash-by-button.dir/cmake_clean.cmake
.PHONY : CMakeFiles/st-flash-by-button.dir/clean

CMakeFiles/st-flash-by-button.dir/depend:
	cd /home/pi/st-link_flasher/stlink_flash_rasp/stlink && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/st-link_flasher/stlink_flash_rasp/stlink /home/pi/st-link_flasher/stlink_flash_rasp/stlink /home/pi/st-link_flasher/stlink_flash_rasp/stlink /home/pi/st-link_flasher/stlink_flash_rasp/stlink /home/pi/st-link_flasher/stlink_flash_rasp/stlink/CMakeFiles/st-flash-by-button.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/st-flash-by-button.dir/depend


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
include src/stlink-gui/CMakeFiles/stlink-gui-local.dir/depend.make

# Include the progress variables for this target.
include src/stlink-gui/CMakeFiles/stlink-gui-local.dir/progress.make

# Include the compile flags for this target's objects.
include src/stlink-gui/CMakeFiles/stlink-gui-local.dir/flags.make

src/stlink-gui/CMakeFiles/stlink-gui-local.dir/gui.c.o: src/stlink-gui/CMakeFiles/stlink-gui-local.dir/flags.make
src/stlink-gui/CMakeFiles/stlink-gui-local.dir/gui.c.o: src/stlink-gui/gui.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/st-link_flasher/stlink_flash_rasp/stlink/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/stlink-gui/CMakeFiles/stlink-gui-local.dir/gui.c.o"
	cd /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-gui && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/stlink-gui-local.dir/gui.c.o   -c /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-gui/gui.c

src/stlink-gui/CMakeFiles/stlink-gui-local.dir/gui.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/stlink-gui-local.dir/gui.c.i"
	cd /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-gui && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-gui/gui.c > CMakeFiles/stlink-gui-local.dir/gui.c.i

src/stlink-gui/CMakeFiles/stlink-gui-local.dir/gui.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/stlink-gui-local.dir/gui.c.s"
	cd /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-gui && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-gui/gui.c -o CMakeFiles/stlink-gui-local.dir/gui.c.s

# Object files for target stlink-gui-local
stlink__gui__local_OBJECTS = \
"CMakeFiles/stlink-gui-local.dir/gui.c.o"

# External object files for target stlink-gui-local
stlink__gui__local_EXTERNAL_OBJECTS =

bin/stlink-gui-local: src/stlink-gui/CMakeFiles/stlink-gui-local.dir/gui.c.o
bin/stlink-gui-local: src/stlink-gui/CMakeFiles/stlink-gui-local.dir/build.make
bin/stlink-gui-local: lib/libstlink.so.1.7.0
bin/stlink-gui-local: /usr/lib/arm-linux-gnueabihf/libusb-1.0.so
bin/stlink-gui-local: src/stlink-gui/CMakeFiles/stlink-gui-local.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/st-link_flasher/stlink_flash_rasp/stlink/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../../bin/stlink-gui-local"
	cd /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-gui && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stlink-gui-local.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/stlink-gui/CMakeFiles/stlink-gui-local.dir/build: bin/stlink-gui-local

.PHONY : src/stlink-gui/CMakeFiles/stlink-gui-local.dir/build

src/stlink-gui/CMakeFiles/stlink-gui-local.dir/clean:
	cd /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-gui && $(CMAKE_COMMAND) -P CMakeFiles/stlink-gui-local.dir/cmake_clean.cmake
.PHONY : src/stlink-gui/CMakeFiles/stlink-gui-local.dir/clean

src/stlink-gui/CMakeFiles/stlink-gui-local.dir/depend:
	cd /home/pi/st-link_flasher/stlink_flash_rasp/stlink && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/st-link_flasher/stlink_flash_rasp/stlink /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-gui /home/pi/st-link_flasher/stlink_flash_rasp/stlink /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-gui /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-gui/CMakeFiles/stlink-gui-local.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/stlink-gui/CMakeFiles/stlink-gui-local.dir/depend


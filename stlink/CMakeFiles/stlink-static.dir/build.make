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
include CMakeFiles/stlink-static.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/stlink-static.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/stlink-static.dir/flags.make

CMakeFiles/stlink-static.dir/src/common.c.o: CMakeFiles/stlink-static.dir/flags.make
CMakeFiles/stlink-static.dir/src/common.c.o: src/common.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/st-link_flasher/stlink_flash_rasp/stlink/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/stlink-static.dir/src/common.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/stlink-static.dir/src/common.c.o   -c /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/common.c

CMakeFiles/stlink-static.dir/src/common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/stlink-static.dir/src/common.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/common.c > CMakeFiles/stlink-static.dir/src/common.c.i

CMakeFiles/stlink-static.dir/src/common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/stlink-static.dir/src/common.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/common.c -o CMakeFiles/stlink-static.dir/src/common.c.s

CMakeFiles/stlink-static.dir/src/stlink-lib/chipid.c.o: CMakeFiles/stlink-static.dir/flags.make
CMakeFiles/stlink-static.dir/src/stlink-lib/chipid.c.o: src/stlink-lib/chipid.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/st-link_flasher/stlink_flash_rasp/stlink/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/stlink-static.dir/src/stlink-lib/chipid.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/stlink-static.dir/src/stlink-lib/chipid.c.o   -c /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-lib/chipid.c

CMakeFiles/stlink-static.dir/src/stlink-lib/chipid.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/stlink-static.dir/src/stlink-lib/chipid.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-lib/chipid.c > CMakeFiles/stlink-static.dir/src/stlink-lib/chipid.c.i

CMakeFiles/stlink-static.dir/src/stlink-lib/chipid.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/stlink-static.dir/src/stlink-lib/chipid.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-lib/chipid.c -o CMakeFiles/stlink-static.dir/src/stlink-lib/chipid.c.s

CMakeFiles/stlink-static.dir/src/stlink-lib/flash_loader.c.o: CMakeFiles/stlink-static.dir/flags.make
CMakeFiles/stlink-static.dir/src/stlink-lib/flash_loader.c.o: src/stlink-lib/flash_loader.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/st-link_flasher/stlink_flash_rasp/stlink/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/stlink-static.dir/src/stlink-lib/flash_loader.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/stlink-static.dir/src/stlink-lib/flash_loader.c.o   -c /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-lib/flash_loader.c

CMakeFiles/stlink-static.dir/src/stlink-lib/flash_loader.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/stlink-static.dir/src/stlink-lib/flash_loader.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-lib/flash_loader.c > CMakeFiles/stlink-static.dir/src/stlink-lib/flash_loader.c.i

CMakeFiles/stlink-static.dir/src/stlink-lib/flash_loader.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/stlink-static.dir/src/stlink-lib/flash_loader.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-lib/flash_loader.c -o CMakeFiles/stlink-static.dir/src/stlink-lib/flash_loader.c.s

CMakeFiles/stlink-static.dir/src/stlink-lib/logging.c.o: CMakeFiles/stlink-static.dir/flags.make
CMakeFiles/stlink-static.dir/src/stlink-lib/logging.c.o: src/stlink-lib/logging.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/st-link_flasher/stlink_flash_rasp/stlink/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/stlink-static.dir/src/stlink-lib/logging.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/stlink-static.dir/src/stlink-lib/logging.c.o   -c /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-lib/logging.c

CMakeFiles/stlink-static.dir/src/stlink-lib/logging.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/stlink-static.dir/src/stlink-lib/logging.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-lib/logging.c > CMakeFiles/stlink-static.dir/src/stlink-lib/logging.c.i

CMakeFiles/stlink-static.dir/src/stlink-lib/logging.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/stlink-static.dir/src/stlink-lib/logging.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-lib/logging.c -o CMakeFiles/stlink-static.dir/src/stlink-lib/logging.c.s

CMakeFiles/stlink-static.dir/src/stlink-lib/md5.c.o: CMakeFiles/stlink-static.dir/flags.make
CMakeFiles/stlink-static.dir/src/stlink-lib/md5.c.o: src/stlink-lib/md5.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/st-link_flasher/stlink_flash_rasp/stlink/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/stlink-static.dir/src/stlink-lib/md5.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/stlink-static.dir/src/stlink-lib/md5.c.o   -c /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-lib/md5.c

CMakeFiles/stlink-static.dir/src/stlink-lib/md5.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/stlink-static.dir/src/stlink-lib/md5.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-lib/md5.c > CMakeFiles/stlink-static.dir/src/stlink-lib/md5.c.i

CMakeFiles/stlink-static.dir/src/stlink-lib/md5.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/stlink-static.dir/src/stlink-lib/md5.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-lib/md5.c -o CMakeFiles/stlink-static.dir/src/stlink-lib/md5.c.s

CMakeFiles/stlink-static.dir/src/stlink-lib/sg.c.o: CMakeFiles/stlink-static.dir/flags.make
CMakeFiles/stlink-static.dir/src/stlink-lib/sg.c.o: src/stlink-lib/sg.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/st-link_flasher/stlink_flash_rasp/stlink/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/stlink-static.dir/src/stlink-lib/sg.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/stlink-static.dir/src/stlink-lib/sg.c.o   -c /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-lib/sg.c

CMakeFiles/stlink-static.dir/src/stlink-lib/sg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/stlink-static.dir/src/stlink-lib/sg.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-lib/sg.c > CMakeFiles/stlink-static.dir/src/stlink-lib/sg.c.i

CMakeFiles/stlink-static.dir/src/stlink-lib/sg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/stlink-static.dir/src/stlink-lib/sg.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-lib/sg.c -o CMakeFiles/stlink-static.dir/src/stlink-lib/sg.c.s

CMakeFiles/stlink-static.dir/src/stlink-lib/usb.c.o: CMakeFiles/stlink-static.dir/flags.make
CMakeFiles/stlink-static.dir/src/stlink-lib/usb.c.o: src/stlink-lib/usb.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/st-link_flasher/stlink_flash_rasp/stlink/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/stlink-static.dir/src/stlink-lib/usb.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/stlink-static.dir/src/stlink-lib/usb.c.o   -c /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-lib/usb.c

CMakeFiles/stlink-static.dir/src/stlink-lib/usb.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/stlink-static.dir/src/stlink-lib/usb.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-lib/usb.c > CMakeFiles/stlink-static.dir/src/stlink-lib/usb.c.i

CMakeFiles/stlink-static.dir/src/stlink-lib/usb.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/stlink-static.dir/src/stlink-lib/usb.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-lib/usb.c -o CMakeFiles/stlink-static.dir/src/stlink-lib/usb.c.s

CMakeFiles/stlink-static.dir/src/stlink-lib/helper.c.o: CMakeFiles/stlink-static.dir/flags.make
CMakeFiles/stlink-static.dir/src/stlink-lib/helper.c.o: src/stlink-lib/helper.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/st-link_flasher/stlink_flash_rasp/stlink/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/stlink-static.dir/src/stlink-lib/helper.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/stlink-static.dir/src/stlink-lib/helper.c.o   -c /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-lib/helper.c

CMakeFiles/stlink-static.dir/src/stlink-lib/helper.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/stlink-static.dir/src/stlink-lib/helper.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-lib/helper.c > CMakeFiles/stlink-static.dir/src/stlink-lib/helper.c.i

CMakeFiles/stlink-static.dir/src/stlink-lib/helper.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/stlink-static.dir/src/stlink-lib/helper.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/st-link_flasher/stlink_flash_rasp/stlink/src/stlink-lib/helper.c -o CMakeFiles/stlink-static.dir/src/stlink-lib/helper.c.s

# Object files for target stlink-static
stlink__static_OBJECTS = \
"CMakeFiles/stlink-static.dir/src/common.c.o" \
"CMakeFiles/stlink-static.dir/src/stlink-lib/chipid.c.o" \
"CMakeFiles/stlink-static.dir/src/stlink-lib/flash_loader.c.o" \
"CMakeFiles/stlink-static.dir/src/stlink-lib/logging.c.o" \
"CMakeFiles/stlink-static.dir/src/stlink-lib/md5.c.o" \
"CMakeFiles/stlink-static.dir/src/stlink-lib/sg.c.o" \
"CMakeFiles/stlink-static.dir/src/stlink-lib/usb.c.o" \
"CMakeFiles/stlink-static.dir/src/stlink-lib/helper.c.o"

# External object files for target stlink-static
stlink__static_EXTERNAL_OBJECTS =

lib/libstlink.a: CMakeFiles/stlink-static.dir/src/common.c.o
lib/libstlink.a: CMakeFiles/stlink-static.dir/src/stlink-lib/chipid.c.o
lib/libstlink.a: CMakeFiles/stlink-static.dir/src/stlink-lib/flash_loader.c.o
lib/libstlink.a: CMakeFiles/stlink-static.dir/src/stlink-lib/logging.c.o
lib/libstlink.a: CMakeFiles/stlink-static.dir/src/stlink-lib/md5.c.o
lib/libstlink.a: CMakeFiles/stlink-static.dir/src/stlink-lib/sg.c.o
lib/libstlink.a: CMakeFiles/stlink-static.dir/src/stlink-lib/usb.c.o
lib/libstlink.a: CMakeFiles/stlink-static.dir/src/stlink-lib/helper.c.o
lib/libstlink.a: CMakeFiles/stlink-static.dir/build.make
lib/libstlink.a: CMakeFiles/stlink-static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/st-link_flasher/stlink_flash_rasp/stlink/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking C static library lib/libstlink.a"
	$(CMAKE_COMMAND) -P CMakeFiles/stlink-static.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stlink-static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/stlink-static.dir/build: lib/libstlink.a

.PHONY : CMakeFiles/stlink-static.dir/build

CMakeFiles/stlink-static.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/stlink-static.dir/cmake_clean.cmake
.PHONY : CMakeFiles/stlink-static.dir/clean

CMakeFiles/stlink-static.dir/depend:
	cd /home/pi/st-link_flasher/stlink_flash_rasp/stlink && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/st-link_flasher/stlink_flash_rasp/stlink /home/pi/st-link_flasher/stlink_flash_rasp/stlink /home/pi/st-link_flasher/stlink_flash_rasp/stlink /home/pi/st-link_flasher/stlink_flash_rasp/stlink /home/pi/st-link_flasher/stlink_flash_rasp/stlink/CMakeFiles/stlink-static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/stlink-static.dir/depend


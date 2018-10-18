# this one is important
SET(CMAKE_SYSTEM_NAME Linux)
#this one not so much
SET(CMAKE_SYSTEM_VERSION 1)

SET(CROSS_PREFIX /opt/OSELAS.Toolchain-2014.12.0/arm-cortexa8-linux-gnueabihf/gcc-4.9.2-glibc-2.20-binutils-2.24-kernel-3.16-sanitized/bin/arm-cortexa8-linux-gnueabihf-)
SET(SYSROOT_PATH /opt/skrm-embedded/phyBOARD-WEGA-AM335x-PD14.1.0-Qt5.5/platform-phyBOARD-WEGA-AM335x/sysroot-target)

# specify the cross compiler
SET(CMAKE_C_COMPILER   ${DISTCC_PREFIX}${CROSS_PREFIX}gcc)
SET(CMAKE_CXX_COMPILER ${DISTCC_PREFIX}${CROSS_PREFIX}g++)

SET(_ADD_MODULE_LINKER_FLAGS  "-Wl,-rpath-link,${SYSROOT_PATH}/lib")
SET(CMAKE_EXE_LINKER_FLAGS    "${_ADD_MODULE_LINKER_FLAGS} ${CMAKE_EXE_LINKER_FLAGS}")
SET(CMAKE_SHARED_LINKER_FLAGS "${_ADD_MODULE_LINKER_FLAGS} ${CMAKE_SHARED_LINKER_FLAGS}")

# where is the target environment 
SET(CMAKE_FIND_ROOT_PATH ${SYSROOT_PATH})

# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

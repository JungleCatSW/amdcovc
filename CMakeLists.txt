cmake_minimum_required(VERSION 3.5)
project(amdcovc)

option(HAVE_ADLSDK "if you need AMD Catalyst support" OFF)

if(HAVE_ADLSDK)
    messge("do something")
endif()

## Find PCI UTILS Lib
#set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake")
#find_package(PCIUTILS REQUIRED)
include_directories(pciutils)
link_directories(pciutils/lib)
#set(PCIUTILS_LIB /pciutils/libpci.a)

add_executable(${PROJECT_NAME} amdcovc.cpp)
target_link_libraries(${PROJECT_NAME} pci)
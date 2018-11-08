cmake_minimum_required(VERSION 3.5)
project(amdcovc)

option(HAVE_ADLSDK "if you need AMD Catalyst support" OFF)

if(HAVE_ADLSDK)
    messge("do something")
endif()

# First do ->
# $ git submodule update --init --recursive
# $ cd pciutils
# $ make ZLIB=no DNS=no
include_directories(pciutils)
link_directories(pciutils/lib)

add_executable(${PROJECT_NAME} amdcovc.cpp)
target_link_libraries(${PROJECT_NAME} pci)
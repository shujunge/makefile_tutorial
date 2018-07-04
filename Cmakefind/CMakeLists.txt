cmake_minimum_required(VERSION 3.8)
project(Cmakefind)

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)

#include_directories(${CMAKE_SOURCE_DIR}/include)

file(GLOB algo_srcs hello.cpp)
add_library(Cmakefind SHARED ${algo_srcs})

FIND_PACKAGE(HELLO REQUIRED)

IF(HELLO_FOUND)
    INCLUDE_DIRECTORIES(${HELLO_INCLUDE_DIR})
    MESSAGE(STATUS "Find Hello:${HELLO_INCLUDE_DIR}")

ELSE(HELLO_FOUND)
    MESSAGE(STATUS "cound not find  Hello:${HELLO_INCLUDE_DIR}")
ENDIF(HELLO_FOUND)


file(GLOB main_srcs main.cpp)
add_executable(run ${main_srcs})
target_link_libraries(run Cmakefind)
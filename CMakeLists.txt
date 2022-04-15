#
# Author: Kevin Ingles

cmake_minimum_required(VERSION 3.17)
set(CMAKE_FIND_DEBUG_MODE OFF)

project(
    MachineLearningDEs
    VERSION 0.1
    LANGUAGES CXX
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_CXX_FLAGS "-O3 -Wall")

add_executable(
    "MachineLearningDEs.exe"
    "code/EntryPoint.cpp"
)

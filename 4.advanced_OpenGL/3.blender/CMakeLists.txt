cmake_minimum_required (VERSION 3.0)
cmake_policy(VERSION 3.0)

project(OpenGL)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS ON)

IF(NOT CMAKE_BUILD_TYPE)
  SET(CMAKE_BUILD_TYPE Debug CACHE STRING "Choose the type of build (Debug or Release)" FORCE)
ENDIF(NOT CMAKE_BUILD_TYPE)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/modules/")


link_directories(${CMAKE_SOURCE_DIR}/lib)

# find the required packages
find_package(glm REQUIRED)
message(STATUS "GLM included at ${GLM_INCLUDE_DIR}")
find_package(glfw3 REQUIRED)
message(STATUS "Found GLFW3 in ${GLFW3_INCLUDE_DIR}")
set(${ASSIMP_INCLUDE_DIR} /opt/homebrew/include/assimp)
find_package(assimp REQUIRED)
message(STATUS "Found ASSIMP in ${ASSIMP_INCLUDE_DIR}")
# find_package(SOIL REQUIRED)
# message(STATUS "Found SOIL in ${SOIL_INCLUDE_DIR}")
find_package(GLEW REQUIRED)
message(STATUS "Found GLEW in ${GLEW_INCLUDE_DIR}")

# set include dir
set(LOCAL_H /opt/homebrew/include)
include_directories(${LOCAL_H} ${PROJECT_SOURCE_DIR}/include)

# set thirdparty include file
set(GLEW_H /opt/homebrew/Cellar/glew/2.2.0_1/include/GL)
set(GLFW_H /opt/homebrew/Cellar/glfw/3.3.8/include/GLFW)
set(ASSIMP_H /opt/homebrew/Cellar/assimp/5.2.5/include)
include_directories(${GLEW_H} ${GLFW_H} ${ASSIMP_H})

# set thirdparty link file
set(GLEW_LINK /opt/homebrew/Cellar/glew/2.2.0_1/lib/libGLEW.2.2.dylib)
set(GLFW_LINK /opt/homebrew/Cellar/glfw/3.3.8/lib/libglfw.3.dylib)
set(ASSIMP_LINK /opt/homebrew/Cellar/assimp/5.2.5/lib/libassimp.5.2.4.dylib)
set(ASSIMP /Users/renboyu/1.learn_OpenGL/3.assimp/lib/assimp.lib)
link_libraries(${GLEW_LINK} ${GLFW_LINK} ${ASSIMP_LINK})


add_executable(OpenGL src/glad.c src/blending.cpp src/stb_image.cpp)
target_link_libraries(OpenGL assimp::assimp)

if (APPLE)
        target_link_libraries(OpenGL "-framework OpenGL")
        target_link_libraries(OpenGL "-framework GLUT")
        target_link_libraries(OpenGL "-framework Cocoa")
        target_link_libraries(OpenGL "-framework IOKit")
endif ()


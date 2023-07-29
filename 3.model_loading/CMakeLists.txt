cmake_minimum_required(VERSION 3.19)
project(opengl_tuto)

set(CMAKE_CXX_STANDARD 14)

add_executable(opengl_tuto 
        src/main.cpp
        src/glad.c
        include/shader.h
        include/camera.h
        include/mesh.h
        include/model.h
    )

if (APPLE)
    set(OPENGL_MAC_DIR /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/System/Library/Frameworks/OpenGL.framework/Versions/A/Headers/)
    target_include_directories(${PROJECT_NAME} PRIVATE ${OPENGL_MAC_DIR})
else ()
    find_package(OpenGL REQUIRED)
    set(LIBS OpenGL)
    # Define the link libraries
    target_include_directories(${PROJECT_NAME} PUBLIC ${LIBS})
    target_link_libraries(${PROJECT_NAME} ${LIBS})
endif()
set(LIB_DIR "${CMAKE_CURRENT_SOURCE_DIR}/libs/thirdparty")

#GLFW
set(GLFW_DIR ${LIB_DIR}/glfw)

set(GLFW_BUILD_EXAMPLES OFF CACHE INTERNAL "Build the GLFW example programs")
set(GLFW_BUILD_TESTS OFF CACHE INTERNAL "Build the GLFW test programs")
set(GLFW_BUILD_DOCS OFF CACHE INTERNAL "Build the GLFW documentation")
set(GLFW_INSTALL OFF CACHE INTERNAL "Generate installation target")

add_subdirectory(${GLFW_DIR})
target_link_libraries(${PROJECT_NAME} glfw ${GLFW_LIBRARIES})
target_include_directories(${PROJECT_NAME} PRIVATE ${GLFW_DIR}/include)
include_directories(${GLFW_DIR}/include)


set(ASSIMP_DIR ${LIB_DIR}/assimp/)
add_subdirectory(${ASSIMP_DIR})
include_directories(${ASSIMP_DIR}/include)

#glad
set(GLAD_DIR ${LIB_DIR}/glad)
add_library("glad" ${GLAD_DIR}/src/glad.c)
target_include_directories(glad PRIVATE ${GLAD_DIR}/include)
target_include_directories(${PROJECT_NAME} PRIVATE ${GLAD_DIR}/include)
target_link_libraries(${PROJECT_NAME} "glad" "${CMAKE_DL_LIBS}")

set(STB_DIR ${LIB_DIR}/stb_image)
add_library(stb_image ${STB_DIR}/stb_image.cpp)
target_include_directories(stb_image PRIVATE ${STB_DIR})
target_include_directories(${PROJECT_NAME} PRIVATE ${STB_DIR})
include_directories(${STB_DIR})
target_link_libraries(${PROJECT_NAME} "stb_image" "${CMAKE_DL_LIBS}")

set(GLM_DIR ${LIB_DIR}/glm)
#add_package(glm ${GLM_DIR})
include_directories(${GLM_DIR})

set(LOCAL_H /opt/homebrew/include)
include_directories(${LOCAL_H} ${PROJECT_SOURCE_DIR}/include)

find_package(ASSIMP REQUIRED)
message(ASSIMP)

target_link_libraries(opengl_tuto assimp::assimp)


if (APPLE)
        target_link_libraries(opengl_tuto "-framework OpenGL")
        target_link_libraries(opengl_tuto "-framework GLUT")
        target_link_libraries(opengl_tuto "-framework IOKit")
        target_link_libraries(opengl_tuto "-framework Cocoa")
endif ()



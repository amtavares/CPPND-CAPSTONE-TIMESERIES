cmake_minimum_required(VERSION 2.6)
project(stockviewer)


#---------
# Setup for Dear imgui, SDL and opengl
# from https://decovar.dev/blog/2019/05/26/sdl-imgui/

find_package(OpenGL REQUIRED)


set(WHERE-IS-GLAD "lib/glad/src/glad.c")
set(WHERE-IS-GLAD-HEADERS "lib/glad/include")

# SDL
find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIRS})

# ...

add_library("glad" ${WHERE-IS-GLAD})
include_directories("${WHERE-IS-GLAD-HEADERS}" )



include_directories(include)
file(GLOB SOURCES "src/*.cpp")

add_executable(stockviewer ${SOURCES})

set_property(TARGET stockviewer PROPERTY CXX_STANDARD 17)
target_link_libraries(stockviewer ${CURSES_LIBRARIES})
# DONE: Run -Werror in CI.
target_compile_options(stockviewer PRIVATE -Wall -Wextra)

# CMakeLists files in this project can
# refer to the root source directory of the project as ${HELLO_SOURCE_DIR} and
# to the root binary directory of the project as ${HELLO_BINARY_DIR}.
cmake_minimum_required (VERSION 3.18.0)
project (HELLO)

#SET(CMAKE_SYSTEM_NAME Windows)
#SET(CMAKE_CROSSCOMPILING 1)
#add_definitions(WIN32 1)

if(CMAKE_C_COMPILER MATCHES "mingw32")
    # for windows
    message(STATUS "Adding static compile flags for windows")
    add_link_options(-static -static-libgcc -static-libstdc++)
endif()

add_subdirectory(src/lib)
add_subdirectory(src/app)

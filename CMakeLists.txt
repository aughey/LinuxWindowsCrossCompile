# CMakeLists files in this project can
# refer to the root source directory of the project as ${HELLO_SOURCE_DIR} and
# to the root binary directory of the project as ${HELLO_BINARY_DIR}.
cmake_minimum_required (VERSION 3.18.0)
project (HELLO)

if(CMAKE_C_COMPILER MATCHES "mingw32")
    # for windows
    message(STATUS "Adding static compile flags for windows")
    add_link_options(-static -static-libgcc -static-libstdc++)
endif()

# GoogleTest requires at least C++14
set(CMAKE_CXX_STANDARD 14)

include(FetchContent)
FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG release-1.12.1
)
# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

enable_testing()

add_subdirectory(src/lib)
add_subdirectory(src/app)
add_subdirectory(src/tests)

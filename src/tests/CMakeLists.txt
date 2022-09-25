cmake_minimum_required(VERSION 3.14)
project(tests)

FILE(GLOB SOURCES *.cpp)

include_directories(../lib)

add_executable(
  tests
  ${SOURCES}
)
target_link_libraries(
  tests
  GTest::gtest_main
  Hello
)

include(GoogleTest)
gtest_discover_tests(tests)

#include <gtest/gtest.h>
#include "Hello.h"

TEST(HelloTests, BasicAssertions) {
    EXPECT_STREQ(Hello::HelloString().c_str(), "Hello, World!");
}
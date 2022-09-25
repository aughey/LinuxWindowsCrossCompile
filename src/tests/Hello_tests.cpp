#include <gtest/gtest.h>
#include "Hello.h"

TEST(Hello_Test, BasicAssertions) {
    EXPECT_STREQ(Hello::HelloString().c_str(), "Hello, World!");
}
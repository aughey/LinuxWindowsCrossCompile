#include <gtest/gtest.h>

TEST(HelloTest, BasicAssertions) {
    EXPECT_STRNE("hello","world");
    EXPECT_STRNE("hello","helloasd");
    EXPECT_STREQ("hello","hello");
    EXPECT_STRCASENE("HELLO","helloz");
    EXPECT_STRCASEEQ("HELLO","hello");
}
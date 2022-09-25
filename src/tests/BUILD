cc_test(
    name = "tests",
    srcs = glob(["*.cpp","*.h"]),
    deps = [
        "@com_google_googletest//:gtest_main",
        "//src/lib:Hello"
    ],
    copts = ["-Isrc/lib"],
)
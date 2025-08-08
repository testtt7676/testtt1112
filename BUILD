# ==== BAZEL - BUILD ====
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

# Existing repositories (should NOT be flagged)
http_archive(
    name = "com_google_googletest",
    urls = ["https://github.com/google/googletest/archive/release-1.12.1.tar.gz"],
    strip_prefix = "googletest-release-1.12.1",
)

http_archive(
    name = "com_google_absl",
    urls = ["https://github.com/abseil/abseil-cpp/archive/20230125.3.tar.gz"],
    strip_prefix = "abseil-cpp-20230125.3",
)

# Non-existent repositories (SHOULD be detected as vulnerable)
http_archive(
    name = "fake_vulnerable_bazel_package",
    urls = ["https://github.com/nonexistent-owner/fake-bazel-repo/archive/v1.0.0.tar.gz"],
    strip_prefix = "fake-bazel-repo-1.0.0",
)

git_repository(
    name = "nonexistent_git_bazel_dep",
    remote = "https://github.com/vulnerable-user/nonexistent-bazel-package.git",
    tag = "v2.1.0",
)

http_archive(
    name = "bogus_bazel_library_test",
    urls = ["https://github.com/bogus-org/invalid-bazel-dependency/archive/main.zip"],
    strip_prefix = "invalid-bazel-dependency-main",
)

cc_library(
    name = "my_library",
    srcs = ["my_library.cc"],
    hdrs = ["my_library.h"],
    deps = [
        "@com_google_absl//absl/strings",
        "@fake_vulnerable_bazel_package//:fake_lib",
        "@nonexistent_git_bazel_dep//:bogus_target",
    ],
)
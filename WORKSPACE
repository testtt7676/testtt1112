# ==== BAZEL - WORKSPACE ====
workspace(name = "bazel_dc_test")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# Existing rules
http_archive(
    name = "rules_cc",
    urls = ["https://github.com/bazelbuild/rules_cc/releases/download/0.0.6/rules_cc-0.0.6.tar.gz"],
    sha256 = "3d9e271e2876ba42e114c9b9bc51454e379cbf0ec9ef9d40e2ae4cec61a31b40",
    strip_prefix = "rules_cc-0.0.6",
)

# Non-existent rules and dependencies
http_archive(
    name = "fake_bazel_rules",
    urls = ["https://github.com/nonexistent-owner/fake-bazel-rules/archive/v1.0.0.tar.gz"],
    sha256 = "fake-sha256-hash-for-testing-purposes-only",
    strip_prefix = "fake-bazel-rules-1.0.0",
)

http_archive(
    name = "vulnerable_bazel_dependency",
    urls = ["https://github.com/vulnerable-user/nonexistent-bazel-dep/releases/download/v2.1.0/release.tar.gz"],
    sha256 = "another-fake-sha256-hash-for-vulnerability-testing",
)

load("@fake_bazel_rules//fake_rules:deps.bzl", "fake_dependencies")
fake_dependencies()

load("@vulnerable_bazel_dependency//:workspace.bzl", "vulnerable_workspace_setup")
vulnerable_workspace_setup()
workspace(name = "nalu_examples")

load("//:bazel/nalu_examples_deps.bzl", "generated_maven_jars", "nalu_examples_deps")

nalu_examples_deps()

generated_maven_jars()

# Load GWT
load("@gwt_2_8_2//bazel:gwt_2_8_2_deps.bzl", gwt_generated_maven_jars = "generated_maven_jars")

gwt_generated_maven_jars()

package(default_visibility = ["//visibility:public"])

load("@gwt_2_8_2//bazel:gwt_application.bzl", "gwt_application")

gwt_application(
    name = "nalu_bazel_example",
    srcs = glob(["src/main/java/**/*.java"]),
    compiler_flags = [
        "-strict",
        "-sourceLevel 1.8",
        "-logLevel INFO",
    ],
    compiler_jvm_flags = [
        "-Xmx1G",
    ],
    dev_flags = [
        "-logLevel INFO",
    ],
    dev_jvm_flags = [
        "-Xmx1G",
    ],
    java_roots = [
        "app/src/main/java",
    ],
    modules = ["com.github.nalukit.example.nalu.simpleapplication.Application"],
    pubs = glob(
        ["src/main/resources/static/*"],
        exclude_directories = 0,
    ),
    resources = glob(["src/main/resources/**/*"]),
    visibility = ["//visibility:public"],
    deps = [
        ":processor",
        "@com_github_nalukit_nalu//jar",
        "@com_github_nalukit_nalu_plugin_core_web//jar",
        "@com_github_nalukit_nalu_plugin_elemental2//jar",
        "@com_github_nalukit_nalu_processor//jar",
        "@com_google_elemental2_elemental2_core//jar",
        "@com_google_elemental2_elemental2_dom//jar",
        "@com_google_elemental2_elemental2_promise//jar",
        "@com_google_elemental2_elemental2_svg//jar",
        "@com_google_elemental2_elemental2_webstorage//jar",
        "@com_google_jsinterop_base//jar",
        "@com_squareup_javapoet//jar",
        "@org_dominokit_domino_ui//jar",
        "@org_dominokit_domino_ui_sources//jar",
        "@org_gwtproject_i18n_gwt_cldr//jar",
        "@org_gwtproject_i18n_gwt_cldr_sources//jar",
        "@org_gwtproject_i18n_gwt_datetimeformat//jar",
        "@org_gwtproject_i18n_gwt_datetimeformat_sources//jar",
        "@org_gwtproject_timer_gwt_timer//jar",
        "@org_jboss_gwt_elemento_elemento_core//jar",
        "@org_jboss_gwt_elemento_elemento_template_api//jar",
        "@org_jboss_gwt_elemento_elemento_template_processor//jar",
    ],
)

java_plugin(
    name = "nalu_processor",
    processor_class = "com.github.nalukit.nalu.processor.NaluProcessor",
    deps = [
        "@com_github_nalukit_nalu//jar",
        "@com_github_nalukit_nalu_processor//jar",
        "@com_google_gson_gson//jar",
        "@com_squareup_javapoet//jar",
    ],
)

java_library(
    name = "processor",
    exported_plugins = [
        ":nalu_processor",
    ],
    visibility = ["//visibility:public"],
    exports = ["@com_github_nalukit_nalu_processor//jar"],
)

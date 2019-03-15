load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")

def nalu_examples_deps():
    if "gwt_2_8_2" not in native.existing_rules():
        git_repository(
            name = "gwt_2_8_2",
            commit = "30672bc682e665ff5436be1ef3b3a724b4c596dc",
            remote = "git@github.com:tadeoj/bazel_gwt_2.8.2.git",
        )

def generated_maven_jars():
    jvm_maven_import_external(
        name = "com_google_gson_gson",
        artifact = "com.google.code.gson:gson:2.8.5",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_google_jsinterop_base",
        artifact = "com.google.jsinterop:base:1.0.0-RC1",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_google_elemental2_elemental2_core",
        artifact = "com.google.elemental2:elemental2-core:1.0.0-RC1",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_google_elemental2_elemental2_dom",
        artifact = "com.google.elemental2:elemental2-dom:1.0.0-RC1",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_google_elemental2_elemental2_promise",
        artifact = "com.google.elemental2:elemental2-promise:1.0.0-RC1",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_google_elemental2_elemental2_webstorage",
        artifact = "com.google.elemental2:elemental2-webstorage:1.0.0-RC1",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_google_elemental2_elemental2_svg",
        artifact = "com.google.elemental2:elemental2-svg:1.0.0-RC1",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_github_nalukit_nalu",
        artifact = "com.github.nalukit:nalu:1.2.0",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_github_nalukit_nalu_processor",
        artifact = "com.github.nalukit:nalu-processor:1.2.0",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_github_nalukit_nalu_plugin_elemental2",
        artifact = "com.github.nalukit:nalu-plugin-elemental2:1.2.0",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_github_nalukit_nalu_plugin_core_web",
        artifact = "com.github.nalukit:nalu-plugin-core-web:1.2.0",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "org_jboss_gwt_elemento_elemento_core",
        artifact = "org.jboss.gwt.elemento:elemento-core:0.8.5",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "org_jboss_gwt_elemento_elemento_template_api",
        artifact = "org.jboss.gwt.elemento:elemento-template-api:0.8.5",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "org_jboss_gwt_elemento_elemento_template_processor",
        artifact = "org.jboss.gwt.elemento:elemento-template-processor:0.8.5",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_squareup_javapoet",
        artifact = "com.squareup:javapoet:1.11.1",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    http_jar(
        name = "org_dominokit_domino_ui",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/domino-ui/1.0-SNAPSHOT/domino-ui-1.0-20190312.103106-410.jar"],
    )

    http_jar(
        name = "org_dominokit_domino_ui_sources",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/domino-ui/1.0-SNAPSHOT/domino-ui-1.0-20190312.103106-410-sources.jar"],
    )

    http_jar(
        name = "org_gwtproject_timer_gwt_timer",
        urls = ["https://repo.vertispan.com/gwt-snapshot/org/gwtproject/timer/gwt-timer/1.0-SNAPSHOT/gwt-timer-1.0-20180623.095409-6.jar"],
    )

    http_jar(
        name = "org_gwtproject_i18n_gwt_cldr",
        urls = ["https://repo.vertispan.com/gwt-snapshot/org/gwtproject/i18n/gwt-cldr/1.0-SNAPSHOT/gwt-cldr-1.0-20181227.163858-5.jar"],
    )

    http_jar(
        name = "org_gwtproject_i18n_gwt_cldr_sources",
        urls = ["https://repo.vertispan.com/gwt-snapshot/org/gwtproject/i18n/gwt-cldr/1.0-SNAPSHOT/gwt-cldr-1.0-20181227.163858-5-sources.jar"],
    )

    http_jar(
        name = "org_gwtproject_i18n_gwt_datetimeformat",
        urls = ["https://repo.vertispan.com/gwt-snapshot/org/gwtproject/i18n/gwt-datetimeformat/1.0-SNAPSHOT/gwt-datetimeformat-1.0-20180414.184100-1.jar"],
    )

    http_jar(
        name = "org_gwtproject_i18n_gwt_datetimeformat_sources",
        urls = ["https://repo.vertispan.com/gwt-snapshot/org/gwtproject/i18n/gwt-datetimeformat/1.0-SNAPSHOT/gwt-datetimeformat-1.0-20180414.184100-1-sources.jar"],
    )

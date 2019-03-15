# nalu-bazel-example

This project is an example of a gwt application with nalu and domino-ui built and launched with bazel. 

The application is based on [NaluKit/nalu-examples](https://github.com/NaluKit/nalu-examples)

The application uses the bazel rule [bazel_gwt_2.8.2](https://github.com/tadeoj/bazel_gwt_2.8.2)

## Bazel

To consult the rules available in bazel, you must execute in shell: 

```
bazel query ...
```

The result should be:

```
//app:nalu_bazel_example-dev
//app:nalu_bazel_example-deps
//app:processor
//app:nalu_processor
//app:nalu_bazel_example
```

To launch the application in dev mode, you must execute in shell: 

```
bazel run //app:nalu_bazel_example-dev
```

To build the application, you must execute in shell: 

```
bazel build //app:nalu_bazel_example
```

The result of the construction will be available in: 

```
bazel-bin/app/root.war
```

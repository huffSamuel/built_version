_This example assumes you're using a recent version of the Dart or Flutter SDK._

To use [package:built_version][built_version] in your package, add these
dependencies to your `pubspec.yaml`.

```yaml
dependencies:
  built_version_annotation: <latest>

dev_dependencies:
  build_runner: ^2.3.3
  built_version: <latest>
```

Annotate your code with classes defined in
[package:built_version_annotation][built_version_annotation].

- See [`lib/example.dart`][example] for an example of a file using these
  annotations.

- See [`lib/example.g.dart`][example_g] for the generated file.

Run `dart run build_runner build` to generate files into your source directory.

```console
> dart run build_runner build
[INFO] Generating build script completed, took 342ms
[INFO] Reading cached asset graph completed, took 100ms
[INFO] Checking for updates since last build completed, took 580ms
[INFO] Running build completed, took 1.0s
[INFO] Caching finalized dependency graph completed, took 63ms
[INFO] Succeeded after 1.1s with 3 outputs (5 actions)
```

[example]: lib/example.dart
[example_g]: lib/example.g.dart
[built_version]: https://pub.dev/packages/built_version
[built_version_attribute]: https://pub.dev/packages/built_version_attribute
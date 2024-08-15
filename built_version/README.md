# built_version
<!-- pub link -->

Provides Dart build systems for generating a package version string accessible at compile time.

The builder generates code when it finds members annotated with classes defined in [package:built_version_annotation]().

## Setup

## Example

Given a library `example.dart` with a getter annotated with [BuiltVersion]():

```dart
import 'package:built_version_annotation/built_version_annotation.dart';

part 'example.g.dart';

@BuiltVersion()
String get version => _$PackageVersion;
```

Building creates the corresponding `example.g.dart`:

```dart
part of 'example.dart';

String get _$PackageVersion => '1.0.0';
```

The value of `_$PackageVersion` will be the value found in the project's `pubspec.yaml`.

## Running the code generator
Once you have added the annotations to your code you then need to run the code generator to generate the missing .g.dart generated dart files.

Run `> dart run build_runner build` in the package directory.

## Annotations
The only annotation is `[BuiltVersion]()`. When applied to a getter, a `_$PackageVersion` code will be generated when you build.

## Motivation

Why [package:built_version]() vs. [package:package_info_plus]()? This package offers a build-time value that is accessible in Dart code that is generated from the version code in `pubspec.yaml`. This value is available for a single plugin/package, as opposed to package_info_plus which takes the value from the current running application.
# Example

`version.dart`
```dart
import 'package:built_version_annotation/built_version_annotation.dart';

part 'version.g.dart';

@BuiltVersion()
String get ver => _$PackageVersion;
```

`version.g.dart`
```dart
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version.dart';

// **************************************************************************
// BuiltVersionGenerator
// **************************************************************************

String get _$PackageVersion => '1.0.0';
```

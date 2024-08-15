import 'package:built_version_annotation/built_version_annotation.dart';

part 'example.g.dart';

@BuiltVersion()
String get version => _$PackageVersion;
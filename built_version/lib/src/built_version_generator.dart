import 'dart:io';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:built_version_annotation/built_version_annotation.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:source_gen/source_gen.dart';

import 'format_version.dart';

class BuiltVersionGenerator extends GeneratorForAnnotation<BuiltVersion> {
  @override
  generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    if (element.kind != ElementKind.GETTER) {
      throw InvalidGenerationSourceError(
        '`@BuiltVersion` can only be used on getters.',
        element: element,
      );
    }

    final pubspec = AssetId(buildStep.inputId.package, 'pubspec.yaml');

    if (!await buildStep.canRead(pubspec)) {
      log.warning(
          'Could not read the "pubspec.yaml" file associated with this package.');
      return;
    }

    final pubspecContents = await buildStep.readAsString(pubspec);

    final packageVersionEntry = pubspecContents
        .split(Platform.lineTerminator)
        .where((x) => x.startsWith('version'))
        .firstOrNull;

    if (packageVersionEntry == null) {
      log.warning('Missing the required "version" field in "pubspec.yaml".');
      return;
    }

    final packageVersion =
        Version.parse(packageVersionEntry.split(':').last.trim());

    var src =
        'String get _\$PackageVersion => \'${formatVersion(packageVersion)}\';';

    return src;
  }
}

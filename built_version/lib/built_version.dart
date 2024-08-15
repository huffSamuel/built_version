library;

import 'package:build/build.dart';
import 'src/built_version_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder copyBuilder(BuilderOptions options) => SharedPartBuilder(
      [BuiltVersionGenerator()],
      'builtVersion',
    );

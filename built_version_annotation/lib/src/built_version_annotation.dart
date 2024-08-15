import 'package:meta/meta_meta.dart';

/// An annotation used to generate a compile-time version string.
@Target({TargetKind.getter})
class BuiltVersion {
  const BuiltVersion();
}

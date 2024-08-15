import 'package:pub_semver/pub_semver.dart';

String formatVersion(Version version) {
  return version.canonicalizedVersion;
}


## ✗ Follow Dart file conventions (10 / 30)
### [x] 0/10 points: Provide a valid `pubspec.yaml`

<details>
<summary>
The package description is too short.
</summary>

Add more detail to the `description` field of `pubspec.yaml`. Use 60 to 180 characters to describe the package, what it does, and its target use case.
</details>
* `pubspec.yaml` doesn't have a `homepage` entry.
* `pubspec.yaml` doesn't have a `repository` entry.

### [*] 5/5 points: Provide a valid `README.md`


### [*] 5/5 points: Provide a valid `CHANGELOG.md`


### [x] 0/10 points: Use an OSI-approved license

<details>
<summary>
No license was recognized.
</summary>

Consider using an [OSI-approved license](https://opensource.org/licenses) in the `LICENSE` file to make it more accessible to the community.
</details>

## ✗ Provide documentation (10 / 20)
### [x] 0/10 points: 20% or more of the public API has dartdoc comments

Dependency resolution failed, unable to run `dartdoc`.

### [*] 10/10 points: Package has an example


## ✓ Platform support (20 / 20)
### [*] 20/20 points: Supports 3 of 6 possible platforms (iOS, Android, Web, **Windows**, **macOS**, **Linux**)

* ✓ Windows
* ✓ Linux
* ✓ macOS

These platforms are not supported:

<details>
<summary>
Package not compatible with platform Android
</summary>

Because:
* `package:built_version/built_version.dart` that imports:
* `package:source_gen/source_gen.dart` that imports:
* `package:source_gen/src/type_checker.dart` that imports:
* `dart:mirrors`
</details>
<details>
<summary>
Package not compatible with platform iOS
</summary>

Because:
* `package:built_version/built_version.dart` that imports:
* `package:source_gen/source_gen.dart` that imports:
* `package:source_gen/src/type_checker.dart` that imports:
* `dart:mirrors`
</details>
<details>
<summary>
Package not compatible with platform Web
</summary>

Because:
* `package:built_version/built_version.dart` that imports:
* `package:source_gen/source_gen.dart` that imports:
* `package:source_gen/src/utils.dart` that imports:
* `package:build/build.dart` that imports:
* `package:build/src/generate/run_post_process_builder.dart` that imports:
* `package:build/src/builder/post_process_builder.dart` that imports:
* `package:build/src/builder/builder.dart` that imports:
* `package:build/src/builder/build_step.dart` that imports:
* `package:build/src/asset/reader.dart` that imports:
* `package:glob/glob.dart` that imports:
* `package:glob/src/list_tree.dart` that imports:
* `package:file/file.dart` that imports:
* `package:file/src/interface.dart` that imports:
* `package:file/src/io.dart` that imports:
* `dart:io`
</details>

## ✗ Pass static analysis (0 / 50)
### [x] 0/50 points: code has no errors, warnings, lints, or formatting issues

* Running `dart pub outdated` failed with the following output:

```
Because built_version depends on built_version_annotation any which doesn't exist (could not find package built_version_annotation at https://pub.dev), version solving failed.
```


## ✗ Support up-to-date dependencies (10 / 40)
### [x] 0/10 points: All of the package dependencies are supported in the latest version

* Could not run `dart pub outdated`: `dart pub get` failed:

```
OUT:
Resolving dependencies...
ERR:
Because built_version depends on built_version_annotation any which doesn't exist (could not find package built_version_annotation at https://pub.dev), version solving failed.
```

### [*] 10/10 points: Package supports latest stable Dart and Flutter SDKs


### [x] 0/20 points: Compatible with dependency constraint lower bounds

`dart pub downgrade` failed with:

```
OUT:
Resolving dependencies...
ERR:
Because built_version depends on built_version_annotation any which doesn't exist (could not find package built_version_annotation at https://pub.dev), version solving failed.
```

Run `dart pub downgrade` and then `dart analyze` to reproduce the above problem.

You may run `dart pub upgrade --tighten` to update your dependency constraints, see [dart.dev/go/downgrade-testing](https://dart.dev/go/downgrade-testing) for details.

Points: 50/160.

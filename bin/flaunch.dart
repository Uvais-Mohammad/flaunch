import 'dart:io';
import 'dart:isolate';
import 'package:args/args.dart';

void main(List<String> arguments) {
  final parser = ArgParser()
    ..addFlag('setup', abbr: 's', help: 'Setup project structure')
    ..addFlag('dependencies', abbr: 'd', help: 'Add common dependencies')
    ..addFlag('lint', abbr: 'l', help: 'Configure lint rules')
    ..addFlag('boilerplate', abbr: 'b', help: 'Generate boilerplate code')
    ..addFlag('all', abbr: 'a', help: 'Run all tasks');

  final argResults = parser.parse(arguments);

  if (argResults.wasParsed('setup')) setupProject();
  if (argResults.wasParsed('dependencies')) addDependencies();
  if (argResults.wasParsed('lint')) configureLint();
  if (argResults.wasParsed('boilerplate')) generateBoilerplate();
  if (argResults.wasParsed('all')) {
    setupProject();
    addDependencies();
    configureLint();
    generateBoilerplate();
    runBuildRunner();
  }
}

void setupProject() {
  print('🛠 Setting up project structure...');
  Directory('lib/features').createSync(recursive: true);
  Directory('lib/core').createSync();
  print('✅ Project structure created!');
}

void addDependencies() {
  print('📦 Adding dependencies...');

  // Add regular dependencies
  Process.runSync('flutter', [
    'pub',
    'add',
    'flutter_bloc',
    'dio',
    'fluttertoast',
    'equatable',
    'hydrated_bloc',
    'path_provider',
    'get_it',
    'injectable',
    'json_serializable',
    'freezed',
    'flutter_staggered_animations'
  ]);

  // Add dev dependencies
  Process.runSync('flutter', [
    'pub',
    'add',
    'build_runner',
    'freezed_annotation',
    'injectable_generator',
    '--dev', // Ensures these are added as dev dependencies
  ]);

  print('✅ Dependencies added successfully!');
}

void configureLint() {
  print('🔍 Configuring lint rules...');
  File('analysis_options.yaml').writeAsStringSync('''
include: package:lints/recommended.yaml
linter:
  rules:
    - always_use_package_imports
    - prefer_final_fields
  ''');
  print('✅ Lint rules configured!');
}

Future<void> generateBoilerplate() async {
  print('📂 Generating boilerplate code...');

  Uri? packageUri = await Isolate.resolvePackageUri(Uri.parse('package:flaunch/templates/'));
  if (packageUri == null) {
    print('❌ Error: Could not locate templates folder inside the package.');
    return;
  }

  Directory templateDir = Directory.fromUri(packageUri);
  Directory targetDir = Directory('lib');

  if (!templateDir.existsSync()) {
    print('❌ Error: Template folder not found!');
    return;
  }

  _copyDirectory(templateDir, targetDir);
  print('✅ Boilerplate generated successfully!');
}

void _copyDirectory(Directory source, Directory destination) {
  for (var entity in source.listSync(recursive: true)) {
    final relativePath = entity.path.replaceFirst(source.path, '').replaceFirst(RegExp(r'^/'), '');
    final targetPath = '${destination.path}/$relativePath';

    if (entity is Directory) {
      Directory(targetPath).createSync(recursive: true);
    } else if (entity is File) {
      String newPath = targetPath.endsWith('.txt')
          ? targetPath.replaceAll('.txt', '') // Remove .txt if present
          : targetPath; // Keep original extension

      File(newPath).writeAsStringSync(entity.readAsStringSync());
    }
  }
}

void runBuildRunner() {
  print('🔄 Running build_runner...');

  var result = Process.runSync('dart', ['run', 'build_runner', 'build', '-d']);

  if (result.exitCode == 0) {
    print('✅ build_runner completed successfully!');
  } else {
    print('❌ build_runner failed!');
    print(result.stderr);
  }
}

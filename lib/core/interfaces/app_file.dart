import '../../ui.dart';

abstract class AppFile {
  String get path;

  String get name;

  Future<Uint8List?> readAsBytes();
}

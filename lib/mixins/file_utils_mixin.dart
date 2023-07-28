import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

import '../core/exceptions/exceptions.dart';
import '../core/interfaces/app_file.dart';
import '../ui.dart';

class AppXFile extends AppFile {
  AppXFile._(this._file);

  final XFile _file;

  @override
  String get name => _file.name;

  @override
  String get path => _file.path;

  @override
  Future<Uint8List?> readAsBytes() => _file.readAsBytes();
}

class AppPlatformFile extends AppFile {
  AppPlatformFile._(this._file);

  final PlatformFile _file;

  @override
  String get name => _file.name;

  // path throws error on wed;
  @override
  String get path => _file.path!;

  @override
  Future<Uint8List?> readAsBytes() =>
      SynchronousFuture<Uint8List?>(_file.bytes);
}

class AppNetworkFile extends AppFile {
  AppNetworkFile._(this.url);

  final String url;

  @override
  String get name => Uri.parse(url).path.split('/').last;

  @override
  String get path => url;

  @override
  Future<Uint8List?> readAsBytes() async {
    assert(false,
        'Prefer Direct download for files and Image.network for image files');
    return (await http.get(Uri.parse(url))).bodyBytes;
  }
}

extension AppNetworkFileUtils on String {
  AppFile toAppFile() {
    if (!startsWith('http')) {
      throw NetworkFileException();
    }

    return AppNetworkFile._(this);
  }
}

extension AppXFileUtils on XFile {
  AppFile toAppFile() => AppXFile._(this);
}

extension AppPlatformFileUtils on PlatformFile {
  AppFile toAppFile() => AppPlatformFile._(this);
}

mixin FileUtils on BuildContext {
  static final ImagePicker _imagePicker = ImagePicker();

  static Future<AppFile?> pickImageFromCamera() async {
    final XFile? file = await _imagePicker.pickImage(
      source: ImageSource.camera,
    );
    return file?.toAppFile();
  }

  static Future<AppFile?> pickImageFromGallery() async {
    final XFile? file = await _imagePicker.pickImage(
      source: ImageSource.gallery,
    );
    return file?.toAppFile();
  }

  static Future<List<AppFile>?> pickMultipleImages(
      int? imageQuality, double? maxWidth, double? maxHeight) async {
    return _imagePicker.pickMultiImage().then(
        (List<XFile> value) => value.map((XFile e) => e.toAppFile()).toList());
  }

  static Future<AppFile?> openFilePicker() async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result!.files.isEmpty) {
      return null;
    }
    return result.files.first.toAppFile();
  }

  static Future<List<AppFile?>?> openMultiFilePicker() async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
    );

    return result?.files
        .map((PlatformFile element) => element.toAppFile())
        .toList();
  }
}

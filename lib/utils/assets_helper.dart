class ImageHelper {
  static const String _imageFolderPath = 'assets/';

  static String getLocalImagePath(String imageName) {
    return '$_imageFolderPath$imageName';
  }
}

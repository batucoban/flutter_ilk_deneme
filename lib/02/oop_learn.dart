
import 'dart:io';

import 'custom_exception.dart';

abstract class IFileDownload {
  bool? downloadItem(FileItem? fileItem);

  void toShare(String path) {
    
  }
}


class FileDownload implements IFileDownload {

  @override
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDownloadException();

    print('a');

    return true;
  }
  
  @override
  void toShare(String path) {
    // TODO: implement toShare
  }
}

class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}
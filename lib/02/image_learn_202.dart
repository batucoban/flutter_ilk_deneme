import 'package:flutter/material.dart';

class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({super.key});

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImagePaths.school.toWidget(height: 100),
    );
  }
}

enum ImagePaths {
  school
}

extension ImagePathsExtension on ImagePaths{
  String path() {
    return 'assets/$name.png';
  }

  Widget toWidget({double height = 24}) {
    return Image.asset(path(), height: height,);
  }
}
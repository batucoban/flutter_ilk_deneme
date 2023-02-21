import 'package:flutter/material.dart';

class ImageDeneme extends StatelessWidget {
  const ImageDeneme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
          height: 400,
          width: 300,
          child: Image.asset('assets/school.png', fit: BoxFit.cover),
          )
      ]),
    );
  }
}
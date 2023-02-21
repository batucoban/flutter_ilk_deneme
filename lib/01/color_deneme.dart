import 'package:flutter/material.dart';

class ColorDeneme extends StatelessWidget {
  const ColorDeneme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: ColorItems.porchase,
        child: const Text('hella'),
      ),
    );
  }
}

class ColorItems {
  static const Color porchase = const Color(0xffEDBF61);

  static const Color sulu = Color.fromRGBO(198, 237, 97, 1);
}
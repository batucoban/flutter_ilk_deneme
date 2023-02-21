import 'package:flutter/material.dart';

class IconDeneme extends StatelessWidget {
  const IconDeneme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('helloo')),
      body: Column(children: [
        IconButton(
          onPressed: () {}, 
          icon: const Icon(
            Icons.message_outlined,
            color: Colors.red,
            size: 40,
            )
          )
      ]),
    );
  }
}
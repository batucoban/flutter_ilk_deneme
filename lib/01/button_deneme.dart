import 'package:flutter/material.dart';

class ButtonDeneme extends StatelessWidget {
  const ButtonDeneme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: const Text('save'),
            onPressed: () {},
          ),
          ElevatedButton(onPressed: () {}, child: const Text('batu')),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          OutlinedButton(onPressed: () {}, child: const Text('data')),
          
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_ilk_deneme/core/random_image.dart';

class ListTileDeneme extends StatelessWidget {
  const ListTileDeneme({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            title: const RandomImage(),
            onTap: (){},
            subtitle: const Text('How do you use your card'),
            leading: const Icon(Icons.money),
            trailing: const Icon(Icons.chevron_right),
          )
        ],
      ),
    );
  }
}
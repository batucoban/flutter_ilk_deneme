import 'package:flutter/material.dart';
import 'package:flutter_ilk_deneme/core/random_image.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});
  final _cardHeight = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(flex: 4, child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned.fill(bottom: _cardHeight/2, child: const RandomImage()),
              Positioned(
                height: _cardHeight,
                width: 200,
                bottom: 0,
                child: const Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(),
                )
                )
            ],
          )),
          const Spacer(flex: 6)
        ],
      ),
    );
  }
}
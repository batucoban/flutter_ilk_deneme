import 'package:flutter/material.dart';

class CardDeneme extends StatelessWidget {
  const CardDeneme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children:const [
        Card(
          margin: EdgeInsets.all(10),
          shape: StadiumBorder(),
          child: SizedBox(height: 100, width: 300),
        ),
        Card(
          child: SizedBox(height: 100, width: 100),
        )
      ],
      ),
    );
  }
}
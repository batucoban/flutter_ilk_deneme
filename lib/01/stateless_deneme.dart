import 'package:flutter/material.dart';

class StatelessDeneme extends StatelessWidget {
  const StatelessDeneme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const [
          TitleTextWidget(text: 'batu1'),
          TitleTextWidget(text: 'batu2'),
          TitleTextWidget(text: 'batu3'),
      ]),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text, 
      style: Theme.of(context).textTheme.headlineSmall
      );
  }
}
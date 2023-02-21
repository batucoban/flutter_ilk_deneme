import 'package:flutter/material.dart';

class TextDenemeView extends StatelessWidget{
  const TextDenemeView({super.key});
  final String name = 'batu';
  final String name2 = 'sude';
 
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ('Welcome $name'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              // ignore: prefer_const_constructors
              style: ProjectStyles.welcomeStyle
            ),
            Text(
              ('Hello $name2'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              // ignore: prefer_const_constructors
              style: ProjectStyles.welcomeStyle
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles{
  static TextStyle welcomeStyle = const TextStyle(
    wordSpacing: 2,
    decoration: TextDecoration.underline,
    fontStyle: FontStyle.italic,
    color: Colors.lime,
    letterSpacing: 2,
    fontSize: 24,
    fontWeight: FontWeight.bold
  );
}
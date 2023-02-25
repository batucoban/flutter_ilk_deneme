import 'package:flutter/material.dart';

class TextFieldDeneme extends StatefulWidget {
  const TextFieldDeneme({super.key});

  @override
  State<TextFieldDeneme> createState() => _TextFieldDenemeState();
}

class _TextFieldDenemeState extends State<TextFieldDeneme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const TextField(
        maxLength: 100,
        keyboardType: TextInputType.emailAddress,
        autofillHints: [AutofillHints.email],
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          border: OutlineInputBorder(),
          labelText: 'Mail',

        ),
      ),
    );
  }
}
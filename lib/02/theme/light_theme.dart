import 'package:flutter/material.dart';

class LightTheme {

  final _lightColor = _LightColor();

  late ThemeData theme;

  LightTheme(){
      theme = ThemeData(
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.green,
      ),
      colorScheme: const ColorScheme.light(
        
      ),
      textTheme: ThemeData.light().textTheme.copyWith(
        headlineLarge: TextStyle(
          fontSize: 30,
          color: _lightColor._textColor,
        )
      ),
    );
  }
}

class _LightColor {
  final Color _textColor = const Color.fromARGB(255, 226, 58, 58);
}
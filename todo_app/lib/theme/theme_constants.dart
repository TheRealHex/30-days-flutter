import 'package:flutter/material.dart';

// bool isDark = false;

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary: Colors.grey[850]!,
    secondary: Colors.grey[800]!,
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.black,
    primary: Colors.grey[300]!,
    secondary: Colors.grey[350]!,
  ),
);

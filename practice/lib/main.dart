import 'package:flutter/material.dart';
import 'package:project/style.dart';

import 'screens/learning/layouts.dart';
// import 'package:project/screens/home.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Layout(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          titleTextStyle: appBarTextStyle,
        ),
        textTheme: const TextTheme(
          titleMedium: mediumTextStyle,
          bodyMedium: mediumBodyStyle,
        ),
      ), // textTheme: const TextTheme(titleMedium: appBarTextStyle)
    );
  }
}

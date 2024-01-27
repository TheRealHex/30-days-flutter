import 'package:flutter/material.dart';
import 'package:project/screens/practice2/practice2.dart';
import 'package:project/screens/practice2/settings.dart';
import 'package:project/screens/screen_not_found.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Practice2(),
      routes: {
        '/': (_) => const Practice2(title: 'Homepage'),
        '/settings': (_) => const Settings(),
      },
      onUnknownRoute: ((settings) =>
          MaterialPageRoute(builder: (context) => const ScreenNotFound())),
      // theme: ThemeData(
      //   appBarTheme: const AppBarTheme(
      //     titleTextStyle: appBarTextStyle,
      //   ),
      //   textTheme: const TextTheme(
      //     titleMedium: mediumTextStyle,
      //     bodyMedium: mediumBodyStyle,
      //   ),
      // ), // textTheme: const TextTheme(titleMedium: appBarTextStyle)
    );
  }
}

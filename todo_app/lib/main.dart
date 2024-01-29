import 'package:flutter/material.dart';
import 'package:todo_app/screen/completed.dart';
import 'package:todo_app/screen/home.dart';
import 'package:todo_app/theme/theme_constants.dart';
// import 'package:todo_app/style.dart';
import 'package:todo_app/theme/theme_manager.dart';

void main() {
  runApp(const Main());
}

ThemeManager _themeManager = ThemeManager();

class Main extends StatelessWidget {
  const Main({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => Home(),
        '/checked': (_) => Checked(
              checkedList: [],
            ),
      },
      theme: darkTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
    );
  }
}

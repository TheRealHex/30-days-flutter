import 'package:flutter/material.dart';
import 'package:todo_app/screen/completed.dart';
import 'package:todo_app/screen/home.dart';
import 'package:todo_app/theme/theme_constants.dart';

void main() {
  runApp(const Main());
}

ThemeData activeTheme = lightTheme;
bool isDark = false;

class Main extends StatefulWidget {
  const Main({Key? key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => Home(toggleTheme: toggleTheme),
        '/checked': (_) => Checked(
              checkedList: [],
            ),
      },
      theme: activeTheme,
      darkTheme: darkTheme,
    );
  }

  void toggleTheme() {
    setState(() {
      isDark = !isDark;
      activeTheme = isDark ? darkTheme : lightTheme;
    });
  }
}

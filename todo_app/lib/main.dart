import 'package:flutter/material.dart';
import 'package:todo_app/screen/completed.dart';
import 'package:todo_app/screen/home.dart';

void main() {
  runApp(const Main());
}

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
    );
  }
}

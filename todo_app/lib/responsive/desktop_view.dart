import 'package:flutter/material.dart';
import 'package:todo_app/responsive/constants.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: myAppBar,
    );
  }
}

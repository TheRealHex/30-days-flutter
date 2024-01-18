import 'package:flutter/material.dart';
import 'package:todo_app/responsive/constants.dart';

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: myAppBar,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project/screens/practice2/settings.dart';

class Practice2 extends StatelessWidget {
  const Practice2({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/setting');
            },
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: Column(children: [
        GestureDetector(
            child: const Text('Click this text!'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => const Settings()))),
      ]),
    );
  }
}

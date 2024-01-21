import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layout')),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner('assets/images/Mountain.jpg'),
          TextSection(Colors.red),
          TextSection(Colors.blue),
          TextSection(Colors.green),
        ],
      ),
    );
  }
}

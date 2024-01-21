import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  // const ImageBanner({super.key});
  final String _assetPath;

  const ImageBanner(this._assetPath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height / 1.8),
      decoration: const BoxDecoration(color: Colors.grey),
      child: Image.asset(
        _assetPath,
        fit: BoxFit.cover,
      ),
    );
  }
}

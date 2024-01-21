import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  // final Color _color;
  final String _title;
  final String _body;

  const TextSection(this._title, this._body, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
          child: Text(_title, style: Theme.of(context).textTheme.titleMedium,),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(16, 4, 16, 2),
          child: Text(_body, style: Theme.of(context).textTheme.bodyMedium),
        ),
      ],
    );
  }
}

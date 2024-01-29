import 'dart:io';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Checked extends StatefulWidget {
  Checked({
    super.key,
    required this.checkedList,
  });
  List<String> checkedList = [];

  @override
  State<Checked> createState() => _CheckedState();
}

class _CheckedState extends State<Checked> {
  List<String> unChecked = [];
  @override
  void initState() {
    super.initState();
    _loadTask();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Completed')),
      body: ListView.builder(
        itemCount: widget.checkedList.length,
        itemBuilder: (context, index) {
          return _fetchList(index);
        },
      ),
    );
  }

  Padding _fetchList(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.star),
          Flexible(
            child: ListTile(
              title: Text(widget.checkedList[index]),
              titleTextStyle: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),

          // Uncheck icon
          IconButton(
            onPressed: () {
              if (widget.checkedList.isNotEmpty) {
                String completed = widget.checkedList[index];
                widget.checkedList.removeAt(index);
                unChecked.add(completed);

                // Save into files
                final doneFile = File('/home/hex/done.txt');
                doneFile.writeAsStringSync(widget.checkedList.join('\n'));
                final todoFile = File('/home/hex/todo.txt');
                todoFile.writeAsStringSync('$completed\n',
                    mode: FileMode.append);
                setState(() {});
              }
            },
            icon: const Icon(Icons.checklist_rtl),
          ),

          // Delete button
          IconButton(
            onPressed: () {
              setState(() {
                if (widget.checkedList.isNotEmpty) {
                  widget.checkedList.removeAt(index);

                  // save the file
                  final file = File('/home/hex/done.txt');
                  file.writeAsStringSync(widget.checkedList.join('\n'));
                }
              });
            },
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }

  void _loadTask() {
    final file = File('/home/hex/done.txt');

    if (file.existsSync()) {
      setState(() {
        final content = file.readAsStringSync();
        // widget.checkedList.clear();
        widget.checkedList.addAll(
            content.split('\n').where((task) => task.trim().isNotEmpty));
      });
    }
  }
}

import 'package:flutter/material.dart';
import 'package:todo_app/responsive/constants.dart';
import 'package:todo_app/responsive/mobile_view.dart';

// ignore: must_be_immutable
class Checked extends StatefulWidget {
  Checked({
    super.key,
    required this.checkedList,
  });
  List<String> checkedList = [];
  List<String> unChecked = [];

  @override
  State<Checked> createState() => _CheckedState();
}

class _CheckedState extends State<Checked> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Completed')),
      body: ListView.builder(
        itemCount: widget.checkedList.length,
        itemBuilder: (context, index) {
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
                    setState(() {
                      if (widget.checkedList.isNotEmpty) {
                        // uncheck logic
                      }
                    });
                  },
                  icon: const Icon(Icons.checklist_rtl),
                ),

                // Delete button
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (widget.checkedList.isNotEmpty) {
                        widget.checkedList.removeAt(index);
                      }
                    });
                  },
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

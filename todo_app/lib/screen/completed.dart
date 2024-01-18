import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Completed')),
      body: ListView.builder(
        itemCount: widget.checkedList.length,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.star),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.4,
                child: ListTile(
                  title: Text(widget.checkedList[index]),
                  titleTextStyle: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
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
          );
        },
      ),
    );
  }
}

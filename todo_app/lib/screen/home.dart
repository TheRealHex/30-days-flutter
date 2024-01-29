import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:todo_app/screen/completed.dart';

class Home extends StatefulWidget {
  Home({Key? key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _textController = TextEditingController();
  final List<String> todoList = [];
  final List<String> checkedList = [];
  late String inputValue;
  late String filePath = '/home/hex/todo.txt';

  @override
  void initState() {
    super.initState();
    _loadTask();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
        centerTitle: true,
        titleTextStyle: TextStyle(
          backgroundColor: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.black87,
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(children: [
          const SizedBox(height: 50),

          // Text input and insert icon
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: _searchadd(),
          ),

          // Display inserted text and icons to check & delete
          const SizedBox(height: 50),
          Flexible(
            child: ListView.builder(
              itemCount: todoList.length,
              itemBuilder: (context, index) {
                return _fetchList(context, index);
              },
            ),
          ),
        ]),
      ),
      floatingActionButton: floatingBtn(context),
    );
  }

// Search bar & add entry
  Row _searchadd() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: TextField(
            controller: _textController,
            cursorColor: Colors.black,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              hintText: 'Go for a hike!',
            ),
            onChanged: (value) {
              inputValue = value;
            },
          ),
        ),
        IconButton(
            onPressed: () {
              _saveTask(filePath);
              _loadTask();
            },
            icon: const Icon(Icons.add)),
      ],
    );
  }

  void _saveTask(String path) {
    final task = _textController.text;

    if (task.isNotEmpty) {
      todoList.add(task);
      final file = File(path);

      //Read existing content
      String existingContent = '';
      if (file.existsSync()) {
        existingContent = file.readAsStringSync();
      }

      //Append new todo
      final updateContent = '$existingContent\n$task';

      // Write the updated content back to file
      file.writeAsStringSync(updateContent);
      _textController.clear();
    }
  }

  void _loadTask() {
    final file = File('/home/hex/todo.txt');

    if (file.existsSync()) {
      final content = file.readAsStringSync();
      todoList.clear();
      todoList
          .addAll(content.split('\n').where((task) => task.trim().isNotEmpty));
      setState(() {});
    }
  }

  void _editTask(int index) {
    final String inputValue = _textController.text;
    if (inputValue.isNotEmpty) {
      todoList[index] = inputValue;

      final file = File(filePath);
      file.writeAsStringSync(todoList.join('\n'));

      _textController.clear();
    }
  }

  void _completeTask(int index) {
    String completed = todoList[index];
    todoList.removeAt(index);
    checkedList.add(completed);

    // Save into files
    final todoFile = File(filePath);
    todoFile.writeAsStringSync(todoList.join('\n'));
    final doneFile = File('/home/hex/done.txt');
    doneFile.writeAsStringSync('$completed\n', mode: FileMode.append);

    // Refresh the screen
    setState(() {});
  }

  void _deleteTask(int index) {
    if (todoList.isNotEmpty) {
      todoList.removeAt(index);

      // save the file
      final file = File(filePath);
      file.writeAsStringSync(todoList.join('\n'));
    }
  }

  // Display list of the input Todo items
  Row _fetchList(BuildContext context, int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          // width: MediaQuery.of(context).size.width / 1.4,
          child: ListTile(
            title: Text(todoList[index]),
          ),
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _editTask(index);
                  });
                },
                icon: const Icon(Icons.find_replace)),
            IconButton(
                onPressed: () {
                  setState(() {
                    _completeTask(index);
                  });
                },
                icon: const Icon(Icons.check)),
            IconButton(
              onPressed: () {
                setState(
                  () {
                    _deleteTask(index);
                  },
                );
              },
              icon: const Icon(Icons.delete),
            ),
          ],
        )
      ],
    );
  }

  // Button to browse checked list
  FloatingActionButton floatingBtn(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushReplacementNamed(
          context,
          '/checked',
          arguments: {'checkedList': checkedList},
        );
      },
      child: const Icon(Icons.checklist),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo_app/screen/completed.dart';

class Home extends StatefulWidget {
  Home({
    super.key,
    // required this.unChecked,
  });
  // late String unChecked;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _textController = TextEditingController();
  final List<String> todoList = [];
  final List<String> checkedList = [];
  late String inputValue;

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
              setState(() {
                if (inputValue != '') {
                  todoList.add(inputValue);
                  _textController.clear();
                  inputValue = '';
                }
              });
            },
            icon: const Icon(Icons.add)),
      ],
    );
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
                    if (inputValue.isNotEmpty) {
                      todoList[index] = inputValue;
                      _textController.clear();
                    }
                  });
                },
                icon: const Icon(Icons.find_replace)),
            IconButton(
                onPressed: () {
                  setState(() {
                    checkedList.add(todoList[index]);
                    if (todoList.isNotEmpty) {
                      todoList.removeAt(index);
                    }
                  });
                },
                icon: const Icon(Icons.check)),
            IconButton(
              onPressed: () {
                setState(
                  () {
                    if (todoList.isNotEmpty) {
                      todoList.removeAt(index);
                    }
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
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Checked(
              checkedList: checkedList,
            ),
          ),
        );
      },
      child: const Icon(Icons.checklist),
    );
  }
}

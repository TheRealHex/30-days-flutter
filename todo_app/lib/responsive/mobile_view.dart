import 'package:flutter/material.dart';
import 'package:todo_app/responsive/constants.dart';
import 'package:todo_app/screen/completed.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  final List<String> todoList = [];
  final List<String> checkedList = [];
  late String inputValue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[100],
        appBar: myAppBar,
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(children: [
              const SizedBox(height: 50),
              // Text input and insert icon
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                        child: TextField(
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        // fillColor: Colors.grey,
                        // filled: true,
                        hintText: 'Go for a hike!',
                      ),
                      onChanged: (value) {
                        inputValue = value;
                      },
                    )),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            if (inputValue != '') {
                              todoList.add(inputValue);
                            }
                          });
                        },
                        icon: const Icon(Icons.add))
                  ],
                ),
              ),
              // Display inserted text and icons to check & delete
              const SizedBox(height: 50),
              Flexible(
                child: ListView.builder(
                    itemCount: todoList.length,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: ListTile(
                              title: Text(todoList[index]),
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    checkedList.add(todoList[index]);
                                    if (todoList.isNotEmpty) {
                                      todoList.removeAt(index);
                                    }
                                  },
                                  icon: const Icon(Icons.check)),
                              IconButton(
                                onPressed: () {
                                  if (todoList.isNotEmpty) {
                                    todoList.removeAt(index);
                                  }
                                },
                                icon: const Icon(Icons.delete),
                              ),
                            ],
                          )
                        ],
                      );
                    }),
              )
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Checked(
                        checkedList: checkedList,
                      )),
            );
          },
          child: const Icon(Icons.checklist),
        ),
      ),
    );
  }
}

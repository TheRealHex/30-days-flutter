import 'package:flutter/material.dart';
import 'package:todo_app/responsive/constants.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  final todoList = <String>[];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[100],
        appBar: myAppBar,
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            height: MediaQuery.of(context).size.height / 1.4,
            width: MediaQuery.of(context).size.width / 1.4,
            child: Column(children: [
              const SizedBox(height: 50),
              // Text input and insert icon
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Flexible(child: TextField()),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            todoList.add('hi');
                          });
                        },
                        icon: const Icon(Icons.add))
                  ],
                ),
              ),
              // Display inserted text and icons to check & delete
              const SizedBox(height: 50),
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Its $index'),
                      Row(
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.check)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.delete)),
                        ],
                      )
                    ],
                  );
                }),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

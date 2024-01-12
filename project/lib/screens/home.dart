import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo App'),
      ),
      // const Icon(Icons.sports_soccer),
      body: Container(
        child: ListView.builder(
          itemCount: index,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: ListTile(
                leading: const Icon(Icons.list),
                trailing: const Icon(Icons.more_horiz),
                title: Text('List $index'),
                subtitle: const Text(
                    'Lorem ipsum dolor sit amet, qui minim labore cupidatat.'),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (index < 7) {
              index++;
            } else {
              index = 0;
            }
          });
        },
        child: const Icon(Icons.plus_one_rounded),
      ),
    );
  }
}

//NOTE: setState re-renders whole build function everytime the state changes so is not applicable for large projects

import 'package:flutter/material.dart';
import 'package:project/screens/practice.dart';

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
        backgroundColor: Colors.black,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      // const Icon(Icons.sports_soccer),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                colors: [Colors.white, Colors.white70],
              ),
            ),
            height: MediaQuery.of(context).size.height / 1.2,
            width: MediaQuery.of(context).size.width / 1.2,
            child: ListView.builder(
              itemCount: index,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.list),
                        trailing: const Icon(Icons.more_horiz),
                        title: Text('List $index'),
                        titleTextStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        subtitle: const Text(
                            'Lorem ipsum dolor sit amet, qui minim labore cupidatat.'),
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              if (index > 6) {
                index = 0;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Practice()),
                );
              } else {
                index++;
              }
            },
          );
        },
        child: const Icon(Icons.plus_one_rounded),
      ),
    );
  }
}

//NOTE: setState re-renders whole build function everytime the state changes so is not applicable for large projects

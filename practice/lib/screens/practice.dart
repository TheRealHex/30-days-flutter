import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learnings'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    height: screenHeight / 1.3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.network(
                          'https://www.bikebound.com/wp-content/uploads/2018/07/Honda-125-Brat-Cafe-1.jpg'),
                    ),
                  ),
                ),
              ],
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
              label: const Text('Like'),
            ),
            // TextButton(
            //   onPressed: () {},
            //   child: const Text('Text Button'),
            // ),
            // MaterialButton(
            //   onPressed: () {},
            //   color: Colors.blue,
            //   child: const Text('Material'),
            // ),
            // IconButton(
            //   onPressed: () {},
            //   icon: const Icon(Icons.sports_soccer),
            //   color: Colors.brown,
            // ),
            // ...['Hello', 'Hi', 'Hey', 'Greetings']
            //     .map((e) => Chip(label: Text(e)))
            //     .toList()
          ],
        ),
      ),
    );
  }
}

// _getChipList() {
//   const data = ["Hello", "hi", "hey", 'Greetings'];
//   List<Widget> widgetList = [];

//   for (int i = 0; i < data.length; i++) {
//     widgetList.add(
//       Chip(
//         label: Text(data[i]),
//         avatar: Text(data[i].toString()[0]),
//       ),
//     );
//   }
//   return Column(
//     children: widgetList,
//   );
// }

import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learnings'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.ads_click),
                label: const Text('Click'),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.sports_soccer),
              color: Colors.brown,
            ),
            ...['Hello', 'Hi', 'Hey', 'Greetings']
                .map((e) => Chip(label: Text(e)))
                .toList()
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

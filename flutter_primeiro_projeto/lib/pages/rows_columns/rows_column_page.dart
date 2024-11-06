import 'package:flutter/material.dart';

class RowsColumnPage extends StatelessWidget {
  const RowsColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows & Columns Page'),
      ),
      body: Container(
        width: 414,
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.blueAccent,
              child: const Text('Rows & Columns0')),
            const Text('Rows & Columns1'),
            const Text('Rows & Columns2'),
            Container(
              height: 300,
              color: Colors.greenAccent,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Row1'),
                  Text('Row2'),
                  Text('Row3'),
              ],),
            ),
          ],
        ),
      ),
    );
  }
}

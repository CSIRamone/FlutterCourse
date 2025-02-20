import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {

  const StackPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Stack'),),
           body: Stack(
            alignment: Alignment.topLeft,
            children: [
              Container(
                color: Colors.green,
              ),
            Container(
              color: Colors.amber,
              height: 200,
              width: 200,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                color: Colors.blue,
                width: 300,
                height: 300,
               ),
            ),
            Positioned(
              right: 100,
              bottom: 40,
              child: Container(
                color: Colors.purple,
                width: 150,
                height: 150,
              ),
            ),
            ]
           ),
       );
  }
}
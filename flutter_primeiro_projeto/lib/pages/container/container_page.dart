import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {

  const ContainerPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Container Page'),),
           body: Center(
             child: Container(
                     //color: Colors.red,
                     width: 200,
                     height: 200,
                     margin: const EdgeInsets.all(10),
                     padding: const EdgeInsets.all(10),
                     decoration: const BoxDecoration(
                       color: Colors.red,
                       borderRadius: BorderRadius.all(Radius.circular(40)),
                       boxShadow: [
              BoxShadow(
                  color: Colors.blueAccent,
                  blurRadius: 20,
                  offset: Offset(10, 10)),
              BoxShadow(
                  color: Colors.lightGreenAccent,
                  blurRadius: 20,
                  offset: Offset(-10, -10)),
                       ],
                     ),
                   ),
           ),
       );
  }
}
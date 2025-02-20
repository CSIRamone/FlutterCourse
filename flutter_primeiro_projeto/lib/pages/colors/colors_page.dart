import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {

  const ColorsPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
    
    //const cor = Colors.red;
    //final cor = Colors.red.withOpacity(0.5);
    //const  cor = Color.fromRGBO(0,0,255,1);
    const cor = Color(0xFFBFC20F);

       return Scaffold(
           appBar: AppBar(title: const Text('Colors'),),
           body: Center(
             child: Container(
              width: 400,
              height: 400,
              color: cor,
             ),
           ),
       );
  }
}
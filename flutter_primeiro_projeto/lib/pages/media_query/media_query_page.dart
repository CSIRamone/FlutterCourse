import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {

  const MediaQueryPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    print('Largura  ${mediaQuery.size.width}');
    print('Altura  ${mediaQuery.size.height}');
    print('Orientacao ${mediaQuery.orientation}');
    print('Padding Top ${mediaQuery.padding.top}');
    print('Tamanho AppBar default $kToolbarHeight');
    
    final statusBar = mediaQuery.padding.top;
    final heightBody = mediaQuery.size.height - statusBar - kToolbarHeight;

       return Scaffold(
           appBar: AppBar(title: const Text('Media Query'),),
           body: Center(
            child: Column(
              children: [
                Container(
                  color: Colors.lightGreen,
                  width: mediaQuery.size.width,
                  height: heightBody * .5,
                ),
                 Container(
                  color: Colors.lightBlueAccent,
                  width: mediaQuery.size.width,
                  height: heightBody * .5,
                ),
              ],
            )),
       );
  }
}
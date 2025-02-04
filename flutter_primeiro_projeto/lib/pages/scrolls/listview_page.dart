import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {

  const ListviewPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('List View'),),
           body: ListView.separated(
            itemCount: 10000,
            separatorBuilder: (context, index) {
              return const Divider(
                color: Colors.red,
                );
            },
              //return SizedBox(
              //  height: 300,
              //  child: Text('O item $index'),
             //   );
             itemBuilder: (context, index) {
             return ListTile(
              title: Text('Indice $index'),
              subtitle: const Text('Flutter é Top'),
              leading: const CircleAvatar(
                backgroundImage: NetworkImage('https://coodesh.com/blog/wp-content/uploads/2021/10/mobile-flutter-1-scaled.jpg'),
              ),
             );

            }),
           );
  }
}
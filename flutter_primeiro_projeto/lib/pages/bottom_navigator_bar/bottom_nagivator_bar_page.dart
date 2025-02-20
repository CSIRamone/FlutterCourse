import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/bottom_navigator_bar/page1.dart';
import 'package:flutter_primeiro_projeto/pages/bottom_navigator_bar/page2.dart';

class BottomNagivatorBarPage extends StatefulWidget {

  const BottomNagivatorBarPage({ Key? key }) : super(key: key);

  @override
  State<BottomNagivatorBarPage> createState() => _BottomNagivatorBarPageState();
}

class _BottomNagivatorBarPageState extends State<BottomNagivatorBarPage> {

  int indice = 0;

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Bottom Navigator Bar'),),
           bottomNavigationBar: BottomNavigationBar(
            currentIndex: indice,
            onTap: (index) {
              setState(() {
                indice = index;
              });
              print(index);
            },
            items: const [
              BottomNavigationBarItem(
                label: 'Pagina 1',
                icon:  Icon(Icons.account_tree_sharp),
                ),
              BottomNavigationBarItem(
                label: 'Pagina 2',
                icon:  Icon(Icons.add_a_photo_sharp),
                ),
            ],),
           body: IndexedStack(
            index: indice,
            children: const [
              Page1(),
              Page2(),
            ],
           ),
       );
  }
}
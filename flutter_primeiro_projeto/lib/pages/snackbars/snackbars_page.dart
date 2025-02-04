import 'package:flutter/material.dart';

class SnackbarsPage extends StatelessWidget {

  const SnackbarsPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('SnackBar'),),
           body: Center(
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                ElevatedButton(onPressed: () {
                  const snackbar = SnackBar(
                    content: Text('Usuário salvo com sucesso'),
                    backgroundColor: Colors.purpleAccent,
                    );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                }, child: const Text('Simple SnackBar')),
                ElevatedButton(onPressed: () {
                  final snackbar = SnackBar(
                    content: const Text(
                      'Usuário salvo com sucesso', 
                      style: TextStyle(
                      color: Colors.red,
                      ),
                      ),
                    backgroundColor: Colors.amberAccent, 
                    action: SnackBarAction(label: 'Desfazer', onPressed: () {
                      print('clicado');
                    },
                    ),
                    );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                }, 
                child: const Text('Action SnackBar')),
               ],
             ),
           ),
       );
  }
}
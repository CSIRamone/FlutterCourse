import 'package:flutter/material.dart';

class Detalhe2Page extends StatelessWidget {

  const Detalhe2Page({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Detalhe 2'),),
           body: Center(
            child: TextButton(
              onPressed: (){
                Navigator.of(context).pop('Parametro retornado pela pagina detalhepage 2');
              },
              child: const Text('Voltar'),),
           ),
       );
  }
}
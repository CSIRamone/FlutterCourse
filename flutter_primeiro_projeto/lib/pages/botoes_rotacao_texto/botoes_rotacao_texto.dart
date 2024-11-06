import 'package:flutter/material.dart';

class BotoesRotacaoTexto extends StatelessWidget {

  const BotoesRotacaoTexto({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Botões e Rotação de Texto'),),
           body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    RotatedBox(
                      quarterTurns: -1,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        color: Colors.red,
                        child: const Text('Cidinei Inacio'),
                        ),
                      ),
                       const Icon(Icons.accessibility_sharp),
                  ],
                ),
                TextButton(onPressed: (){},   
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blue,
                  padding: const EdgeInsets.all(10),
                  minimumSize: const Size(50, 10),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  )
                ),
                child: const Text('Salvar'),
                ),
                IconButton(
                  onPressed: (){}, 
                  icon: const Icon(Icons.exit_to_app),
                  ),
                  ElevatedButton(
                    onPressed: (){}, 
                    child: Text('OK'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.red,
                      shadowColor: Colors.blue,
                      minimumSize: const Size(120,50),
                      shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))
                  )
                    ), 
                    ),
                    const SizedBox(height: 20,),
                    ElevatedButton.icon(
                      onPressed: (){}, 
                      icon: const Icon(Icons.exit_to_app), 
                      label: const Text('Sair'),
                      ),

              ],
              ),
           ),
       );
  }
}
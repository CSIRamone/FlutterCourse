import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {

  const MaterialBannerPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Material Banner'),),
           body: Center(
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                ElevatedButton(onPressed: () {
                  final banner = MaterialBanner(
                    forceActionsBelow: true,
                    content: const Text('Usuário salvo com sucesso'),
                    backgroundColor: Colors.purpleAccent,
                    actions: [
                      TextButton(onPressed: () {
                        ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                      }, child: const Text('Cancelar'),)
                    ],
                    );
                  ScaffoldMessenger.of(context).showMaterialBanner(banner);
                }, child: const Text('Simple MaterialBanner')),
               ],
             ),
           ),
       );
  }
}
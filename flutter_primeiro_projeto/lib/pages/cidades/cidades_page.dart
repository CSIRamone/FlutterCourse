import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_primeiro_projeto/pages/cidades/model/cidade.dart';

class CidadesPage extends StatefulWidget {

  const CidadesPage({ Key? key }) : super(key: key);

  @override
  State<CidadesPage> createState() => _CidadesPageState();
}

class _CidadesPageState extends State<CidadesPage> {
  var cidades = <Cidade>[];

  @override
  void initState() {
    _carregaCidades();
  }

  Future<void> _carregaCidades() async {
   final cidadesJson = await rootBundle.loadString('assets/cidades.json');

   setState(() {
     var cidadesList = json.decode(cidadesJson);
     cidades = cidadesList.map<Cidade>((city) => Cidade.fromMap(city)).toList();
   });
  }

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Cidades'),),
           body: ListView.builder(
            itemCount: cidades.length,
            itemBuilder: (context, index) {
              var cidade = cidades[index];
              return ListTile(
               title: Text(cidade.cidade),
               subtitle: Text(cidade.estado), 
               );
            }),
        );
  }
}
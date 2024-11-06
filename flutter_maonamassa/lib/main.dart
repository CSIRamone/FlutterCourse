import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/home_page_navegacao.dart';
import 'package:flutter_maonamassa/navegacao/navegacao_params/lista.dart';
import 'package:flutter_maonamassa/navegacao/page1.dart';
import 'package:flutter_maonamassa/navegacao/page2.dart';
import 'package:flutter_maonamassa/navegacao/page3.dart';
import 'package:flutter_maonamassa/navegacao/page4.dart';

import 'navegacao/navegacao_params/detalhe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CSIRamone',
      debugShowCheckedModeBanner: false,
      //home: HomePageNavegacao(),
      initialRoute: '/navegacao_param',
      routes: {
        '/': (context) => const HomePageNavegacao(),
        '/page1': (_) => const Page1(),
        Page2.routeName: (_) => const Page2(),
        '/page3': (_) => const Page3(),
        '/page4': (_) => const Page4(),
        '/navegacao_param': (_) => const Lista(),
        '/detalhe': (_) => const Detalhe(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_maonamassa_navegacao/pages/detalhe_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('HomePage'),
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('/detalhe', arguments: 'Parametro XXX');
            },
            child: const Text('ir para Detalhe'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                settings: const RouteSettings(
                  name: '/detalhe',
                  //arguments: 'Parametro pelo PageRoute'),
                ),
                builder: (_) => const DetalhePage(
                  parametro: 'Parametro pelo page Route',
                ),
              ));
            },
            child: const Text('ir para Detalhe PageRoute'),
          ),
          TextButton(
            onPressed: () async {
              var message = await Navigator.of(context)
                  .pushNamed('/detalhe2');
                  print('Mensagem Recebida da pagina: $message');
            },
            child: const Text('ir para Detalhe e e aguardar '),
          ),
        ],
      )),
    );
  }
}

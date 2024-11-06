import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/page1.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //removendo da pilha ate a page2
                /*Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    settings: const RouteSettings(
                      name: 'page1',
                    ),
                    builder: (context) => const Page1(),
                  ),
                  ModalRoute.withName('page2'),
                );*/
                //removendo todas a paginas da pilha
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    settings: const RouteSettings(
                      name: 'page1',
                    ),
                    builder: (context) => const Page1(),
                  ),
                  (route) => route.isFirst,
                  //(route) => false, isso vai tirar todas as paginas da pilha deixando apenas a page1
                );
              },
              child: const Text('Page 1 via Page'),
            ),
            const SizedBox(),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Pop'),
            ),
            const SizedBox(),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/page1', ModalRoute.withName('/page2'));
              },
              child: const Text('Page 1 via Named'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                /*Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    settings: const RouteSettings(
                      name: 'page4',
                    ),*/
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: const RouteSettings(
                      name: 'page4',
                    ),
                    builder: (context) => const Page4(),
                  ),
                );
              },
              child: const Text('Page 4 via Page'),
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
              onPressed: () {},
              child: const Text('Page 3 via Named'),
            ),
          ],
        ),
      ),
    );
  }
}

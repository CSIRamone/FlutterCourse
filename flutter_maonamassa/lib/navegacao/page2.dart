import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/page3.dart';

class Page2 extends StatelessWidget {
  static const String routeName = '/page2';
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: const RouteSettings(
                      name: 'page3',
                    ),
                    builder: (context) => const Page3(),
                  ),
                );
              },
              child: const Text('Page 3 via Page'),
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
                Navigator.of(context).pushNamed('/page3');
              },
              child: const Text('Page 3 via Named'),
            ),
          ],
        ),
      ),
    );
  }
}

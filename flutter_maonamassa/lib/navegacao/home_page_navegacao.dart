import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/page2.dart';

class HomePageNavegacao extends StatelessWidget {
  const HomePageNavegacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page Navegacao'),
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
                      name: 'page2',
                    ),
                    builder: (context) => const Page2(),
                  ),
                );
              },
              child: const Text('Page 2 via Page'),
            ),
            const SizedBox(),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Page2.routeName);
              },
              child: const Text('Page 2 via Named'),
            ),
          ],
        ),
      ),
    );
  }
}

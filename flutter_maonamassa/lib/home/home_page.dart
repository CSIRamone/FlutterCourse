import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/container/container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CSI Primeira AppBar',
          style: TextStyle(fontFamily: 'JosefinSans'),
        ),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_a_photo_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.account_tree_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_chart),
          ),
        ],
      ),
      drawer: const Drawer(
        child: Center(child: Text('CSI Drawer aberto...')),
      ),
      endDrawer: const Drawer(
        child: Center(
          child: Text('CSI EndDrawer'),
        ),
      ),
      body: const HomeContainer(),
    );
  }
}

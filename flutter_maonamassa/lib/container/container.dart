import 'package:flutter/material.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({super.key});

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //color: Colors.red,
        width: 200,
        height: 200,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(40)),
          boxShadow: [
            BoxShadow(
                color: Colors.blueAccent,
                blurRadius: 20,
                offset: Offset(10, 10)),
            BoxShadow(
                color: Colors.lightGreenAccent,
                blurRadius: 20,
                offset: Offset(-10, -10)),
          ],
        ),
      ),
    );
  }
}

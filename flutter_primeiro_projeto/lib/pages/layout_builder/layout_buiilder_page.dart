import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Layout Builder'),
        ),
        body: Center(
          child: LayoutBuilder(builder: (context, constraints) {
            return Column(
              children: [
                Container(
                  color: Colors.lightGreen,
                  width: constraints.maxWidth * .50,
                  height: constraints.maxHeight * .5,
                ),
                Container(
                  color: Colors.lightBlueAccent,
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * .5,
                ),
              ],
            );
          }),
        ));
  }
}

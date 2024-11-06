import 'package:flutter/material.dart';

class ImagesPage extends StatefulWidget {
  const ImagesPage({super.key});

  @override
  State<ImagesPage> createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).devicePixelRatio);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Imagens',
          style: TextStyle(
            fontFamily: 'JosefinSans',
            fontSize: 40,
          ),
        ),
        backgroundColor: Colors.amber[700],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/phone.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Center(
                child: Text(
                  'Phone image',
                  style: TextStyle(
                    backgroundColor: Color.fromARGB(255, 127, 145, 128),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              width: 400,
              height: 400,
              color: Colors.red,
              child: Image.network(
                'https://cdn.dribbble.com/users/4009983/screenshots/16047199/media/5ebee3eea85f65f654414699c4a75f00.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const Text(
              'Aulas de Flutter',
              style: TextStyle(
                fontFamily: 'JosefinSans',
                fontSize: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

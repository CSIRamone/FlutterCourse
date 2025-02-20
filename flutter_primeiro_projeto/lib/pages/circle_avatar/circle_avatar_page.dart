import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {

  const CircleAvatarPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Circle Avatar'),),
           body: const Row(
             children: [
              // Padding(
                // padding:  EdgeInsets.all(20.0),
                // child: SizedBox(
                 // width: 100,
                //  height: 100,
                //  child: CircleAvatar(
                    //backgroundImage: NetworkImage('https://www.psicologosberrini.com.br/wp-content/uploads/pessoas-importantes-b.jpg'),
              //     ),
                // ),
              // ),
              ImageAvatar(urlImage: 'https://www.psicologosberrini.com.br/wp-content/uploads/pessoas-importantes-b.jpg'),
              ImageAvatar(urlImage: 'https://www.psicologosberrini.com.br/wp-content/uploads/pessoas-importantes-b.jpg'),
             ],
           ),
       );
  }
}


class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({Key? key, required this.urlImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors:[Colors.amberAccent, Colors.redAccent, Colors.black54],
                begin: Alignment.topCenter,
                ),
              borderRadius: BorderRadius.circular(100),
              color: Colors.amberAccent,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(urlImage),
            ),
          ),
        ),
        //const Icon(Icons.star_border_purple500),
         Padding(
           padding: const EdgeInsets.all(20.0),
           child: Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            width: 100,
            height: 105,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(8),
                ),
                
                child: const Text(
                  'AO VIVO', 
                  style: TextStyle(
                  fontSize: 9,
                  ),
                ),
              ),            
            ), 
              
                   ),
         )
      ],
    );
  }
}
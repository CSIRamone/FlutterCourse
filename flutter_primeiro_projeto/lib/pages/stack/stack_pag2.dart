import 'package:flutter/material.dart';

class StackPag2 extends StatelessWidget {

  const StackPag2({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Stack Power'),),
           body: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://forbes.com.br/wp-content/uploads/2022/07/5_O-que-fazer-em-Nova-York.jpg'), 
                    fit: BoxFit.cover,
                    ),
                ),
              ),
              Container(
                color: Colors.white24,
              ),
               Positioned(
                left: 25,
                right: 25,
                bottom: 68,
                 child:  Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 20,
                  child: const Column(
                    children:[
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text(
                        'New York',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                    ),
                      Padding(
                        padding:EdgeInsets.all(16.0),
                        child: Text(
                                'A cidade de Nova York ganhou importância como porto comercial durante o período do Império Britânico. Em 1754, foi fundada a primeira casa de altos estudos da cidade, a Universidade de Columbia. Durante a Guerra da Independência dos Estados Unidos, a cidade emergiu como cenário de importantes batalhas.',
                                style: TextStyle(
                                   leadingDistribution: TextLeadingDistribution.proportional,
                                ),
                               ),
                      ),
                 
                    
                    ]
                  ),
                               ),
               )
            ],
           ),
       );
  }
}
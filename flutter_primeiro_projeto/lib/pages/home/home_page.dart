import 'package:flutter/material.dart';

  enum PopupMenuPages {
    container,
    rowscolumns,
    mediaquery,
    layoutbuilder,
    botoesrotacao,

  }

class HomePage extends StatelessWidget {

  const HomePage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(
            backgroundColor: Colors.black38,
            title: const Text('Home Page'),
            actions: [
              PopupMenuButton<PopupMenuPages>(
                //tooltip: 'Container Page',
                icon: const Icon(Icons.animation),
                onSelected: (PopupMenuPages valueSelected){
                  switch(valueSelected){
                    case PopupMenuPages.container:
                      Navigator.of(context).pushNamed('/container');
                    break;
                    case PopupMenuPages.rowscolumns:
                      Navigator.of(context).pushNamed('/rows_columns');
                    break;
                    case PopupMenuPages.mediaquery:
                      Navigator.of(context).pushNamed('/media_query');
                    break;
                    case PopupMenuPages.layoutbuilder:
                      Navigator.of(context).pushNamed('/layout_builder');
                    break;
                    case PopupMenuPages.botoesrotacao:
                      Navigator.of(context).pushNamed('/botoes_rotacao');
                    break;
                  }
                },
                itemBuilder: (BuildContext context){
                return <PopupMenuItem<PopupMenuPages>>[
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.container,
                    child: Text('Container'),
                    ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.rowscolumns,
                    child: Text('Rows & Columns'),
                    ),
                    const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.mediaquery,
                    child: Text('MediaQuery'),
                    ),
                    const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.layoutbuilder,
                    child: Text('LayoutBuilder'),
                    ),
                    const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.botoesrotacao,
                    child: Text('Botoes Rotacao'),
                    ),
                ];
              })
            ],),
           body: Container(),
       );
  }
}
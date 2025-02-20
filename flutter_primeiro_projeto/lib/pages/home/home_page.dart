import 'package:flutter/material.dart';

  enum PopupMenuPages {
    container,
    rowscolumns,
    mediaquery,
    layoutbuilder,
    botoesrotacao,
    scrollssinglechild,
    listview,
    dialogs,
    snackbars,
    forms,
    cidades,
    stacks,
    stackpower,
    bottomnavigatorbar,
    circleavatar,
    colors,
    materialBanner,

  }

class HomePage extends StatelessWidget {

  const HomePage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(
            //backgroundColor: Colors.black38,

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
                    case PopupMenuPages.scrollssinglechild:
                      Navigator.of(context).pushNamed('/scrolls/single_child');
                    break;
                    case PopupMenuPages.listview:
                      Navigator.of(context).pushNamed('/scrolls/list_view');
                    break;
                    case PopupMenuPages.dialogs:
                      Navigator.of(context).pushNamed('/dialogs/dialogs_page');
                    break;
                    case PopupMenuPages.snackbars:
                      Navigator.of(context).pushNamed('/snackbars');
                    break;
                    case PopupMenuPages.forms:
                      Navigator.of(context).pushNamed('/forms');
                    break;
                    case PopupMenuPages.cidades:
                      Navigator.of(context).pushNamed('/cidades');
                    break;
                    case PopupMenuPages.stacks:
                      Navigator.of(context).pushNamed('/stacks');
                    break;
                    case PopupMenuPages.stackpower:
                      Navigator.of(context).pushNamed('/stackpower');
                    break;
                    case PopupMenuPages.bottomnavigatorbar:
                      Navigator.of(context).pushNamed('/bottomnavigatorbar');
                    break;
                    case PopupMenuPages.circleavatar:
                      Navigator.of(context).pushNamed('/circleavatar');
                    break;
                    case PopupMenuPages.colors:
                      Navigator.of(context).pushNamed('/colors');
                    break;
                    case PopupMenuPages.materialBanner:
                      Navigator.of(context).pushNamed('/materialBanner');
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
                    const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.scrollssinglechild,
                    child: Text('Scroll SingleChild'),
                    ),
                    const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.listview,
                    child: Text('Scroll List View'),
                    ),
                    const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.dialogs,
                    child: Text('Dialogs'),
                    ),
                    const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.snackbars,
                    child: Text('SnackBars'),
                    ),
                    const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.forms,
                    child: Text('Forms'),
                    ),
                    const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.cidades,
                    child: Text('Cidades'),
                    ),
                    const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.stacks,
                    child: Text('Stacks'),
                    ),
                    const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.stackpower,
                    child: Text('Stack Power'),
                    ),
                    const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.bottomnavigatorbar,
                    child: Text('Bottom Navigator Bar'),
                    ),
                    const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.circleavatar,
                    child: Text('Circle Avatar'),
                    ),
                    const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.colors,
                    child: Text('Colors'),
                    ),
                    const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.materialBanner,
                    child: Text('Material Banner'),
                    ),
                ];
              })
            ],),
           body: //Theme(
            //data: Theme.of(context).copyWith(
             // primaryColor: Colors.grey,
            //), 
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Botao x'),
                    ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Theme.of(context).primaryColorDark,
                  ),
                ],
              ),
                ),
       );
  }
}

/*class ContainerX extends StatelessWidget {

  const ContainerX({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           body: Container(
        height: 100,
        width: 100,
        color: Theme.of(context).primaryColorDark,
      ),
       );
  }
}*/

import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/bottom_navigator_bar/bottom_nagivator_bar_page.dart';
import 'package:flutter_primeiro_projeto/pages/cidades/cidades_page.dart';
import 'package:flutter_primeiro_projeto/pages/circle_avatar/circle_avatar_page.dart';
import 'package:flutter_primeiro_projeto/pages/colors/colors_page.dart';

import 'package:flutter_primeiro_projeto/pages/container/container_page.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialogs_page.dart';
import 'package:flutter_primeiro_projeto/pages/forms/forms_page.dart';
import 'package:flutter_primeiro_projeto/pages/home/home_page.dart';
import 'package:flutter_primeiro_projeto/pages/layout_builder/layout_buiilder_page.dart';
import 'package:flutter_primeiro_projeto/pages/material_banner/material_banner_page.dart';
import 'package:flutter_primeiro_projeto/pages/media_query/media_query_page.dart';
import 'package:flutter_primeiro_projeto/pages/rows_columns/rows_column_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_primeiro_projeto/pages/scrolls/listview_page.dart';
import 'package:flutter_primeiro_projeto/pages/scrolls/singlechildscrollview_page.dart';
import 'package:flutter_primeiro_projeto/pages/snackbars/snackbars_page.dart';
import 'package:flutter_primeiro_projeto/pages/stack/stack_pag2.dart';
import 'package:flutter_primeiro_projeto/pages/stack/stack_page.dart';

import 'pages/botoes_rotacao_texto/botoes_rotacao_texto.dart';

void main() {
  runApp(DevicePreview(
    enabled: false,
    isToolbarVisible: true,
    builder: (context) => const MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    
      routes: {
        '/': (_) => const HomePage(),
        '/container': (_) => const ContainerPage(),
        '/rows_columns': (_) => const RowsColumnPage(),
        '/media_query': (_) => const MediaQueryPage(),
        '/layout_builder': (_) => const LayoutBuilderPage(),
        '/botoes_rotacao': (_) =>  const BotoesRotacaoTexto(),
        '/scrolls/single_child' : (_) => const SinglechildscrollviewPage(),
        '/scrolls/list_view' : (_) => const ListviewPage(),
        '/dialogs/dialogs_page' : (_) => const DialogsPage(),
        '/snackbars' : (_) => const SnackbarsPage(),
        '/forms': (_) => const FormsPage(),
        '/cidades': (_) => const CidadesPage(),
        '/stacks': (_) => const StackPage(),
        '/stackpower' : (_) => const StackPag2(),
        '/bottomnavigatorbar' : (_) => const BottomNagivatorBarPage(),
        '/circleavatar': (_) => const CircleAvatarPage(),
        '/colors': (_) => const ColorsPage(),
        '/materialBanner' : (_) => const MaterialBannerPage(),
      },

    );
  }
}

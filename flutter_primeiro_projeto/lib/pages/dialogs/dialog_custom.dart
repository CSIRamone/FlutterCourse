
import 'package:flutter/material.dart';

class DialogCustom extends Dialog{
   DialogCustom({Key? key, BuildContext? context}) : super(
    key: key, shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12)
    ),
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('DialogCunstomX'),
            ),  
          TextButton(
            onPressed: () => Navigator.of(context!).pop(), 
            child: const Text('Fechar DialogCustom'))
        ]),
      ),
   );
  
}

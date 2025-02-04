import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {

  const DialogsPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Dialogs'),),
           body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context, 
                    builder: (_){
                    return DialogCustom(context: context);
                  });
                }, child: const Text('dialog')),
                ElevatedButton(onPressed: () {
                  showDialog(context: context, builder: (context){
                    return  SimpleDialog(
                      contentPadding: const EdgeInsets.all(10),
                      title: const Text('Simple Dialog'),
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('DialogSimpleX'),
                    ),  
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(), 
                      child: const Text('Fechar DialogSimple'))
                      ],
                    );
                  });
                }, child: const Text('Simple dialog')),
                ElevatedButton(onPressed: () {
                  showDialog(context: context, builder: (context) {
                    if (Platform.isIOS) {
                      return  CupertinoAlertDialog(
                      title: const Text('Alest Dialog'),
                      content: const SingleChildScrollView(
                        child: ListBody(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text('Dialog Alert'),
                              ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(onPressed: () {}, child: const Text('Cancelar')),
                        TextButton(onPressed: () {}, child: const Text('Confirmar')),
                      ],
                        
                    );    
                    }
                    else{
                    return  AlertDialog(
                      title: const Text('Alest Dialog'),
                      content: const SingleChildScrollView(
                        child: ListBody(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text('Dialog Alert'),
                              ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(onPressed: () {}, child: const Text('Cancelar')),
                        TextButton(onPressed: () {}, child: const Text('Confirmar')),
                      ],
                        
                    );
                    }
                  });
                }, child: const Text('Alert dialog')),
                ElevatedButton(onPressed: () async {
                  if (Platform.isIOS) {
                    showModalBottomSheet(
                      context: context, 
                      builder: (context) {
                       return CupertinoTimerPicker(onTimerDurationChanged: (value) {},);
                      },);
                  }else {
                    final selectedTime = await showTimePicker(
                    context: context, 
                    initialTime: TimeOfDay.now(),
                    );
                    // ignore: avoid_print
                    print('o horario selecionado foi $selectedTime');
                  }
                  
                }, child: const Text('Time Picker')),
                ElevatedButton(
                  onPressed: () async {
                  final selectedDate = await showDatePicker(
                    context: context, 
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000), 
                    lastDate: DateTime.now(),
                    );
                    // ignore: avoid_print
                    print('a data selecionada foi $selectedDate');                
                  }, child: const Text('Date Picker'),
                  ),
                  ElevatedButton(
                    onPressed: () async  {
                      showAboutDialog(context: context, applicationIcon: const Icon(Icons.flutter_dash));
                    }, 
                    child: const Text('About Dialog'))
              ],
            ) 
            ),
       );
  }
}
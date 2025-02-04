import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {

  const FormsPage({ Key? key }) : super(key: key);

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();

  @override
  void dispose(){
    nameEC.dispose();
    super.dispose();
  }
   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Forms'),),
           body:  SingleChildScrollView(
             child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: nameEC,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      maxLines: null,
                      decoration:  InputDecoration(
                        labelText: 'Nome Completo',
                        border: OutlineInputBorder(
                          borderRadius:  BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.purple),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius:  BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.purple),
                      ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:  BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.purple),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius:  BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                      ),
                      validator: (String? value) {
                        if((value == null) || (value.isEmpty)) {
                          return 'Campo x nao preenchido';
                        }else{
                          return null;
                        }
                      },
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (String? value) {
                        if((value == null) || (value.isEmpty)) {
                          return 'Campo x nao preenchido';
                        }else{
                          return null;
                        }
                      },
                    ),
             
                    ElevatedButton(onPressed: () {
                      var formValid = formKey.currentState?.validate() ?? false;
                      var message = 'Formulario Invalido';
                      if (formValid){
                        message = 'Formulario Valido (Name: ${nameEC.text})';
                      }
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(message)));
                      
             
                    }, child: const Text('Salvar'))
             
                  ],),
                ),
                ),
           ),
       );
  }
}
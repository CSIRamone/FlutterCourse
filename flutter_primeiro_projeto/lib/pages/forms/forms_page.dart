import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {

  const FormsPage({ Key? key }) : super(key: key);

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final TextEditingController nameEC2 = TextEditingController();
  String categoria = 'Categoria 1';

  @override
  void dispose(){
    nameEC.dispose();
    nameEC2.dispose();
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
                        labelStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.purpleAccent,
                        ),
                        isDense: true,
                      ),
                      validator: (String? value) {
                        if((value == null) || (value.isEmpty)) {
                          return 'Campo x nao preenchido';
                        }else{
                          return null;
                        }
                      },
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      controller: nameEC2,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration:  InputDecoration(
                        labelText: 'Senha',
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
                        labelStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.purpleAccent,
                        ),
                        isDense: true,
                      ),
                      obscureText: true,
                      validator: (String? value) {
                        if((value == null) || (value.isEmpty)) {
                          return 'Campo x nao preenchido';
                        }else{
                          return null;
                        }
                      },
                    ),
                  const SizedBox(height: 20),
                    DropdownButtonFormField(
                      value: categoria,
                      elevation: 16,
                      icon: const Icon(Icons.arrow_back_ios),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                      ),
                      validator: (String? value){
                        if(value == null || value.isEmpty){
                          return 'Categoria nao preenchida';
                        }else{
                          return null;
                        }  
                      },
                      onChanged: (String? newValue){
                        if(newValue != null){
                          setState(() {
                            categoria = newValue;
                          }); 
                        }
                      },
                      items:  const[
                        DropdownMenuItem(
                          value: 'Categoria 1',
                          child: Text('Categoria 1'),
                        ),
                        DropdownMenuItem(
                          value: 'Categoria 2',
                          child: Text('Categoria 2'),
                          ),
                        DropdownMenuItem(
                          value: 'Categoria 3',
                          child: Text('Categoria 3'),
                          ),  
                      ], 
                      
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
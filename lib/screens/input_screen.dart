import 'package:flutter/material.dart';
import 'package:flutter_componentes/widgets/widget.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey =GlobalKey<FormState>();

    final Map<String, String> formValues ={
      'first_name': 'luis',
      'last_name': 'osio',
      'email': 'osioluis@gmail.com',
      'password': "1234567",
      'role': 'admin',

    };


    return Scaffold(
      appBar: AppBar(
        title:const Text('inputs y form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children:[
          
                CustomInputField(labelText: 'nombre', hintText: 'nombre del usuario', formProperty: 'first_name', formValues: formValues,),
                const SizedBox(height: 30,),
          
                CustomInputField(labelText: 'apellido', hintText: 'apellido del usuario', formProperty: 'last_name', formValues: formValues,),
                const SizedBox(height: 30,),
          
                CustomInputField(labelText: 'correo', hintText: 'correo del usuario', keyBoardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 30,),
          
                CustomInputField(labelText: 'Contrasena', hintText: 'contrasena del usuario',obscureText: true, formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 30,),

                DropdownButtonFormField<String>(
                  value: 'admin',
                  items: const[
                    DropdownMenuItem(value: 'admin', child: Text('admin'),),
                    DropdownMenuItem(value: 'superuser', child: Text('superuser'),),
                    DropdownMenuItem(value: 'developer', child: Text('develoer'),),
                    DropdownMenuItem(value: 'jr Developer', child: Text('jr Developer'),)
                  ],
                  onChanged: (value){
                    print(value);
                    formValues['role'] = value ?? 'admin';
                  }, 
                  ),
          
          
              ElevatedButton(
                
                child: const SizedBox(
                  
                  width: double.infinity,
                  child: Text('Guardar',textAlign: TextAlign.center,)),
                onPressed: (){

                  FocusScope.of(context).requestFocus(FocusNode());

                  if (!myFormKey.currentState!.validate() ) {
                    print('Formulario no valido');
                    return;
                  }

                  print(formValues);
                },)
          
          
          
              ],
            ),
          ),
          ),
        
        )
    );
  }
}


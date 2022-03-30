import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context){

    showCupertinoDialog(
      context: context, 
      builder: (context){

        return CupertinoAlertDialog(
          title:const Text('titulo'),
            content: Column(
             mainAxisSize: MainAxisSize.min,
              children:const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child:const Text('cancelar'))
          ],

        );
      }
      
      );

  }


  void displayDialogAndroid(BuildContext context){

    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return  AlertDialog(
          elevation: 5,
          shape:RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          title:const Text('titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children:const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100,)
            ],
          ),

          actions: [
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child:const Text('cancelar'))
          ],
        );
      }
      
      );

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
         child: ElevatedButton(
           child:const Padding(
             padding: EdgeInsets.all(10),
             child: Text('Mostrar Alerta',style: TextStyle(fontSize: 15),),
           ),
           onPressed:() => Platform.isAndroid
                  ? displayDialogAndroid(context)
                  :displayDialogIOS(context)
         ),
      ),
      floatingActionButton: FloatingActionButton(
        
        child:const Icon(Icons.close),
        onPressed: (){
          Navigator.pop(context); //bota la ultima pantalla cuando das clip
        }),
    );
  }
}
import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Color.fromARGB(255, 245, 142, 8);

  static late final ThemeData  lightheme = ThemeData.light().copyWith(
        //color Primario
        primaryColor:const  Color.fromARGB(255, 245, 142, 8),

        //appbar theme
        appBarTheme:const AppBarTheme(
          color: primary,
          elevation: 0,
          
          
        ),
        //Thebutton theme
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary:  primary)
          ),

        //floatingActionButton

        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary

        ),

        //ElevateButton

        elevatedButtonTheme:  ElevatedButtonThemeData(
          style:ElevatedButton.styleFrom(
            primary: Colors.red,
            shape: const StadiumBorder(),
            elevation: 0

          ),
        ),


        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary,),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10)),
        ),
        focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10))
        ),

        border: OutlineInputBorder(
              
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10))
        ),
        
  ),
        
    );
      


}
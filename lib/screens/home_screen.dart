// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:flutter_componentes/router/app_routes.dart';
import 'package:flutter_componentes/theme/app_theme.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text("Hola mundo"),
        
      ),
      body: ListView.separated(
        itemBuilder: (context, index) =>  ListTile(
          leading: Icon(menuOptions[index].icon, color: AppTheme.primary,),
          title: Text(menuOptions[index].name),
          onTap: () {
            
            //final route = MaterialPageRoute(builder: (context) =>const Listview1Screen());
            //Navigator.push(context, route);

            Navigator.pushNamed(context, menuOptions[index].route);

          },
        ),
        separatorBuilder: (_, __) =>const Divider() ,
        itemCount: menuOptions.length)
      );
    
  }
}
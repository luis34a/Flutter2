import 'package:flutter/material.dart';
import 'package:flutter_componentes/router/app_routes.dart';
import 'package:flutter_componentes/screens/screens.dart';
import 'package:flutter_componentes/theme/app_theme.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initiaRoute,
      routes: AppRoutes.getAppRoutes(),

      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) =>const Listview1Screen());
      },

      theme:AppTheme.lightheme

    );
  }
}
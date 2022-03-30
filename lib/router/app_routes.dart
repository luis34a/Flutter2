

import 'package:flutter/material.dart';
import 'package:flutter_componentes/models/models.dart';
import '../screens/screens.dart';

class AppRoutes{

  static const initiaRoute = 'home';

  static final menuOptions = <MenuOption>[
    //MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(),icon: Icons.home_filled),
    MenuOption(route: 'listview1', name: 'listview tipo 1', screen: const Listview1Screen(),icon: Icons.list_alt),
    MenuOption(route: 'listview2', name: 'listview tipo 2', screen: const Listview2Screen(),icon: Icons.list),
    MenuOption(route: 'alert', name: 'Alertas', screen: const AlertScreen(),icon: Icons.battery_alert_rounded),
    MenuOption(route: 'card', name: 'tarjetas', screen: const CardScreen(),icon: Icons.card_giftcard),
    MenuOption(route: 'avatar', name: 'circle avatar', screen: const AvatarScreen(),icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', name: 'animated container', screen: const AnimatedScreen(),icon: Icons.play_circle_fill_outlined),
    MenuOption(route: 'input', name: 'Text Inputs', screen: const InputScreen(),icon: Icons.input_rounded),
    MenuOption(route: 'slider', name: 'Slider', screen: const SliderScreen(),icon: Icons.sledding_outlined)
  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home' : (BuildContext context) =>const HomeScreen()});

    for (final option in menuOptions) {

      appRoutes.addAll({option.route : (BuildContext context) => option.screen});
      
    }


    return appRoutes;
  }




  //static Map<String, Widget Function(BuildContext)> routes = {
    //'home':(BuildContext context ) =>const HomeScreen(),
    //'listview1':(BuildContext context ) =>const Listview1Screen(),
    //'listview2':(BuildContext context ) =>const Listview2Screen(),
    //'alert':(BuildContext context ) =>const AlertScreen(),
    //'card':(BuildContext context ) =>const CardScreen(),
  //};

  


}
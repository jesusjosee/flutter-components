import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // el HomeScreen no debe aparecer en el menu principal sino se genera un bucle infinito
    // MenuOption(
    //     route: 'home',
    //     name: 'Home Screen',
    //     screen: const HomeScreen(),
    //     icon: Icons.home_outlined),
    MenuOption(
        route: 'listview1',
        name: 'ListView1 tipo 1',
        screen: const Listview1Screen(),
        icon: Icons.list_alt_rounded),
    MenuOption(
        route: 'listview2',
        name: 'ListView2 tipo 2',
        screen: const Listview2Screen(),
        icon: Icons.list_sharp),
    MenuOption(
        route: 'alert',
        name: 'Alertas - Alerts',
        screen: const AlertScreen(),
        icon: Icons.add_alert_sharp),
    MenuOption(
        route: 'card',
        name: 'Tarjetas - Cards',
        screen: const CardScreen(),
        icon: Icons.credit_card_outlined),
    MenuOption(
        route: 'avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_rounded),
    MenuOption(
        route: 'animated',
        name: 'Animated container',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_fill_outlined),
    MenuOption(
        route: 'inputs',
        name: 'Text Inputs',
        screen: const InputsScreen(),
        icon: Icons.input_rounded),
    MenuOption(
        route: 'slider',
        name: 'Slider && Checks',
        screen: const SliderScreen(),
        icon: Icons.video_collection_outlined),
    MenuOption(
        route: 'listviewbuilder',
        name: 'Infinity Scroll & Pull to refresh',
        screen: const ListViewBuilderScreen(),
        icon: Icons.lightbulb_sharp),
  ];

  //Esto es lo mismo que hace la propiedad route de esta misma clase pero con ciclo for
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    final Map<String, Widget Function(BuildContext)> appRoutes = {};

    // Añadir la ruta aqui para que no aparezca en el menu principal sino se hace un bucle infinito
    appRoutes.addAll({'home': (context) => const HomeScreen()});

    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (context) => option.screen});
    }

    return appRoutes;
  }

  //Este forma funciona para la maypria de proyectos pero se hara se una forma similar con el metodo getAppRoutes()
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (context) => const HomeScreen(),
    'listview1': (context) => const Listview1Screen(),
    'listview2': (context) => const Listview2Screen(),
    'alert': (context) => const AlertScreen(),
    'card': (context) => const CardScreen(),
  };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}

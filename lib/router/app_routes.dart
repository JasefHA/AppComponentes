
import 'package:flutter/material.dart';
import 'package:componentes_app/models/models.dart';
import 'package:componentes_app/screens/screen.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //todo borrar home
    // MenuOption(
    //     route: 'home',
    //     name: 'Home Screen',
    //     screen: const HomeScreen(),
    //     icon: Icons.home
    //     ),
    MenuOption(
        route: 'listview1',
        name: 'List View tipo1',
        screen: const ListView1Screen(),
        icon: Icons.list_rounded
        ),
    MenuOption(
        route: 'listview2',
        name: 'List View tipo2',
        screen: const ListView2Screen(),
        icon: Icons.list
        ),
    MenuOption(
        route: 'alert',
        name: 'Alerta',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined
        ),
    MenuOption(
        route: 'card',
        name: 'Card',
        screen: const CardScreen(),
        icon: Icons.card_travel_rounded
        ),
    MenuOption(
        route: 'avatar',
        name: 'Circle - Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined
        ),
    MenuOption(
        route: 'animated',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.rectangle_rounded
        ),
    MenuOption(
        route: 'inputs',
        name: 'Text Inputs',
        screen: const InputsScreen(),
        icon: Icons.input
        ),
    MenuOption(
        route: 'slider',
        name: 'Slider and Checks',
        screen: const SliderScreen(),
        icon: Icons.slideshow_rounded
        ),
    MenuOption(
        route: 'listviewBuilder',
        name: 'Infinite scroll and pull to refresh',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_circle_sharp
        ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});


    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  /*
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };
  */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen(),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:componentes_app/router/app_routes.dart';
import 'package:componentes_app/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        //elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
                leading: Icon(menuOptions[i].icon, color: AppTheme.primary,),
                title: Text(menuOptions[i].name),
                onTap: () {
                  //navegacion a otra pantalla 1
                  //final route = MaterialPageRoute(
                  //    builder: (context) => const ListView1Screen()
                  //);

                  Navigator.pushNamed(context, menuOptions[i].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length),
    );
  }
}

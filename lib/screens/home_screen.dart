// import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text(AppRoutes.menuOptions[index].name),
            leading: Icon(AppRoutes.menuOptions[index].icon, color: AppTheme.primary),
            onTap: () {
              // Forma 1° de navegar
              // final route = MaterialPageRoute(builder: (context) => const Listview1Screen(),);
              // Navigator.push(context, route);

              // Segunda Forma de navegar
              // Navigator.pushNamed(context, 'listview2');
              Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRoutes.menuOptions.length,
        ));
  }
}

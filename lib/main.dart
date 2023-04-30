import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      // initialRoute: 'home',
      // Cuando se agrega rutas ya no va la propiedad home debido a que en cada ruta se añade un scafold
      // home: const Listview2Screen(), 
      // routes: AppRoutes.routes,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme
    );
  }
}

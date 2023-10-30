import 'package:flutter/material.dart';
import 'package:examen_1/screen/screen.dart';

class AppRoutes {
  static const initialRoute = 'login';
  static Map<String, Widget Function(BuildContext)> routes = {
    'home' :(BuildContext context) => const HomeScreen(),
    'login' :(BuildContext context) => const LoginScreen(),
    'producto' :(BuildContext context) => const ProductoScreen(),
    'categorias' :(BuildContext context) => const CategoriasScreen(),
    'proveedores' :(BuildContext context) => const ProveedoresScreen(),

    
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(builder:(context) => const ErrorScreen(),);
  }

}
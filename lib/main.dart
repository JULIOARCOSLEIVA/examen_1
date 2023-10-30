import 'package:examen_1/provaider/modulos_provider.dart';
import 'package:flutter/material.dart';
import 'package:examen_1/routes/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const ProviderState());
}
class ProviderState extends StatelessWidget{
  const ProviderState({super.key});

  @override
  Widget build(BuildContext context) {
  return MultiProvider(providers: [
    ChangeNotifierProvider(create: (_)=>ModulosProvaider(),lazy: false,)
  ],
  child: const MyApp(),
  );  
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'modulos',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      onGenerateRoute:  AppRoutes.onGenerateRoute,
    );
  }
}
import 'package:examen_1/provaider/modulos_provider.dart';
import 'package:examen_1/widgets/list_resp.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductoScreen extends StatelessWidget {
  const ProductoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final listado = Provider.of<ModulosProvaider>(context);
  return Scaffold(
    appBar: AppBar(
      title: const Text('Producto'),
    ),
    body: ListView.separated(
      itemCount: listado.ListRespDisplay.length,
      itemBuilder: (context, index) => ListTile(
        leading: const Icon(Icons.abc_sharp),
        title: Text(listado.ListRespDisplay[index].productName),
      ), 
      separatorBuilder: (_,__)=>const Divider(), )
    );
  }
}
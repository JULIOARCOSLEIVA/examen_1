import 'package:examen_1/widgets/list_resp.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ModulosProvaider extends ChangeNotifier{

  final String _baseUrl = "143.198.118.203:8000";

  final String _user = "test";

  final String _pass = "test2023";

  List<Listado> ListRespDisplay = [];
  
  ModulosProvaider(){
  getListModulos();  
  }

  getListModulos() async{
  var url = Uri.http(_baseUrl, 'ejemplos/product_list_rest/');
  String bAuth = 
    'basic ${base64Encode(utf8.encode('$_user:$_pass'))}'; 
  final response = await http.get(url,headers: {'authorization': bAuth});
  final Map<String, dynamic> dataDecode =json.decode(response.body);
  //print(response.body);
  final listResp = ListResp.fromJson(dataDecode);
  ListRespDisplay = listResp.listado;
  notifyListeners();

  }

  
}
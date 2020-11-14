import 'package:flutter/material.dart';
import 'package:tarefas/screens/home_page.dart';

void main() => runApp(MyApp());

//Classe principal do app
class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  //build é o metodo que vai construir o nosso componente
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Lista de Tarefas',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

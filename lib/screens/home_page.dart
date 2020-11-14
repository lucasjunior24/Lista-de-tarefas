//Primeira tela - Tela inicial - Homepage
// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:tarefas/components/monta_body_tarefas.dart';
import 'package:tarefas/models/tarefa.dart';

import 'form_nova_tarefa.dart';

class HomePage extends StatelessWidget {
  final List<Tarefa> tarefas = List();

  HomePage() {
    tarefas.add(Tarefa('Limpar a casa', true));
    tarefas.add(Tarefa('Limpar o quarto', false));
    tarefas.add(Tarefa('Lavar o banheiro', false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //barra da tela
      appBar: AppBar(
        title: Text('Minhas tarefas'),
      ),
      body: MontaBodyDasTarefas(tarefas),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => FormNovaTarefa(tarefas)));
        },
      ),
    );
  }
}

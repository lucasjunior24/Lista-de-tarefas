import 'package:flutter/cupertino.dart';
import 'package:tarefas/models/tarefa.dart';
// import 'package:todo_list2/models/tarefa.dart';

import 'card_item_lista_tarefa.dart';

class MontaBodyDasTarefas extends StatefulWidget {
  final List<Tarefa> tarefas;

  MontaBodyDasTarefas(this.tarefas);

  @override
  _MontaBodyDasTarefasState createState() => _MontaBodyDasTarefasState();
}

class _MontaBodyDasTarefasState extends State<MontaBodyDasTarefas> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: ListView.builder(
          itemCount: widget.tarefas.length,
          itemBuilder: (context, posicao) {
            final Tarefa tarefa = widget.tarefas[posicao];

            return CardItemDaLista(tarefa, posicao);
          }),
    );
  }
}

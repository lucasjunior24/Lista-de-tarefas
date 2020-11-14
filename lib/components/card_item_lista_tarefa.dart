import 'package:flutter/material.dart';
import 'package:tarefas/models/tarefa.dart';
// import 'package:todo_list2/models/tarefa.dart';

class CardItemDaLista extends StatefulWidget {
  final Tarefa tarefa;
  final int posicao;

  CardItemDaLista(this.tarefa, this.posicao);

  @override
  _CardItemDaListaState createState() => _CardItemDaListaState();
}

class _CardItemDaListaState extends State<CardItemDaLista> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: CheckboxListTile(
        title: Text(widget.tarefa.descricao),
        value: widget.tarefa.status,
        key: Key(widget.posicao.toString()),
        onChanged: (bool value) {
          setState(() {
            value == true ? widget.tarefa.concluir() : widget.tarefa.aFazer();
          });
        },
      ),
    );
  }
}

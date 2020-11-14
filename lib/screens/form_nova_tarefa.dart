import 'package:flutter/material.dart';
import 'package:tarefas/models/tarefa.dart';

//Segunda tela
class FormNovaTarefa extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController descricaoDaTarefa = TextEditingController();
  final List<Tarefa> tarefas;

  FormNovaTarefa(this.tarefas);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Nova tarefa'),
        ),
        body: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration:
                        InputDecoration(labelText: 'Descrição da tarefa'),
                    controller: descricaoDaTarefa,
                    maxLength: 30, //Limitar a quantidade de caracater para 30
                    validator: (valorDoCampo) {
                      //se o texto for vazio
                      if (valorDoCampo.isEmpty) {
                        return "A Descrição não pode ser vazia";
                      }

                      //a quantidade minima de caracter
                      if (valorDoCampo.length < 5) {
                        return "A Descrição deve conter no minimo 5 caracteres";
                      }

                      // validação da RegExp
                      // if (!regraDoTexto.hasMatch(valorDoCampo)) {
                      //   return "A Descrição só pode ser usado a-z e A-Z";
                      // }

                      return null;
                    },
                  ),
                ),
                RaisedButton(
                  child: Text('Salvar'),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      //Pegando o texto do input e criando o objeto de novaTarefa
                      Tarefa novaTarefa = Tarefa(descricaoDaTarefa.text, false);

                      //Adicionando a nova tarefa na lista já existente
                      tarefas.add(novaTarefa);

                      //

                      //Tiro a tela do empilhamento;
                      Navigator.pop(context);
                    }
                  },
                )
              ],
            )));
  }
}

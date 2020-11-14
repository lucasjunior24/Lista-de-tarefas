import 'package:tarefas/models/tarefa.dart';

class TarefaDao {
  Future<void> insert(Tarefa tarefa) async {
    final Database db = await database;

    await db.insert(
      'tarefas',
      tarefa.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}

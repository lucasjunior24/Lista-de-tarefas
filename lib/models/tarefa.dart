//Abstração de tarefa

class Tarefa {
//Caracteristicas - Atributos ou Propriedades
  int id;
  String descricao;
  bool status;

  //Comportamentos  - Metodos ou Funcões

  //Construtor
  Tarefa(this.id, this.descricao, this.status);

  void concluir() {
    status = true;
  }

  void aFazer() {
    status = false;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'descricao': descricao,
      'status': status,
    };
  }
}

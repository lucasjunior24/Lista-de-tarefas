
//Abstração de tarefa

class Tarefa {
//Caracteristicas - Atributos ou Propriedades

  String descricao;
  bool status;

  //Comportamentos  - Metodos ou Funcões

  //Construtor
  Tarefa(this.descricao, this.status);

  void concluir(){
    status = true;
  }

  void aFazer(){
    status = false;
  }

}
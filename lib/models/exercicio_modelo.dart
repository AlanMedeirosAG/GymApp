class Exercicio{
  String id;
  String nome;
  String treino;
  String comofazer;
  String? urlimagem;

  Exercicio({
    required this.id,
    required this.nome,
    required this.treino,
    required this.comofazer});

  Exercicio.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        nome =  map["nome"],
        treino =  map["treino"],
        comofazer =  map["comofazer"],
        urlimagem =  map["urlimagem"];

  Map<String, dynamic> toMap(){
    return{
    "id":id,
    "nome":nome,
    "treino":treino,
    "comofazer":comofazer,
    "urlimagem":urlimagem
    };
  }

}
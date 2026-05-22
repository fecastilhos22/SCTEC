void main (){
 /*
   * 1 percorro minha lista com a função map 
   * 2 para cada item da lista transformo em Aluno via construtor nomeado
   * 3 transformo todo o retorno do .map em lista via toList()
   * 4 percorro minha lista de objeto via forEach para imprimir o nome de cada aluno
  */
  //variável que vai guardar a lista
  final listaConvertida = alunos.map((e) => Aluno.fromMap(e)).toList();

  //* 4 percorro minha lista de objeto via forEach para imprimir o nome de cada aluno
  listaConvertida.forEach((element) => print(element.nome));
}

//criando a class
class Aluno {
  final int id;
  final String nome;
  final String? telefone;

  //construtor nomeado para converter(receber) um Map em uma lista como solicitado no exercício e transformar em Aluno
  Aluno.fromMap(Map map) //os :(dois pontos) significa que precisa esperar antes de inicializar o programa(null safety)
  : id = map['id'], //pega o id na "posição/local" id no Map
    nome = map['nome'], //pega o nome na "posição" nome no Map
    telefone = map['telefone'];//pega o telefone na "posição" telefone no Map 
}

List<Map<String, dynamic>> alunos = [
  {"id" : 98523488, "nome" : "João da Silva", "telefone": null},
  {"id" : 98523489, "nome" : "Lucas Evangelista", "telefone": '119996541236'},
  {"id" : 98523490, "nome" : "Maria Teodoro ", "telefone": '11944551236'},
  {"id" : 98523491, "nome" : "Isabel Santos", "telefone": null},
];
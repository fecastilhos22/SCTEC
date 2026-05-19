import 'dart:math';

void main() {
  List<Map<String, dynamic>> produtos = [
    {
      "id": 1,
      "produto": "Feijão Flutterado 1kg",
      "valor_venda": "8,17",
      "valor_compra": "5.15",
    },
    {
      "id": 2,
      "produto": "Suco dartado 1l",
      "valor_venda": "12,00",
      "valor_compra": "10.15",
    },
    {
      "id": 3,
      "produto": "Bolacha null safety",
      "valor_venda": "4,20",
      "valor_compra": "2.50",
    },
    {
      "id": 4,
      "produto": "Arroz Clean Code 5kg",
      "valor_venda": "28,50",
      "valor_compra": "19.90",
    },
    {
      "id": 5,
      "produto": "Macarrão Async/Await 500g",
      "valor_venda": "5,40",
      "valor_compra": "3.10",
    },
    {
      "id": 6,
      "produto": "Café Hot Reload 500g",
      "valor_venda": "18,90",
      "valor_compra": "12.00",
    },
    {
      "id": 7,
      "produto": "Leite Widget Tree 1l",
      "valor_venda": "6,25",
      "valor_compra": "7.15",
    },
    {
      "id": 8,
      "produto": "Açúcar State Management 1kg",
      "valor_venda": "4,80",
      "valor_compra": "2.90",
    },
    {
      "id": 9,
      "produto": "Óleo de Soja Boilerplate 900ml",
      "valor_venda": "7,30",
      "valor_compra": "8.10",
    },
    {
      "id": 10,
      "produto": "Detergente Singleton 500ml",
      "valor_venda": "2,15",
      "valor_compra": "1.05",
    },
    {
      "id": 11,
      "produto": "Pão de Forma Material Design",
      "valor_venda": "9,90",
      "valor_compra": "6.20",
    },
    {
      "id": 12,
      "produto": "Manteiga Build Context 200g",
      "valor_venda": "7,40",
      "valor_compra": "7.80",
    },
    {
      "id": 13,
      "produto": "Iogurte GetX 170g",
      "valor_venda": "3,20",
      "valor_compra": "1.95",
    },
  ];

 
  //map converte os itens da lista - (e) é cada item da lista
  final listaFormatada = produtos.map((e) {
    String valorVendaVirgulaPraPonto = e['valor_venda'].toString().replaceAll(RegExp(r','), '.'); //variavel valorVendaVirgulaPraPonto = replace all está substutindo as vírgulas pelo pontos e tudo está convertido para string
    double valorVenda = double.parse(valorVendaVirgulaPraPonto);
    double valorCompra = double.parse(e['valor_compra']);//variavel valorCompra  = parse transforma a string em double
    double lucro = valorVenda - valorCompra;
    
    return{
      "id": e['id'],
      "produto": e['produto'],
      "valor_venda": valorVenda,
      "valor_compra": valorCompra,
      "lucro": lucro,
    };//adicionando a chave lucro na lista
  }).toList();//transforma para lista novamente(sempre que usar o map tem que usar o toList)

//print(listaFormatada);para testar se a lista está ok

 print("\n\nPRODUTOS\n");

  //*Contexto: Você recebeu uma lista de Produtos da API e
  //*precisa mostrar para o usuário algumas informações,
  //*sendo elas o ID do produto, o nome e o lucro que esta dando

  //? Imprimir na tela conforme modelo abaixo:
  listaFormatada.forEach((element){//executa uma ação para cada elemento, no caso para cada variavel
    String id = element['id'].toString();
    String produto = element ['produto'];
    String lucro = (element ['lucro'] as double).transformarEmDinheiroBr();

    print("ID: $id | PRODUTO: $produto | LUCRO POR VENDA: $lucro");
  });//para imprimir como solicitado no exercício

  // print("ID: 1| PRODUTO: SABÃO | LUCRO POR VENDA: R$12,00");
  // print("ID: 1| PRODUTO: oleo | LUCRO POR VENDA: -R$7,00");

  print("\n\nMÉDIAS\n");
  //*Contexto: Agora você precisar gerar alguns relatórios sintéticos para o usuário:

  //declaração das variáveis
  double totalValorVenda = 0;
  double totalValorCompra = 0;
  double totalLucro = 0;
  int quantidadeDaLucro = 0;
  int quantidadeLucroAcimaDeDois = 0;

  //percorre a lista e "pegar"o valor
  listaFormatada.forEach((element){
    totalLucro += element['lucro'];
    totalValorVenda += element['valor_venda'];
    totalValorCompra += element['valor_compra'];

    //("\n\nMAIOR PARTE DOS PRODUTOS DA LUCRO?:\n"); para atender essa solicitação
    if (element ['lucro'] > 0){ //testa se o lucro é maior que 0, se sim incrementa 
      quantidadeDaLucro++;
    }

    //("\n\nMAIOR PARTE DOS PRODUTOS DA LUCRO ACIMA DE R\$2,00?:\n");para atender essa solicitação
    if (element['lucro'] > 2){
      quantidadeLucroAcimaDeDois++;//testa os valores de lucro acima de R$2 e incrementa
    }

  },);

  //? Imprimir a média do valor de venda: Média valor venda: R$21,00
  print (
  "Média valor venda: ${(totalValorVenda / listaFormatada.length).transformarEmDinheiroBr()}",
  );//lenght (tamanho da lista)

  //? Imprimir a média do valor de compra: Média valor compra: R$18,00
  print (
  "Média valor compra: ${(totalValorCompra / listaFormatada.length).transformarEmDinheiroBr()}",
  );

  //? Imprimir a média do lucro: Média valor lucro: R$3,50
  print (
  "Média valor lucro: ${(totalLucro / listaFormatada.length).transformarEmDinheiroBr()}",
  );

  print("\n\nMAIOR PARTE DOS PRODUTOS DA LUCRO?:\n");
  //? imprimir "SIM" ou "NÃO"
  print(quantidadeDaLucro > (listaFormatada.length / 2) ? "SIM" : "NÃO");

  print("\n\nMAIOR PARTE DOS PRODUTOS DA LUCRO ACIMA DE R\$2,00?:\n");
  //? imprimir "SIM" ou "NÃO"
  print(quantidadeLucroAcimaDeDois > (quantidadeDaLucro / 2) ? "SIM" : "NÃO");

  print("\n\nPRODUTOS QUE DÃO PREJUIZO:\n");
  //*Contexto: Agora você precisar gerar um relatório analítico mostrando
  //*os produtos que dão prejuizo:

  //o where vai retornar uma com uma "sublista" com os itens que atenderem o teste lógico e ir filtrando
  final listaDePrejuizo = listaFormatada.where((element) => element ['lucro'] < 0);

  //forEach para percorrer a lista
  listaDePrejuizo.forEach((element) {
    String id = element['id'].toString();
    String produto = element['produto'];
    String lucro = (element ['lucro'] as double).transformarEmDinheiroBr();
    print("ID: $id | PRODUTO: $produto | PREJUIZO:$lucro");
  },);

  //? imprimir produtos que dão prejuizo, para cada linha imprimir conforme exemplo: ID: 1 | PRODUTO: SABÃO | PREJUIZO: -R$3,00
}

extension FormatadoresDeDinheiro on double {
  String transformarEmDinheiroBr() => this.isNegative 
  ? "-R\$${abs().toStringAsFixed(2).replaceAll('.', ',')}" //true se 
  : "R\$${abs().toStringAsFixed(2).replaceAll('.', ',')}"; //false senao
// a extensão é para testar se o número é negativo, se sim recebe o - (como o $ é um caracter especial foi usado \$, porque ele é usado para concatenar string)
//e o restante é para formatar o valor (abs(double))
} 

void main(){
  //variável que vai guardar a lista e transforma-la em objeto
  final listaConvertida = listaPedidos.map((e) => Pedido.fromMap(e)).toList();

  //* 4 percorro minha lista de objeto via forEach para imprimir os elementos pedidos no exercício
  listaConvertida.forEach((element) => print(
    "Id pedido: ${element.id},Id cliente: ${element.cliente.id}, metodo pagamento : ${element.pagamento.metodo}, quantidade de produto: ${element.produtos.length}",
    ),//element.pagamento.metodo está pegando metodo dentro de pagamento, assim como nos outros
  );
}
class Pedido{
  final String id;
  final String data;
  final String status;
  final Cliente cliente; //pegando da classe cliente
  final Pagamento pagamento; //pegando da classe pagamento
  final List<Produto> produtos;

  //construtor nomeado para converter(receber) um Map em uma lista como solicitado no exercício e transformar 
  Pedido.fromMap(Map map)
  : id = map['id_pedido'], //id no Map na "posição/local" id no Map
    data = map['data_criacao'],
    status = map['status'],
    cliente = Cliente.fromMap(map['cliente'],),//pegando o map de cliente e transformando em objeto
    pagamento = Pagamento.fromMap(map['pagamento'],),
    produtos = (map['itens'] as List)
        .map((e) => Produto.fromMap(e)).toList();//transformando a listas de maps em lista de objetos
} 

class Cliente {
  final String id;
  final String nome;
  final String email; 

  //construtor nomeado para converter(receber) um Map em uma lista como solicitado no exercício e transformar 
  Cliente.fromMap(Map map)
  : id = map['id_cliente'],
    nome = map['nome'], 
    email = map['email'];
}

class Pagamento{
  final String metodo;
  final int parcelas;
  final bool confirmado;

//construtor nomeado para converter(receber) um Map em uma lista como solicitado no exercício e transformar 
  Pagamento.fromMap(Map map)
  : metodo = map['metodo'],
    parcelas = map['parcelas'], 
    confirmado = map['confirmado'];
}

class Produto{
 final String id;
 final String nome;
 final double preco;
 final int quantidade;

//construtor nomeado para converter(receber) um Map em uma lista como solicitado no exercício e transformar 
  Produto.fromMap(Map map)
  : id = map['id_cliente'],
    nome = map['nome'], 
    preco = map['preco'],
    quantidade = map['quantidade'];
}



final listaPedidos = [
  {
    "id_pedido": "REQ-9872",
    "data_criacao": "2026-05-14T10:00:00Z",
    "status": "processando",
    "cliente": {
      "id_cliente": "USR-441",
      "nome": "Ana Silva",
      "email": "ana.silva@email.com",
    },
    "pagamento": {
      "metodo": "cartao_credito",
      "parcelas": 3,
      "confirmado": true,
    },
    "itens": [
      {
        "id_produto": "PROD-001",
        "nome": "Teclado Mecânico RGB",
        "preco_unitario": 349.90,
        "quantidade": 1,
      },

      {
        "id_produto": "PROD-012",
        "nome": "Mouse Pad Extendido",
        "preco_unitario": 89.90,
        "quantidade": 2,
      },
    ],
  },
  {
    "id_pedido": "REQ-9873",
    "data_criacao": "2026-05-14T10:15:00Z",
    "status": "entregue",
    "cliente": {
      "id_cliente": "USR-102",
      "nome": "Carlos Souza",
      "email": "carlos.s@email.com",
    },
    "pagamento": {"metodo": "pix", "parcelas": 1, "confirmado": true},
    "itens": [
      {
        "id_produto": "PROD-055",
        "nome": "Fone de Ouvido Bluetooth",
        "preco_unitario": 199.00,
        "quantidade": 1,
      },
    ],
  },
];
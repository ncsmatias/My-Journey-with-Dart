/*
  * Reduce
    - Reduce realiza uma operação sobre os elementos da coleção retornando um
    único elemento resultante.
    - Ao interagir com os elementos o indice 0 se torna o anterior e o indice 1 o atual.
*/
void main(List<String> args) {
  List<Map<String, dynamic>> items = [
    {"name": "café", "price": 4.90},
    {"name": "pão", "price": 1.90},
    {"name": "presunto", "price": 4.90},
    {"name": "queijo", "price": 3.90},
    {"name": "suco de laranja", "price": 3.50},
    {"name": "leite", "price": 2.30},
    {"name": "manteiga", "price": 2.10},
    {"name": "ovos", "price": 5.20}
  ];

  double sum =
      items.map((e) => e['price']).reduce((value, element) => value + element);

  print('A soma dos preços dos itens é: R\$${sum.toStringAsFixed(2)}');
}

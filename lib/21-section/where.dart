/*
  * Where
    - Filtra os elementos da coleção criando uma nova do mesmo tamanho ou menor 
*/

void main(List<String> args) {
  List<Map<String, dynamic>> items = [
    {"name": "café", "price": 4.90},
    {"name": "pão", "price": 1.90},
    {"name": "presunto", "price": 4.90},
    {"name": "queijo", "price": 3.90},
  ];

  List greaterThan = items.where((element) => element['price'] > 4.00).toList();
  print('Itens com preços maiores que 4: $greaterThan');

  List under = items.where((element) => element['price'] <= 4.00).toList();
  print('Itens com preços menores ou iguais a 4: $under');

  var first = items.firstWhere((element) => element['price'] == 4.90);
  print('Primeiro elemento com preço igual a 4.90: $first');

  Map<String, dynamic> single = items.singleWhere(
    (element) => element['name'] == 'café gourmet',
    orElse: () => {},
  );
  print('Elemento com nome igual a café gourmet: $single');
}

/*
  * Every
    - Faz o teste lógico em todos os elementos com o operador lógico AND
*/
void main(List<String> args) {
  List<Map<String, dynamic>> items = [
    {"name": "café", "price": 4.90},
    {"name": "pão", "price": 1.90},
    {"name": "presunto", "price": 4.90},
    {"name": "queijo", "price": 3.90}
  ];

  bool greaterThan = items.every((element) => element['price'] > 1.00);

  print('O preço dos itens são maiores que 1: $greaterThan');
}

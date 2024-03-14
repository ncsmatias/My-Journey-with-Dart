/*
  * Map
    - Map transforma/seleciona os elementos de uma coleção criando um nova do mesmo tamanho
*/

void main(List<String> args) {
  List<Map<String, dynamic>> items = [
    {"name": "café", "price": 4.90},
    {"name": "pão", "price": 1.90},
    {"name": "presunto", "price": 4.90},
    {"name": "queijo", "price": 3.90}
  ];

  print('items $items');

  // ignore: prefer_function_declarations_over_variables
  Function sumList = (List<Map<String, dynamic>> list) => list.fold(
      0.0, ((previousElement, element) => previousElement + element['price']));

  double sum = sumList(items);
  print('soma $sum');
}

// ignore_for_file: file_names

/*
  * Where
    - Filtra os elementos da lista criando uma nova lista
*/

import 'dart:math';

void main(List<String> args) {
  List<num> numbers = List.generate(15, (index) => Random().nextInt(100));
  // Lista original
  print('numbers $numbers');

  // O método where é usado para filtrar os elementos de uma coleção com base em uma condição fornecida por uma função de callback.
  List<num> numbersEven = numbers.where((element) => element % 2 == 0).toList();
  print('numbersEven $numbersEven');

  List<dynamic> mixedList = [1, 'two', 3, 'four', 5];
  // O método whereType é utilizado para filtrar os elementos de uma coleção, retornando apenas aqueles que são de um tipo específico.
  List<num> isInt = mixedList.whereType<int>().toList();
  print('isInt: $isInt');

  List<num> numbers2 = List.generate(15, (index) => index);

  // O método singleWhere é um método da classe Iterable em Dart, e ele é utilizado para obter o
  // único elemento de uma coleção que atende a uma condição específica.
  num number = numbers2.singleWhere((element) => element == 5);
  print('number: $number');

  // Se mais de um elemento ou nenhum elemento atender à condição, o método lançará uma exceção.
  num number2 = numbers2.singleWhere(
    (element) => element > 100,
    orElse: () =>
        0, // Uma função opcional que pode ser fornecida para retornar um valor padrão caso nenhum ou mais de um elemento atenda à condição
  );
  print('number2: $number2');

  // O método lastWhere também faz parte da classe Iterable em Dart e é usado para obter o último elemento de uma coleção que atende a uma determinada condição.
  // Ao contrário de singleWhere, lastWhere não exige que haja apenas um elemento que satisfaça a condição.
  num number3 = numbers2.lastWhere((element) => element < 5);
  print('number3: $number3');

  num number4 = numbers2.lastWhere(
    (element) => element > 100,
    orElse: () =>
        0, // Uma função opcional que pode ser fornecida para retornar um valor padrão caso nenhum elemento atenda à condição.
  );
  print('Number4: $number4');
}

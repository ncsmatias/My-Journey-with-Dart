// ignore_for_file: file_names

/*
  * Reduce
    - Compara os elementos da lista retornando um único elemento resultante
    - Ao interagir com os elementos o indice 0 se torna o anterior e o indice 1 o atual.
*/

import 'dart:math';

void main(List<String> args) {
  List<int> numbers = List.generate(10, (index) => Random().nextInt(15));

  print('numbers: $numbers');

  int sum = numbers.reduce((previous, current) {
    return previous + current; // essa operação torna-se o valor anterior
  });

  print('sum: $sum');

  int smaller = numbers
      .reduce((previous, current) => previous < current ? previous : current);
  print('O menor numero da lista é: $smaller');
}

/*
  * Fold
    - É utilizado para realizar uma operação de acumulação em todos os elementos da coleção, 
      de forma que um valor acumulado seja retornado no final. 
    - O fold recebe uma função de acumulação (um callback) e um valor inicial (também conhecido como acumulador).
*/

import 'dart:math';

void main(List<String> args) {
  List<int> numbers = List.generate(3, (index) => Random().nextInt(15));

  print('numbers: $numbers');

  int initialValue = 2; // O valor inicial do acumulador.
  int sum =
      numbers.fold(initialValue, (previous, current) => previous + current);

  print('sum: $sum');
}

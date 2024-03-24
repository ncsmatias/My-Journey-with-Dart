/*
  * Conceito
    - Um gerador de valores aleatórios bool, int ou double.
*/

import 'dart:math';

void main(List<String> args) {
  Random random = Random();

  // Utilizando o nextInt
  for (int index = 0; index < 10; index++) {
    int randomNumber = random.nextInt(100); // 0..99
    print('Número aleátorio: $randomNumber');
  }
  print('\n');
  // Utilizando o nextDouble, por padrão é de 0.0 a 1.0
  for (int index = 0; index < 10; index++) {
    double randomNumber = random.nextDouble() * 255; // 0 à 255
    print('Número aleátorio $randomNumber');
  }
  print('\n');
  // Utilizando o nextBool
  for (int index = 0; index < 3; index++) {
    bool randomBool = random.nextBool(); // 0 à 255
    print('Booleano aleátorio $randomBool');
  }
}

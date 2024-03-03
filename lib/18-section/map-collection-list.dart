// ignore_for_file: file_names

/*
  * Map
    - Transforma/seleciona os elementos de uma lista criando uma nova lista
*/
void main(List<String> args) {
  List<num> primeNumbers = [2, 3, 5, 7, 11, 13, 17, 19];

  List<num> evenNumbers = primeNumbers.map((element) => 2 * element).toList();

  // A lista original não é modificada
  print('primeNumbers: $primeNumbers');

  // Lista gerada a partir do map
  print('evenNumbers: $evenNumbers');

  // map aninhados
  List<num> incrementNumbers = primeNumbers
      .map((element) => 2 * element + 1)
      .map((element) => element + 8)
      .toList();

  // Resultado da operação com maps aninhados
  print('incrementNumbers: $incrementNumbers');
}

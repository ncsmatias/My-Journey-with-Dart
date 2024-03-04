/*
  * Set
    - É uma coleção de elemento únicos e ordenados entre chaves {}
    - Não tem acesso pelo índice
*/

void main(List<String> args) {
  Set<int> setInt = Set();

  // setInt[0] = 2; // Erro: Essa operação não está definida para o tipo Set

  setInt.add(2);
  setInt.add(4);
  setInt.add(2); // Não irá adicionar, pois não podemos ter elementos repetidos
  print('setInt: $setInt');

  setInt.remove(2);
  print('setInt: $setInt');

  setInt.add(2);
  setInt.add(6);
  setInt.add(8);
  setInt.add(10);

  for (int index = 0; index < setInt.length; index++) {
    print(
        'setInt: ${setInt.elementAt(index)}'); // Esse método contorna a proibição de acesso pelo índice
  }

  // Ultilizando forIn
  for (var number in setInt) {
    print(number);
  }

  // Utilizando forEach
  setInt.forEach(print);

  // Utilizando map
  setInt.map((e) => print(e));

  // Funções específicas do tipo Set
  Set<int> primeNumbersSet = {2, 3, 5, 7, 11};
  Set<int> oddNumbersSet = {1, 3, 5, 7, 9};

  // Retorna os elementos que estão presente em primeNumbersSet mas,
  // não estão presentes em oddNumbersSet
  var difference1 = primeNumbersSet.difference(oddNumbersSet);
  print('Diferença do set primeNumbersSet para oddNumbersSet: $difference1');

  // Retorna os elementos que estão presente em oddNumbersSet mas,
  // não estão presentes em primeNumbersSet
  var difference2 = oddNumbersSet.difference(primeNumbersSet);
  print('Diferença do set primeNumbersSet para oddNumbersSet: $difference2');

  // Faz a união entre a primeNumbersSet e oddNumbersSet
  var union = primeNumbersSet.union(oddNumbersSet);
  print('União de primeNumbersSet com oddNumbersSet: $union');

  // Faz a interseção entre primeNumbersSet e oddNumbersSet
  var intersection = primeNumbersSet.intersection(oddNumbersSet);
  print('Interseção entre primeNumbersSet e oddNumbersSet: $intersection');

  // Retorna o valor se ele pertencer a primeNumbersSet, caso contrário retorna null
  var lookup = primeNumbersSet.lookup(6);
  print('Valor de lookup: $lookup');
}

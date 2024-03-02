// ignore_for_file: file_names

/*
  - List é uma coleção dinâmica e ordenada de elementos entre colchetes []
  - ForEach: Aplica a função anônima a cada elemento da nossa coleção
  - Todo array é do tipo List<?>
*/

void main(List<String> args) {
  List<num> numbers = [1, 3, 5, 7, 11, 13, 17, 19, 23, 29];
  numbers.forEach((element) => print(2 * element - 10));
  print('\n');

  // Geradores de lista

  print('Gerando números pares');
  // O método generate cria uma lista cujos elementos são gerados dinamicamente com base em uma função fornecida.
  List<num> evenNumbers = List.generate(10, (index) => 2 * index);
  evenNumbers.forEach(print);

  print('\n');

  print('Utilizando método filled');
  // O método filled cria uma lista com um tamanho específico, onde todos os elementos têm o mesmo valor inicial.
  List<DateTime> dates = List.filled(4, DateTime.now());
  dates.forEach(print);

  print('\n');

  print('Criando uma lista vazia');
  // O método empty cria uma lista vazia
  List<num> emptyList = List.empty(growable: true);
  // growable: true -> cria uma lista vazia que é redimensionável, ou seja, você pode adicionar e remover elementos dinamicamente conforme necessário.

  print('Lista vazia $emptyList');
  emptyList.add(10);

  print('\n');

  print('Criando uma lista imutável');
  // Uma lista imutável não pode ter seu comprimento ou elementos alterados.
  //Se os próprios elementos forem imutáveis, a lista resultante também será imutável
  List<num> unmodifiableList =
      List.unmodifiable(List.generate(10, (index) => 2 * index + 1));
  print('Lista imutável: $unmodifiableList');

  // unmodifiableList.add(21); Erro: Não é possível adicionar a uma lista não modificável
}

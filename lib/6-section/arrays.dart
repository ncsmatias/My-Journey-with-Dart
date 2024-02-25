// Array é uma lista dinâmica e ordenada de elementos entre chaves
void main(List<String> args) {
  var names = ['Fernando', 'Leila'];

  // Imprime o array names no terminal
  print('Valor do array names: $names');

  // Imprime o primeiro elemento do array no terminal
  print('Primeiro elemento ${names[0]}');

  // Imprime o segundo elemento do array no terminal
  print('Segundo elemento ${names[1]}');

  // Note que o array inicia pelo índice 0

  // Um array pode armazenar qualquer tipo de dart
  var types = [true, !false, true, false, null, 1, 2, 3];
  print('Valor do array types $types');

  // Um array pode armazenar outro array
  var matrix = [
    [1, 3, 4],
    [4, 5, 6],
    [7, 8, 9]
  ];

  print('Valor do array matrix $matrix');

  // Podemos alterar os valores de um array usando o índice e o operador de atribuíção
  names[0] = 'Maria';
  print('Valor do array names ao substituir o primeiro elemento $names');

  // Obtemos um erro ao acessar um índice superior a quantidade de elementos menos um do array
  // print('Erro ao imprimir ${names[2]}'); Erro: Valor inválido: fora do intervalo inclusivo 0..1: 2

  // Métodos de um array

  var array = [];
  print('Valor de array $array');

  // Para adicionar valores em uma array utilizamos o método add()
  array.add(3.1415);
  print('Valor de array ao adicionarmos um elemento $array');

  // Podemos adicionar um elemento em um índice especificado utilizando o método insert(index, element)
  array.insert(1, 'Fernanda');
  print(
      'Valor de array ao adicionarmos um elemento em um índice específicado $array');

  // Podemos adicionar um array em outro array usando o método addAll(array)
  array.addAll([1, 2, 3, 4, 5, 6]);

  // Podemos remover um elemento do array utilizando o método removeAt(index)
  array.removeAt(0);
  print('Valor de array ao remover o elemento de índice 0 $array');
  // Os índices dos elementos e o tamanho do array são ajustados

  // Removendo vários elementos em um intervalo com o método removeRange(init, final)
  array.removeRange(3, 6);
  print(
      'Valor de array ao remover os elementos em um intervalo de índice: $array');

  // Removendo o elemento do array passando o elemento usando o método remove()
  array.remove('Fernanda');
  print('Valor de array ao remover um elemento utilizando remove: $array');

  // Obtendo o tamanho do array usando o atributo length
  print('Tamanho do array ${array.length}');

  // Removendo todos os elementos de array usando o método clear()
  array.clear();
  print('Valor de array ao remover todos os elementos $array');

  // Verificando se o array é vazio utilizando o atributo isEmpty
  print('Verificando se o array é vázio: ${array.isEmpty}');

  // Há também o atributo isNotEmpty que informa se o array não é vazio
  print('Varificando se o array NÃO é vazio: ${array.isNotEmpty}');

  var mixedArray = [1, 'two', true, 4.5];

  // Podemos verificar se um elemento pertence a um array usando o método contains(element)
  var isContain = mixedArray.contains('two');
  print('Verificando se o mixedArray possuí um elemento: $isContain');

  var numbersArray = [5, 2, 7, 1, 10, 4, 3, 9, 8, 6];

  // Podemos ordenar um array usando o método sort()
  numbersArray.sort();
  print('Valor de numbersArray ordenados $numbersArray');

  // Podemos mudar a ordem de um array utilizando o método shuffle()
  numbersArray.shuffle();
  print('Valor de numbersArray aleatórios $numbersArray');

  // Podemos ordenar um array decrescente usando sort((a, b) => b.compareTo(a))
  numbersArray.sort((a, b) => b.compareTo(a));
  print('Valor de numbersArray em ordem decrescente $numbersArray');
  // Basta inverter b com a para obter um ordem crescente
}

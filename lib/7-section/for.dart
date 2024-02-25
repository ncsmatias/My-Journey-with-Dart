void main(List<String> args) {
  // A estrutura de repetição for é definida da seguinte maneira
  // for(declaração; condição; operação)

  for (var counter = 0; counter <= 10; counter++) {
    print('Valor de counter: $counter');
  }

  // A execução do for é encerrada quando a condição for avaliada como falso

  // Utilizando for com Strings
  String text = 'Lorem Ipsum';
  for (var counter = 0; counter < text.length; counter++) {
    print(text[counter].toUpperCase());
  }

  // Utilizando for com arrays
  var fruits = ['maça', 'pera', 'banana', 'mamão'];
  for (var index = 0; index < fruits.length; index++) {
    print('A fruta é ${fruits[index]}');
  }

  var matrix = [
    [1, 0, 0],
    [0, 1, 0],
    [0, 0, 1]
  ];
  for (var posI = 0; posI < matrix.length; posI++) {
    for (var posJ = 0; posJ < matrix[posI].length; posJ++) {
      print(
          'Elemento da matriz na posição $posI x $posJ: ${matrix[posI][posJ]}');
    }
  }

  // Utilizando a estrutura forIn
  // ForIn automatiza em ordem crescente os índices

  for (var fruit in fruits) {
    print('A fruta é $fruit');
  }

  for (var array in matrix) {
    for (var element in array) {
      print('Elemento da matriz $element');
    }
  }
}

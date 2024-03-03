// ignore_for_file: file_names

/*
  - Expand cria uma nova lista expandindo ou concatenando os elementos
*/

void main(List<String> args) {
  List<dynamic> numbers = [
    [1, 3, 5],
    [7, 11, 13],
    [17, 19, 23]
  ];

  num sumList(List<num> list) {
    num sum = 0;

    for (var element in list) {
      sum += element;
    }

    return sum;
  }

  // O método expand em Dart é utilizado para transformar cada elemento de uma lista
  //em zero ou mais elementos, produzindo uma nova lista resultante. Isso é feito aplicando uma
  //função a cada elemento e, em seguida, concatenando os resultados em uma lista única.
  List flatList = numbers.expand((element) => [sumList(element)]).toList();
  print(flatList);

  // Concatenação de List
  var list1 = [1, 3, 5];
  var list2 = [7, 11, 13];

  // Utilizando o operador +
  var listConcat1 = list1 + list2;
  print(listConcat1);

  // Utilizando o operador spread (espalhador)
  var listConcat2 = [...list1, ...list2];
  print(listConcat2);

  // Utilizando o método addAll()
  var listConcat3 = List.empty(growable: true);
  listConcat3
    ..addAll(list1)
    ..addAll(list2);
  print(listConcat3);
}

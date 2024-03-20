/*
  * Conceito
    - Generators são funções geradores que produzem sequências de valores usando:
      > Funções sincronas que retornam iterables
      > Funções assincronas que retornam streams
  
  * yield
    - Utilizado em funções geradoras sincronas e assincronas
    - Adiciona um valor ao fluxo de saída da função assincrona (*) retornando sem encerrar a função
  
  * yield*
    - Utilizado em funções geradoras sincronas e assincronas recursivas
*/

void main(List<String> args) {
  Iterable<int> syncFunction() sync* {
    int stop = 10, i = 0;
    while (i < stop) {
      yield i++;
    }
  }

  print(syncFunction());

  Stream<int> asyncFunction() async* {
    int stop = 10, i = 0;
    while (i < stop) {
      yield i++;
    }
  }

  asyncFunction().listen((event) => print(event));

  print('Duplica a lista ${syncDoubleList([1, 2, 3, 4])}');

  asyncCounter(10).listen((event) => print('asyncCounte: $event'));
}

// Funções geradores recursivas
Iterable syncDoubleList(List list) sync* {
  if (list.isNotEmpty) {
    yield* [list[0] * 2, ...(syncDoubleList(list.sublist(1)))];
  }
}

Stream<int> asyncCounter(int number) async* {
  yield number;
  if (number > 0) {
    yield* asyncCounter(number - 1);
  }
}

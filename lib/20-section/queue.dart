/*
  * Queue
    - É uma coleção ordenada entre chaves {}, sem index, que manipula o ínicio e o fim da lista 
*/

import 'dart:collection';

void main(List<String> args) {
  Queue<int> queue = Queue();

  queue.addAll([2, 3, 5, 7, 11]);

  // Os elementos respeitam a ordem de inserção
  print('queue: $queue');

  // Métodos específicos do tipo Queue

  // addFirst adiciona um elemento ao ínicio de queue
  queue.addFirst(13);
  print('queue com addFirst: $queue');

  // addLast adiciona um elemento ao final de queue
  queue.addLast(17);
  print('queue com addLast: $queue');

  // add também adiciona um elemento ao final de queue
  queue.add(19);
  print('queue com add: $queue');

  // removeFirst remove o elemento no inicio de queue
  queue.removeFirst();
  print('queue com removeFirst: $queue');

  // removeLast remove o lemento no final de queue
  queue.removeLast();
  print('queue com removeLast: $queue');

  // removeWhere remove todos os elementos correspondidos pela condição.
  queue.removeWhere((element) => element % 5 == 0);
  print('queue com removeWhere: $queue');

  // queue.forEach((e) {
  //   queue.removeWhere((element) => element == e); Erro  indicando que houve uma tentativa
  //   de modificar uma lista (List) ou fila (Queue) enquanto ela estava sendo iterada (percorrida).
  //   print(e);
  // });
}

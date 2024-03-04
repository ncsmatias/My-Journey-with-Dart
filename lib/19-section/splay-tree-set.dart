// ignore_for_file: file_names

/*
  * Set
    - É uma coleção de elemento únicos e ordenados entre chaves {}
    - Não tem acesso pelo índice

  * SplayTreeSet
    - O SplayTreeSet é outra implementação da interface Set, que utiliza uma árvore splay para armazenar elementos.
    - A principal característica do SplayTreeSet é a sua capacidade de manter os elementos ordenados em relação à sua ordem natural. 
    - Isso significa que ao iterar sobre um SplayTreeSet, os elementos serão apresentados em ordem crescente.
*/

import 'dart:collection';

void main(List<String> args) {
  SplayTreeSet<int> splayTreeSet = SplayTreeSet();
  splayTreeSet.add(2);
  splayTreeSet.add(4);
  splayTreeSet.add(6);
  splayTreeSet.add(8);
  splayTreeSet.add(10);

  print('hashSet: $splayTreeSet');
}

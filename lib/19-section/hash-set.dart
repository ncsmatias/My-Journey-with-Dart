// ignore_for_file: file_names

/*
  * Set
    - É uma coleção de elemento únicos e ordenados entre chaves {}
    - Não tem acesso pelo índice

  * HashSet
    - HashSet é uma implementação específica dessa interface que usa uma 
      tabela de dispersão (hash table) para armazenar os elementos.
    - Isso permite um acesso eficiente aos elementos, resultando em operações de adição, 
      remoção e verificação de pertencimento geralmente rápidas.
*/

import 'dart:collection';

void main(List<String> args) {
  HashSet<int> hashSet = HashSet();
  hashSet.add(2);
  hashSet.add(4);
  hashSet.add(6);
  hashSet.add(8);
  hashSet.add(10);

  print('hashSet: $hashSet');
}

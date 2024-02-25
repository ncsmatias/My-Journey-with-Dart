void operations(int number1, int number2, Function isEven,
    [String type = 'sum']) {
  int? result;
  bool even = false;

  switch (type) {
    case 'sum':
      result = number1 + number2;
      break;
    case 'sub':
      result = number1 - number2;
      break;
    case 'mult':
      result = number1 * number2;
      break;
    case 'div':
      result = number1 ~/ number2;
      break;
    default:
      result = null;
  }

  if (result != null) {
    even = isEven(result);

    if (even) {
      print('O resultado da operação \'$type\' é $result e é um numero par');
    } else {
      print('O resultado da operação \'$type\' é $result e é um numero ímpar');
    }

    return;
  }

  print('Operação inválido');
}

num binarySearch(List<num> list, num target, Function sort) {
  sort(list);

  print('Lista ordenada: $list');

  int start = 0;
  int end = list.length - 1;

  while (start <= end) {
    int mid = (start + end) ~/ 2;

    // Verifica se o elemento do meio é o alvo
    if (list[mid] == target) {
      return mid;
    }

    // Se o alvo está na metade esquerda
    if (list[mid] > target) {
      end = mid - 1;
    }
    // Se o alvo está na metade direita
    else {
      start = mid + 1;
    }
  }

  // Se o elemento não foi encontrado
  return -1;
}

void main(List<String> args) {
  // Declaração de função anônima com chaves
  var isEven = (int number) {
    bool even = number % 2 == 0;

    return even;
  };

  operations(12, 13, isEven);

  // Declaração de função anônimas com arrow functions
  num position = binarySearch(
      [17, 12, 81, 56, 32, 55, 48, 72, 16, 18],
      72,
      (List<num> list) => list
          .sort()); // Utilizando a função anonima dentro da passagem de parâmetros da função

  if (position != -1) {
    print('O número procurado está no posição $position da lista');
  } else {
    print('O número procurado não está na lista');
  }
}

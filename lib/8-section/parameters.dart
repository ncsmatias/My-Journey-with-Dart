// Funções com parâmetros posicionados e default
num? operations(num number1, num number2, [String type = 'sum']) {
  switch (type) {
    case 'sum':
      return number1 + number2;
    case 'sub':
      return number1 - number2;
    case 'mult':
      return number1 * number2;
    case 'div':
      return number1 / number2;
    default:
      return null;
  }
}

// Funções com parâmetros nomeados e default
String IMC(num weight, num height, {String name = '', String lastname = ''}) {
  num imc = weight / (height * height);

  return 'O imc de $name $lastname é de $imc';
}

// Dart permite que funções também sejam passadas como parâmetros
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

void sort(List<num> list) => list.sort();

void main(List<String> args) {
  // Funções com parâmetros posicionados e default
  // Note que não é necessário específicar o valor do último parametro
  var sum = operations(10, 32);
  print('O valor da soma é: $sum');

  var sub = operations(37, 54, 'sub');
  print('O valor da subtração é: $sub');

  // Funções com parâmetros nomeados e default

  var imc = IMC(100, 1.80);
  print(imc);

  // Note que podemos passar o parametro nomeado em qualquer ordem
  imc = IMC(80, 1.50, lastname: 'Souza', name: 'Rodrigo');
  print(imc);

  num position =
      binarySearch([17, 12, 81, 56, 32, 55, 48, 72, 16, 18], 72, sort);

  if (position != -1) {
    print('O número procurado está no posição $position da lista');
  } else {
    print('O número procurado não está na lista');
  }
}

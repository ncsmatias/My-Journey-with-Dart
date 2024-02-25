void operations(int number1, int number2, [String type = 'sum']) {
  int? result;

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
    var even = (int number) => number % 2 == 0;

    if (even(result)) {
      print('O resultado da operação \'$type\' é $result e é um numero par');
    } else {
      print('O resultado da operação \'$type\' é $result e é um numero ímpar');
    }

    return;
  }

  print('Operação inválido');
}

Function addNewNumber(List<num> list) {
  return (num number) {
    list.add(number);
    list.sort();
    return list;
  };
}

void main(List<String> args) {
  // De modo resumido, Closures são funções declaradas dentro do corpo de outra função
  // podendo retornar as variáveis locais e da função superior

  operations(2, 5);

  var add = addNewNumber([17, 12, 81, 56, 32, 55, 48, 72, 16, 18]);
  print(add(19));

  var addOther = addNewNumber(add(19))(1); // Outra forma de chamar um closure
  print(addOther);
}

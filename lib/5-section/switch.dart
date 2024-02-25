void main(List<String> args) {
  String operator = "outra";

  num number1, number2;
  num? result;

  number1 = 1024;
  number2 = 512;

  switch (operator) {
    case 'soma':
      result = number1 + number2;
      break;
    case 'subtração':
      result = number1 - number2;
      break;
    case 'multiplicação':
      result = number1 * number2;
      break;
    case 'divisão':
      result = number1 / number2;
      break;
    default:
      result = null;
  }

  if (result != null) {
    print('O resultado da operação $operator é $result');
  } else {
    print('Operação inválida');
  }
}

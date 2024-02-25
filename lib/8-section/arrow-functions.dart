num sum() => 5 + 3;

num sumTwoNumbers(num number1, num number2) => number1 + number2;

bool numberIsEven(num number) => number % 2 == 0;
void main(List<String> args) {
  // Funções arrow possuí o retorno ímplicito

  num result = sum();

  print('Resultado da soma: $result');

  num resultSumTwoNumber = sumTwoNumbers(18, 27);

  print('Resultado de resultSumTwoNumber: $resultSumTwoNumber');

  bool isEven = numberIsEven(3);

  if (isEven) {
    print('O número é par');
  } else {
    print('O número é ímpar');
  }
}

void main(List<String> args) {
  num number1 = 1024;

  // Usando if-else
  if (number1 % 2 == 0) {
    print('$number1 é um numero par');
  } else {
    print('$number1 é um número ímpar');
  }

  // Usando ternário
  String isPrime = number1 % 2 == 0
      ? '$number1 é um numero par'
      : '$number1 é um número ímpar';
  print('Valor de isPrime: $isPrime');

  num year = 2024;

  String isLeapYear = (year % 4 == 0 || year % 400 == 0 && year % 100 != 0)
      ? 'é bissexto'
      : 'não é bissexto';

  print('O ano de $year $isLeapYear');
}

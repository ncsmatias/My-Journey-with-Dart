void main(List<String> args) {
  num number1 = 1024;

  // Estrutura if-else
  if (number1 % 2 == 0) {
    print('$number1 é um numero par');
  } else {
    print('$number1 é um número ímpar');
  }

  num age = 20;

  // Sem utilizar chaves para delimitar o bloco
  if (age >= 21)
    print('Maior de idade');
  else
    print('Menor de idade');

  String gender = 'M';

  // Estrutura if-else aninhada
  if (age >= 21 && gender == 'M') {
    print('Homem e maior de idade');
  } else if (age >= 21 && gender == 'M') {
    print('Homem e menor de idade');
  } else if (age >= 21 && gender == 'F') {
    print('Mulher e maior de idade');
  } else {
    print('Mulher e menor de idade');
  }
}

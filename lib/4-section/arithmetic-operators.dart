void main(List<String> args) {
  num number1 = 2.71828;
  num number2 = 3.1415;
  // Operadores Aritméticos

  // Operador de adição (+)
  num sum = number1 + number2;
  print('A soma de number1 e number2 é: $sum');

  // Operador de subtração (-)
  num sub = number1 - number2;
  print('A subtração de number1 e number2 é: $sub');

  // Operador de multiplicação (*)
  num mult = number1 * number2;
  print('A multiplicação de number1 pelo number2 é: $mult');

  // Operador de divisão (/)
  num div = number1 / number2;
  print('A divisão de number1 pelo number2 é: $div');

  // Operador de resto de divisão (%)
  num mod = number1 % number2;
  print('O resto da divisão de number1 pelo number2 é: $mod');

  num remainder = number1.remainder(number2);
  print(
      'O resto da divisão de number1 pelo number2 utilizando remainder: $remainder');

  // Operadore de divisão, retornando um resultado inteiro (~/)
  num divInt = number1 ~/ number2;
  print('Resultado inteiro da divisão de number1 pelo number2: $divInt');

  // Operadores de Incremento

  // Operador de incremento prefixado (++): incrementa 'number1' antes de usá-lo na expressão
  ++number1;
  print('number1 incrementado de 1: $number1');

  // Operador de incremento posfixado (++): usa o valor original de 'number1' na expressão, depois incrementa
  num number3 = number1++;
  print('Valor de number3: $number3');
  print('number1 incrementado de 1: $number1');

  // Operadores de Decremento

  // Operador de decremento prefixado (++): decrementa 'number1' antes de usá-lo na expressão
  --number1;
  print('number1 decrementado de 1: $number1');

  // Operador de decremento posfixado (++): usa o valor original de 'number1' na expressão, depois decrementa
  num number4 = number1--;
  print('Valor de number3: $number4');
  print('number1 decrementado de 1: $number1');

  // Operadores de Atribuição

  // Operador de atribuição (=)
  num number5 = 5;
  print('Valor de number5: $number5');

  // Operador de atribuição de soma (+=)
  number5 += 10; // Equivale a number5 = number5 + 10
  print('Resultado da operação de atribuição de soma: $number5');

  // Operador de atribuição de subtração (-=)
  number5 -= 10; // Equivale a number5 = number5 - 10
  print('Resultado da operação de subtração de subtração: $number5');

  // Operador de atribuição de multiplicação (*=)
  number5 *= 10; // Equivale a number5 = number5 * 10
  print('Resultado da operação de atribuição de multiplicação: $number5');

  // Operador de atribuição de divisão (/=)
  number5 /= 10; // Equivale a number5 = number5 /= 10
  print('Resultado da operação de atribuição de divisão: $number5');

  // Operador de atribuição de resto (%=)
  number5 %= 2; // Equivale a number5 = number5 %= 2
  print('Resultado da operação de atribuição de resto: $number5');

  // Operador de atribuição de divisão inteira (~/=)
  number5 = 5;
  number5 ~/= 2; // Equivale a number5 = number5 ~/= 2
  print('Resultado da operação de atribuição de divisão inteira: $number5');

  // Operadores de Assignação

  // Operador de coalescência de nulo:
  // Ele é utilizado para atribuir um valor a uma variável somente se essa variável for nula.
  // Caso contrário, o valor atual da variável é mantido, e a expressão à direita não é avaliada.
  var variableNull = null;

  variableNull ??= number1 +
      number2 +
      number3 +
      number4 +
      number5; // Equivale à variableNull = variableNull ?? number1 + number2 + number3 + number4 + number5
  print('Valor de variableNull: $variableNull');
}

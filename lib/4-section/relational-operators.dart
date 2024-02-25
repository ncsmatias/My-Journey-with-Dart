void main(List<String> args) {
  num number1 = 2.71828;
  num number2 = 3.1415;

  // Operador de igualdade (==)
  bool equality = number1 == number2;
  print('number1 é igual a number2: $equality');

  // Operador maior ou igual a (>=)
  bool greaterThanOrEqual = number1 >= number2;
  print('number1 é igual ou maior que number2: $greaterThanOrEqual');

  // Operador menor ou igual a (<=)
  bool lessThanOrEqual = number1 <= number2;
  print('number1 é menor ou maior que number2: $lessThanOrEqual');

  // Operador maior (>)
  bool greaterThan = number1 > number2;
  print('number1 é maior que number2: $greaterThan');

  // Operador menor (<)
  bool lessThan = number1 < number2;
  print('number1 é menor que number2: $lessThan');

  // Operador diferente (!=)
  bool differentFrom = number1 != number2;
  print('number1 é diferente de number2: $differentFrom');

  // Utilizando operadores relacionais com operadores lólgicos
  bool logicalOperator = (number1 <= number2) && (number1 != number2);
  print('Valor de logicalOperator: $logicalOperator');
}

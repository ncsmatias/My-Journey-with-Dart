// ignore_for_file: dead_code

void main(List<String> args) {
  bool boolTrue = true;
  bool boolFalse = false;

  print('Valores de boolTrue: $boolTrue e boolFalse: $boolFalse');

  // Operador de negação (!)
  bool boolNotTrue = !boolTrue;
  bool boolNotFalse = !boolFalse;

  print(
      'Valores de negação (!) de boolTrue: $boolNotTrue e boolFalse: $boolNotFalse');

  // Operador OU (||)
  bool boolTrueOrTrue = boolTrue || boolTrue;
  print('Valor da operação OU entre dois valores verdadeiros: $boolTrueOrTrue');

  bool boolFalseOrFalse = boolFalse || boolFalse;
  print('Valor da operação OU entre dois valores falsos: $boolFalseOrFalse');

  bool boolTrueOrFalse = boolTrue || boolFalse;
  print(
      'Valor da operação OU entre um valor verdadeiro e um falso: $boolTrueOrFalse');

  // Operador E (&&)
  bool boolTrueAndTrue = boolTrue && boolTrue;
  print('Valor da operação E entre dois valores verdadeiros: $boolTrueAndTrue');

  bool boolFalseAndFalse = boolFalse && boolFalse;
  print('Valor da operação E entre dois valores falsos: $boolFalseAndFalse');

  bool boolTrueAndFalse = boolTrue && boolFalse;
  print(
      'Valor da operação E entre um valor verdadeiro e um falso: $boolTrueAndFalse');

  // Lei De Morgan

  // Lei de De Morgan para a Negação de uma Conjunção: !(A AND B) = !A OR !B
  bool resultDeMorgan1 = !(boolTrue && boolFalse) == (!boolTrue || !boolFalse);
  print(
      'Resultado da lei de De Morgan para a Negação de uma Conjunção: $resultDeMorgan1');

  // Lei de De Morgan para a Negação de uma Disjunção: !(A OR B) = !A AND !B
  bool resultDeMorgan2 = !(boolTrue || boolFalse) == (!boolTrue && !boolFalse);
  print(
      'Resultado da lei de De Morgan para a Negação de uma Disjunção:: $resultDeMorgan2');
}

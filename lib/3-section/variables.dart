void main(List<String> args) {
  // Declaração de váriavel com a palavra-chave var
  var num1, num2, soma;

  num1 = 10;
  num2 = 15;
  soma = num1 + num2;

  print('A soma de $num1 + $num2 é: $soma');

  var animal1, animal2, animal3;

  animal1 = 'Cachorro';
  animal2 = 'Gato';
  animal3 = 'Galinha';

  print('São animais: $animal1, $animal2 e $animal3');

  num1 = 'Tartaruga';
  print('É um animal $num1');

  animal1 = 3.1415;
  print('Valor de pi é: $animal1');

  /*
    Quando você utiliza a palavra-chave 'var' em Dart, a linguagem permite que a variável 
    mude de tipo durante sua vida útil. Isso é conhecido como "inferência de tipo dinâmico". 
    O Dart infere automaticamente o tipo da variável com base no valor atribuído a ela. Entretanto, 
    é uma prática recomendada declarar explicitamente o tipo da variável para evitar confusões e 
    garantir uma programação mais segura.
  */

  // Tipos de Dados Primitivos:
  String name, lastname;

  name = 'Lars';
  lastname = 'Bak';

  print('Nome completo: $name $lastname');

  // name = 10; Erro: Não é possível atribuir um valor do tipo 'int' a uma variável do tipo 'String'.

  int age;

  age = 43;

  print('Idade: $age');

  // age = 'Kasper Lund'; Erro: Não é possível atribuir um valor do tipo 'String' a uma variável do tipo 'int'.

  double height, weight;

  height = 1.80;
  weight = 90;

  print('$name possuí $height m de altura e pesa $weight kg');

  // age = height; Erro: Um valor do tipo 'double' não pode ser atribuído a uma variável do tipo 'int'.

  bool booleanTrue, booleanFalse;

  booleanTrue = true;
  booleanFalse = false;

  print('booleanTrue: $booleanTrue');
  print('booleanFalse: $booleanFalse');

  // Variável Dinâmica (dynamic)
  dynamic dynamicVariable;

  dynamicVariable = 3.1415;
  print('Valor de pi: $dynamicVariable');

  dynamicVariable = 'Cavalo';
  print('O animal é: $dynamicVariable');

  dynamicVariable = true;
  print('É verdadeiro: $dynamicVariable');

  // Constantes
  const euler = 2.71828;

  print('Constante de euler: $euler');

  // euler = 3.1415; Erro: não é possível atribuir à variável const 'euler'.
}

// Funções sem retorno
void sumToNumbers() {
  print('Função void (sem retorno)');

  num number1, number2;

  number1 = 3.1415;
  number2 = 2.718;

  var sum = number1 + number2;

  print('A soma é $sum');

  void increment() {
    sum++;

    print('Incrementa 1 no valor da soma: $sum');
  }

  // A função deve ser chamada depois da sua declaração e nunca antes, pois gera um erro
  increment();

  // A função increment() só pode ser utilizada dentro da função sumToNumbers(), pois
  // ela está dentro do escopo local da função sumToNumbers()
}

// Funções com parametros
void sumToNumbers2(num number1, num number2) {
  var sum = number1 + number2;
  print('A soma é $sum');
}

void isAPrimeNumber(num number) {
  bool isPrime = true;
  for (var index = 2; index < number; index++) {
    if (number % index == 0) {
      isPrime = false;
      break;
    }
  }

  print('O número $number é um numero primo: $isPrime');
}

// No dart não precisamos especificar o void
fahrenheitToCelsius(num fahrenheit) {
  num celsius;

  celsius = (fahrenheit - 32) * (5 / 9);

  print(
      '$fahrenheit fahrenheit equivale a ${celsius.toStringAsFixed(2)} celsius');
}

// Funções com retorno
num sumArray(List<num> numbers) {
  num sum = 0;

  for (num number in numbers) {
    sum += number;
  }

  return sum;
}

// No dart se não especificarmos o tipo de retorno a função será definida com o tipo de retonro dynamic
multArray(List<num> numbers) {
  num sum = 1;

  for (num number in numbers) {
    sum *= number;
  }

  return sum;
}

void main(List<String> args) {
  sumToNumbers();

  // increment() -> Erro, pois a função não existe nesse escopo

  // Essa função recebe como argumento dois numeros
  sumToNumbers2(3, 5);

  // Essa função recebe apenas um argumento
  isAPrimeNumber(9);

  fahrenheitToCelsius(127);

  // Agora precisamos armazenar o valor retornado em uma variável
  num sum = sumArray([3, 1, 4, 7, 10]);
  print('A soma dos elementos do array é: $sum');

  num mult = multArray([3, 1, 4, 7, 10]);
  print('A multiplicação dos elementos do array é: $mult');
}

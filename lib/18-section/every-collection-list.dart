// ignore_for_file: file_names

/*
  * Every
    - Faz o teste em todos os elementos com o operador lógico && e retorna true ou false
*/

void main(List<String> args) {
  List<num> numbers = [2, 4, 6, 8, 10, 12, 14, 16];

  bool isEveryEven = numbers.every((element) => element % 2 == 0);

  if (isEveryEven) {
    print('Em $numbers todos os elementos são pares');
  } else {
    print('Em $numbers contém pelo menos um elemento ímpar');
  }
}

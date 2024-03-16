/*
  * Future
    - É um objeto que retornar um valor ou erro assíncrono (tem um delay)
*/

void counter() async {
  int seconds = 3;

  Future.delayed(Duration(seconds: seconds),
      () => print('Deu $seconds s. O método foi finalizado'));
}

void main(List<String> args) {
  counter();
}

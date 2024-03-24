/*
  * Conceito
    - O temporizador leva dois agurmentos, uma diração e uma função para ser executada
    - A duração deve ser uma instância de duration
*/

import 'dart:async';

void main(List<String> args) {
  Timer.run(() => print('Executado com run as ${DateTime.now()}'));

  Timer(Duration(seconds: 3), () => print('Executado ${DateTime.now()}'));

  Timer.periodic(Duration(seconds: 2),
      (timer) => print('${timer.tick} - Executando ${DateTime.now()}'));
}

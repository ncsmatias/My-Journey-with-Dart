/*
  * Const
    - É uma variável inicialida em tempo de compilação com valor constante
    - Ao nível de classe deve ser estática para ficar disponível na classe
    - Em coleções const todo o conteúdo deve ser constante
  * Objeto imutável
    - O construtor deve ser constante
    - As variáveis devem ser final ou static const
 */

void main(List<String> args) {
  // Objeto em queda livre leva 5s para chegar ao solo! Qual a velocidade máxima em queda livre?
  const double gravity = 9.8;
  double time =
      5; // Um valor constante. Isso significa que o valor deve ser conhecido antes da execução do programa
  double speed = time * gravity;

  print('Velocidade máxima: $speed');

  final List<num> finalNumbers = [5, 4, 3, 2, 5];
  finalNumbers.add(10); // Permitido
  print(finalNumbers);

  const List<num> constNumbers = [11, 2, 3, 30, 50];
  // constNumbers.add(21); // Erro: Dart não permite alterações em coleções com const
  print(constNumbers);

  for (int index = 0; index <= 10; index++) {
    // const counter = index; Erro: Variáveis ​​Const devem ser inicializadas com um valor constante.

    const increment = 1;
    final counter = index;

    print(
        'Valor de counter: $counter; Quantidade de loops: ${counter + increment}');
  }

  Area area = Area('circulo', 12.23);

  double circle = area.circleArea();

  print('A área do circulo é de: $circle');
  print('Valor de pi: ${Area.pi}');
}

// Objeto imutável
class Area {
  static const double pi =
      3.1415; // Uma variável const deve obrigatóriamente ser static
  final String objeto;
  final double raio;

  const Area(this.objeto, this.raio);

  double circleArea() {
    return pi * (raio * raio);
  }
}

/*
 * Static 
    A variável estática fica disponível na propria classe em de suas instancias.
    Em métodos estáticos deve usar apenas as variáveis estáticas da classe
    Variáveis e métodos estáticos podem ser acessadas sem instanciar um objeto da classe 
 */

void main(List<String> args) {
  // Acessando a variável estática pi
  print('O valor de pi é ${Area.pi}');

  // Calculando a área de um circulo com o método estático circleArea
  double area = Area.circleArea(10);

  print('A área do circulo é ${area.toStringAsFixed(2)}');
}

class Area {
  static double pi = 3.1415;

  static double circleArea(double r) {
    return pi * (r * r);
  }
}

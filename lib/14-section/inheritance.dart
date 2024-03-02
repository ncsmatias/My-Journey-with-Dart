/*
  * Herança
    - Uma classe pode ter apenas uma herança

  * Construtores
    - Devem obedecer a ordem dos parâmetros
    - Parametros default devem ser nomeados ou posicionados
    - Tratamento e tipagem dos parâmetros devem ser feitos na classe herdeira
*/

void main(List<String> args) {
  Car car = Car(modelName: 'Mustang', brand: 'Ford');

  print('O modelo do carro é ${car.modelName}');

  // Acessando os atributos e métodos herdados
  print('A marca do carro ${car.brand}');
  car.honk();

  Motorcycle motorcycle =
      Motorcycle(modelName: 'Nightster Special', brand: 'Harley-Davidson');

  print('O modelo da moto ${motorcycle.modelName}');

  // Acessando os atributos e métodos herdados
  print('A marca da moto ${motorcycle.brand}');
  motorcycle.honk();

  motorcycle.turnOnMotorcycle();

  // Polimorfismo: referências de tipo base podem apontar para objetos derivados
  Vehicle vehicle1 = car;
  Vehicle vehicle2 = motorcycle;

  print('Marca de vehicle1: ${vehicle1.brand}');
  print('Marca de vehicle2: ${vehicle2.brand}');
}

class Vehicle {
  String brand;

  Vehicle({required this.brand});

  void honk() {
    print('Vruum Vruuum!');
  }
}

// A classe Car herda os atributos e métodos de Vehicle
class Car extends Vehicle {
  String modelName;

  Car({required this.modelName, required String brand}) : super(brand: brand);

  void turnOnCar() {
    super.honk();
  }
}

// A classe Motorcycle herda os atributos e métodos de Vehicle
class Motorcycle extends Vehicle {
  String modelName;

  Motorcycle({required this.modelName, required String brand})
      : super(brand: brand);

  void turnOnMotorcycle() {
    print('Ligando a moto');
    super.honk();
  }
}

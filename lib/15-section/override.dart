// ignore_for_file: unnecessary_this

/*
 * Override (Sobreescrita)
  - Em Dart temos sobrescrita dos métodos da classe pai na classe herdeira

 * Construtores
  - Super se refere ao construtor da classe herdeira

 * Classes abstratas
  - Não podem ser instânciadas, servem apenas como modelos
  - Métodos sem escopo devem ser sobrescritos nas classes herdeiras
*/

void main(List<String> args) {
  // Animal animal = Animal.vertebrates(age: 10, domestic: false);
  // Erro: Uma classe abstrata não pode ser instânciada

  Horse horse = Horse(
    name: 'Pé de pano',
    race: 'Quarto de Milha',
    sex: 'M',
    numberOfLegs: 4,
    age: 10,
    domestic: true,
  );

  horse
    ..sleep()
    ..feed()
    ..walk()
    ..neigh();

  // Chama o método toString que foi sobrescrito
  print(horse);
}

abstract class Animal {
  int age;
  bool domestic;
  late bool column;

  Animal.vertebrates({required this.age, required this.domestic}) {
    this.column = true;
  }

  Animal.invertebrates({required this.age, required this.domestic}) {
    this.column = false;
  }

  void sleep() {
    print('Dorme como um animal');
  }
}

abstract class Mammals extends Animal {
  String sex;
  String species;
  int numberOfLegs;
  late bool land;
  late bool aquatic;
  late bool aerial;

  Mammals.landAnimal({
    required this.sex,
    required this.species,
    required this.numberOfLegs,
    required int age,
    required bool domestic,
  }) : super.vertebrates(age: age, domestic: domestic) {
    this.land = true;
    this.aquatic = false;
    this.aerial = false;
  }

  Mammals.aquaticAnimal({
    required this.sex,
    required this.species,
    required this.numberOfLegs,
    required int age,
    required bool domestic,
  }) : super.vertebrates(age: age, domestic: domestic) {
    this.land = false;
    this.aquatic = true;
    this.aerial = false;
  }

  Mammals.aerialAnimal({
    required this.sex,
    required this.species,
    required this.numberOfLegs,
    required int age,
    required bool domestic,
  }) : super.vertebrates(age: age, domestic: domestic) {
    this.land = false;
    this.aquatic = false;
    this.aerial = true;
  }

  void feed() {
    print('Se alimenta como um: ');
  }

  void walk(); // Métodos sem espoco devem ser sobrescritos na classe herdeira
}

class Horse extends Mammals {
  String name;
  String race;

  Horse({
    required this.name,
    required this.race,
    required String sex,
    required int numberOfLegs,
    required int age,
    required bool domestic,
  }) : super.landAnimal(
          sex: sex,
          species: 'Equus ferus caballus',
          numberOfLegs: numberOfLegs,
          age: age,
          domestic: domestic,
        );

  @override // Sobrescreve o método sleep herdado
  void sleep() {
    print('${this.name} dorme como um cavalo...');
  }

  @override
  void feed() {
    print('${this.name} se alimenta como um ${super.species}');
  }

  @override
  void walk() {
    print('${this.name} anda como um cavalo');
  }

  void neigh() {
    print('${this.name} relincha como um cavalo');
  }

  @override
  String toString() {
    // Sobrescreve o método toString da classe Object de Dart
    // Toda classe herda implicítamente a classe Object em Dart
    return '''
        name: ${this.name},
        race: ${this.race},
        sex: ${super.sex},
        age: ${super.age},
        domestic: ${super.domestic}
        number_of_legs: ${super.numberOfLegs},
        specie: ${super.species},
        vertebrate: ${super.column},
        land: ${super.land},
        aquatic: ${super.aquatic},
        aerial: ${super.aerial}
      ''';
  }
}

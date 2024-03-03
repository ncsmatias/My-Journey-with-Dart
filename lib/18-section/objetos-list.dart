// ignore_for_file: unnecessary_this

import 'dart:math';
// Instalamos um biblioteca para facilitar a criação dos dados da a classe Person
// Para saber mais acesse: https://pub.dev/packages/faker
import 'package:faker/faker.dart';

class Person {
  String name;
  String email;
  int age;
  double height;
  double weight;

  Person({
    required this.name,
    required this.email,
    required this.age,
    required this.height,
    required this.weight,
  });

  @override
  String toString() {
    return 'name: ${this.name}, email: ${this.email}, age: ${this.age}, height: ${this.height}, weight: ${this.weight}';
  }
}

void main(List<String> args) {
  Faker faker = Faker();
  List<Person> people = [];
  int amount = 15;
  for (int index = 0; index < amount; index++) {
    Person person = Person(
      name: faker.person.name(),
      email: faker.internet.email(),
      age: Random().nextInt(65) + 18,
      height: Random().nextDouble() + 1,
      weight: Random().nextDouble() * 200,
    );

    people.add(person);
  }

  people.sort((a, b) => a.age.compareTo(b.age));
  people.forEach(print);

  num weightsSum = people
      .map((person) => person.weight)
      .reduce((previous, current) => previous + current);
  num weightsAverage = weightsSum / amount;
  print('A média dos pesos é: ${weightsAverage.toStringAsFixed(2)}');

  num ageSum = people
      .map((person) => person.age)
      .reduce((previous, current) => previous + current);
  num ageAverage = ageSum / amount;
  print('A média das idades é: ${ageAverage.toStringAsFixed(0)}');

  num heightSum = people
      .map((person) => person.height)
      .reduce((previous, current) => previous + current);
  num heightAverage = heightSum / amount;
  print('A média das alturas é: ${heightAverage.toStringAsFixed(2)}');
}

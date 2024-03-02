void main(List<String> args) {
  Dog beethoven = Dog(name: 'Beethoven', sex: 'M', age: 7);
  Cat garfield = Cat(name: 'Garfield', sex: 'M', age: 3);

  beethoven.bark();
  garfield.meow();

  beethoven.run();
  garfield.sleep();

  beethoven.play();
}

abstract class Animal {
  String name;
  String sex;
  int age;

  Animal({required this.name, required this.sex, required this.age});
}

class Dog extends Animal with Actions {
  Dog({required String name, required String sex, required int age})
      : super(name: name, sex: sex, age: age);

  void bark() {
    print('${super.name} está latindo');
  }

  @override
  void play() {
    print('${super.name} está brincando');
  }
}

class Cat extends Animal with Actions {
  Cat({required String name, required String sex, required int age})
      : super(name: name, sex: sex, age: age);

  void meow() {
    print('${super.name} está miando');
  }

  @override
  void play() {
    print('${super.name} está brincando');
  }
}

mixin Actions on Animal {
  run() {
    print('está correndo');
  }

  feed() {
    print('está comendo');
  }

  sleep() {
    print('está dormindo');
  }

  // Deverá ser implementado na classe
  play();
}

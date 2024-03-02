// ignore_for_file: unnecessary_this

/*
  * Interface
    - Interfaces são modelos para implementar métodos e atributos em nossas classes
  
  * Regras
    - Ao implementar uma interface devemos utilizar todos os métodos e atributos
    - No Dart não tem sintaxe para interfaces, pode ser uma classe concreta ou abstrata
    - Pode implementar mais de uma interface e deve sobrescrever todos os métodos e atributos
*/

void main(List<String> args) {
  FrontEnd frontEndDeveloper = FrontEnd.developer(
    language: 'Javascript',
    position: 'Developer',
    homeOffice: true,
    name: 'Felipe',
    email: 'felipe@email.com',
    phoneNumber: '551140028922',
    country: 'Brasil',
    age: 21,
    salary: 5000.00,
  );

  FrontEnd frontEndDeveloper2 = FrontEnd.developer(
    language: 'HTML, CSS',
    position: 'UI/UX Developer',
    homeOffice: false,
    name: 'Maria',
    email: 'maria@email.com',
    phoneNumber: '551230045678',
    country: 'Brazil',
    age: 28,
    salary: 6000.00,
  );

  FrontEnd frontEndDeveloper3 = FrontEnd.developer(
    language: 'React, TypeScript',
    position: 'Senior Developer',
    homeOffice: true,
    name: 'Carlos',
    email: 'carlos@email.com',
    phoneNumber: '551112345678',
    country: 'Mexico',
    age: 35,
    salary: 8000.00,
  );

  FrontEnd frontEndDeveloper4 = FrontEnd.developer(
    language: 'Angular, JavaScript',
    position: 'Frontend',
    homeOffice: true,
    name: 'Isabella',
    email: 'isabella@email.com',
    phoneNumber: '551155556789',
    country: 'United States',
    age: 30,
    salary: 9000.00,
  );

  FrontEnd frontEndTechLead = FrontEnd.techLead(
    language: 'Javascript/Typescript',
    position: 'Teach Lead',
    homeOffice: false,
    name: 'Rodrigo',
    email: 'rodrigo@email.com',
    phoneNumber: '551140028922',
    country: 'EUA',
    age: 40,
    salary: 15000.00,
  );

  print('Salário atual: R\$${frontEndDeveloper.salary.toStringAsFixed(2)}');

  frontEndDeveloper.salaryAdjustment(100);
  print('Salário ajustado: R\$${frontEndDeveloper.salary.toStringAsFixed(2)}');

  print('Equipe de ${frontEndTechLead.name}: ${frontEndTechLead.teamFrontEnd}');

  frontEndTechLead.addFrontEndDeveloper(frontEndDeveloper);
  frontEndTechLead.addFrontEndDeveloper(frontEndDeveloper2);
  frontEndTechLead.addFrontEndDeveloper(frontEndDeveloper3);
  frontEndTechLead.addFrontEndDeveloper(frontEndDeveloper4);

  print('Nova equipe de ${frontEndTechLead.name}');
  for (FrontEnd frontEnd in frontEndTechLead.teamFrontEnd!) {
    print('${frontEnd.name} \t ${frontEnd.language} \t ${frontEnd.position}');
  }
}

abstract class Employee {
  String name;
  String email;
  String phoneNumber;
  String country;
  int age;
  double salary;
  bool active = true;

  Employee({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.country,
    required this.age,
    required this.salary,
  });

  void salaryAdjustment(int percent);

  void fired() {
    this.active = false;
  }
}

abstract class Developer {
  late String language;
  late String position;
  late bool homeOffice;

  void changePosition(String position);
}

abstract class Team {
  List<FrontEnd>? teamFrontEnd;

  void addFrontEndDeveloper(FrontEnd frontEnd);
}

// Quando implementamos uma interface temos que obrigatóriamente
// sobrescrever todos os atributos e métodos
// Podemos implementar mais de um interface na mesma classe
class FrontEnd extends Employee implements Developer, Team {
  @override
  String language;

  @override
  String position;

  @override
  bool homeOffice;

  @override
  List<FrontEnd>? teamFrontEnd;

  FrontEnd.developer({
    required this.language,
    required this.position,
    required this.homeOffice,
    required String name,
    required String email,
    required String phoneNumber,
    required String country,
    required int age,
    required double salary,
  }) : super(
          name: name,
          email: email,
          phoneNumber: phoneNumber,
          country: country,
          age: age,
          salary: salary,
        ) {
    this.teamFrontEnd = null;
  }

  FrontEnd.techLead({
    required this.language,
    required this.position,
    required this.homeOffice,
    required String name,
    required String email,
    required String phoneNumber,
    required String country,
    required int age,
    required double salary,
  }) : super(
          name: name,
          email: email,
          phoneNumber: phoneNumber,
          country: country,
          age: age,
          salary: salary,
        ) {
    this.teamFrontEnd = [];
  }

  @override
  void salaryAdjustment(int percent) {
    super.salary *= 1 + (percent / 100);
  }

  @override
  void changePosition(String position) {
    this.position = position;
  }

  @override
  void addFrontEndDeveloper(FrontEnd frontEnd) {
    if (teamFrontEnd == null) {
      return;
    }

    teamFrontEnd!.add(frontEnd);
  }
}

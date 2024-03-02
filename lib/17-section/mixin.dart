// ignore_for_file: unnecessary_this

/*
  * Mixin
    - Permite implementar métodos e atributos de outras classes
  
  * Regras
    - Devem ser implementados antes das interfaces
    - Podem ser implementados por classes concretas ou abstratas
    - Não pode implementar uma classe que extenda e extender de uma classe mixin
    - Pode implementar mais de um mixin, não é obrigatório usar todos métodos e atributos
    - As classes que possuem métodos iguais serão sobrescritos em ordem até a classe herdeira
  
  * ON
    - É obrigatório declarar sua classe como mixin
    - Restringe o uso do mixin as classes que extendem ou implementam a classe abstrata
*/

void main(List<String> args) {
  FrontEnd frontEnd1 =
      FrontEnd(language: 'Javascript', name: 'Joseph Cooper', salary: 3000);

  FrontEnd frontEnd2 =
      FrontEnd(language: 'PHP', name: 'Murph Cooper', salary: 4500);

  FrontEnd frontEnd3 =
      FrontEnd(language: 'Dart', name: 'John Brand', salary: 4000);

  FrontEnd frontEnd4 =
      FrontEnd(language: 'Javascript', name: 'Tom Cooper', salary: 6000);

  FrontEndManager frontEndManager1 = FrontEndManager(
      language: 'Javascript', name: 'Amelia Brand', salary: 15000);

  FrontEndManager frontEndManager2 =
      FrontEndManager(language: 'Dart/PHP', name: 'Romilly', salary: 15000);

  frontEndManager1.addEmployee(frontEnd1);
  frontEndManager1.addEmployee(frontEnd3);

  print('Equipe do (a) ${frontEndManager1.name}:');
  for (Employee employee in frontEndManager1.employees) {
    print(employee.name);
  }
  print('\n');

  frontEndManager2.addEmployee(frontEnd2);
  frontEndManager2.addEmployee(frontEnd4);

  print('Equipe do (a): ${frontEndManager2.name}');
  for (Employee employee in frontEndManager2.employees) {
    print(employee.name);
  }

  frontEndManager1.addTask('Bug na tela de login');
  frontEndManager1.addTask('Refatorar tela de lista de produtos');
  print('\n');
  print('Tarefas do (a) ${frontEndManager1.name}:');
  for (String task in frontEndManager1.tasks) {
    print(task);
  }

  print('\n');
  frontEndManager1.removeAllTasks();
  print('Tarefas do (a) ${frontEndManager1.name} após finaliza-las:');
  if (frontEndManager1.tasks.isEmpty) {
    print('Nenhuma tarefa');
  } else {
    for (String task in frontEndManager1.tasks) {
      print(task);
    }
  }
}

// Restringe o uso apenas as classes que herdam Manager
mixin Team on Manager {
  List<Employee> employees = [];

  void addEmployee(Employee employee);
  void removeEmployee(Employee employee);
}

abstract class Task {
  late final List<String> tasks;

  void addTask(String task);
  void removeTask(String task);
  void removeAllTasks();
}

abstract class Employee {
  String name;
  double salary;
  bool active = true;

  Employee({
    required this.name,
    required this.salary,
  });

  void salaryAdjustment(int percent);

  void fired() {
    this.active = false;
  }
}

abstract class Manager extends Employee implements Task {
  @override
  List<String> tasks = [];

  Manager({
    required String name,
    required double salary,
  }) : super(name: name, salary: salary);

  @override
  void salaryAdjustment(int percent) {
    super.salary *= 1 + (percent / 100) + 0.4;
  }

  @override
  void addTask(String task) {
    this.tasks.add(task);
  }

  @override
  void removeAllTasks() {
    this.tasks.clear();
  }

  @override
  void removeTask(String task) {
    this.tasks.remove(task);
  }
}

class FrontEndManager extends Manager with Team {
  String language;

  FrontEndManager({
    required this.language,
    required String name,
    required double salary,
  }) : super(name: name, salary: salary);

  @override
  void addEmployee(Employee employee) {
    employees.add(employee);
  }

  @override
  void removeEmployee(Employee employee) {
    employees.remove(employee);
  }
}

class FrontEnd extends Employee {
  String language;

  @override
  List<String> tasks = [];

  FrontEnd({
    required this.language,
    required String name,
    required double salary,
  }) : super(name: name, salary: salary);

  @override
  void salaryAdjustment(int percent) {
    super.salary *= 1 + (percent / 100);
  }
}

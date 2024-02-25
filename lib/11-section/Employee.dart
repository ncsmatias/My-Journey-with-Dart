class Employee {
  late int _id;
  late String _name;
  late String _lastname;
  late String _employeePosition;
  late double _salary;

  Employee(int id, String name, String lastname, String employeePosition,
      double salary) {
    this._id = id;
    this._name = name;
    this._lastname = lastname;
    this._employeePosition = employeePosition;
    this._salary = salary;
  }

  // Modificadores de acesso são usados para proteger atríbutos e métodos da classe
  // Get é usado para acessar e Set é usado para alterar
  // Métodos ou atríbutos com underline (_) são privados Ex.: _salary

  // getter padrão
  String get name {
    return _name;
  }

  // setter padrão
  set name(String name) {
    this._name = name;
  }

  String get lastname {
    return this._lastname;
  }

  set lastname(String lastname) {
    this._lastname = lastname;
  }

  String get employeePosition {
    return this._employeePosition;
  }

  set employeePosition(String employeePosition) {
    this._employeePosition = employeePosition;
  }

  double get salary {
    return this._salary;
  }

  set salary(double salary) {
    this._salary = salary;
  }

  // getter customizado
  String get salaryFormated {
    return 'R\$ ${_salary.toStringAsFixed(2)}';
  }

  // setter customizado
  set raiseSalary(int percent) {
    this._salary += this._salary * (percent / 100);
  }

  info() {
    print(
        'ID: $_id; Name: $_name; Lastname: $_lastname; Position: $_employeePosition; Salary: $_salary');
  }
}

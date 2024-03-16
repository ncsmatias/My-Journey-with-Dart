void main(List<String> args) {
  List<Employee> employees = [
    Employee(name: "Alice", id: "001", department: "Human Resources"),
    Employee(name: "Bob", id: "002", department: "Finance"),
    Employee(name: "Charlie", id: "003", department: "Marketing"),
    Employee(name: "Diana", id: "004", department: "Sales"),
  ];

  Map<String, Employee> employeeMap = {};

  // Preenchendo o mapa com os funcionários
  for (var employee in employees) {
    employeeMap[employee.id] = employee;
  }

  // Acessando e imprimindo detalhes de um funcionário pelo ID
  String employeeIdToFind = "002";
  if (employeeMap.containsKey(employeeIdToFind)) {
    Employee foundEmployee = employeeMap[employeeIdToFind]!;
    print('Employee found: $foundEmployee');
  } else {
    print('Employee with ID $employeeIdToFind not found.');
  }
}

class Employee {
  String name;
  String id;
  String department;

  Employee({
    required this.name,
    required this.id,
    required this.department,
  });

  @override
  String toString() {
    return 'Name: $name, ID: $id, Department: $department';
  }
}

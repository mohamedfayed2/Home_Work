void main() {
  FullTimeEmployee fullTime = FullTimeEmployee('Mohamed', 101, 3000, 500);
  PartTimeEmployee partTime = PartTimeEmployee('Ahmed', 102, 40, 20);

  print(fullTime);
  print(partTime);
}

class Employee {
  String name;
  int id;
  double salary;

  Employee(this.name, this.id, this.salary);

  double calculateSalary() {
    return salary;
  }

  @override
  String toString() {
    return 'Employee: $name, ID: $id, Salary: \$${calculateSalary().toStringAsFixed(2)}';
  }
}

class FullTimeEmployee extends Employee {
  double bonus;

  FullTimeEmployee(String name, int id, double salary, this.bonus)
      : super(name, id, salary);

  @override
  double calculateSalary() {
    return salary + bonus;
  }
}

class PartTimeEmployee extends Employee {
  int hoursWorked;
  double hourlyRate;

  PartTimeEmployee(String name, int id, this.hoursWorked, this.hourlyRate)
      : super(name, id, 0);

  @override
  double calculateSalary() {
    return hoursWorked * hourlyRate;
  }
}

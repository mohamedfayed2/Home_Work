void main() {
  Person Mohamed = Person(age: 17, name: "Mohamed", isStudent: true);
  Mohamed.printPerson();
}

class Person {
  int? age;
  String? name;
  bool? isStudent;
  Person({this.age, this.name, this.isStudent});
  void printPerson() {
    print("Name: $name, Age: $age, Is Student: $isStudent");
  }
}

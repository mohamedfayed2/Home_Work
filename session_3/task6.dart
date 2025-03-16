void main() {
  Map<String, dynamic> student = {"name": "Mohamed", "age": 17, "grade": "A"};
  print("Student Data: $student");

  student["school"] = "High School";
  print("Adding : $student");

  student["grade"] = "A+";
  print("Updating : $student");

  student.remove("age");
  print("After Removing Age: $student");

  print(" Student Details:\n");
  student.forEach((key, value) {
    print("$key: $value");
  });
}

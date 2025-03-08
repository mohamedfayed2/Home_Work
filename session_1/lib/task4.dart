//How can you declare a variable in Dart to store a person's age and ensure it can only hold integer values? Write the code.
import 'dart:io';

void main() {
  int? age;
  print("Please Enter The Number:");
  try {
    age = int.parse(stdin.readLineSync()!);
    print("Age = $age");
  } catch (Error) {
    print("Please Enter The Integer Number.");
  }
}

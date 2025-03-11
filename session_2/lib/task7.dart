import 'dart:io';

void main() {
  int marks;
  print("Enter the marks");
  marks = int.parse(stdin.readLineSync()!);
  if (marks >= 70) {
    print("Passed");
  } else {
    print("Failed");
  }
}

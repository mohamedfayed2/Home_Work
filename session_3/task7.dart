import 'dart:io';

void main() {
  stdout.write("Enter the num: ");
  int num = int.parse(stdin.readLineSync()!);

  if (num > 0) {
    print("Positive");
  } else if (num < 0) {
    print("Negative");
  } else {
    print("Zero");
  }
}

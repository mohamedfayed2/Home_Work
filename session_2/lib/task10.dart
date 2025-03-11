import 'dart:io';

void main() {
  int? number;
  number ?? "You did not enter the number";

  print(number);
  number = int.parse(stdin.readLineSync()!);

  print(number);
}

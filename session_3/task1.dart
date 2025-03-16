import 'dart:io';

void main() {
  double num1, num2, result;
  String c;
  stdout.write("Enter the num 1: ");
  num1 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter the num 2: ");
  num2 = double.parse(stdin.readLineSync()!);
  stdout.write("|-------------------------|\n");
  stdout.write("addition => +\n");
  stdout.write("subtraction => -\n");
  stdout.write("multiplication => *\n");
  stdout.write("division => /\n");
  stdout.write("|-------------------------|\n");
  stdout.write("Enter the operator: ");
  c = stdin.readLineSync()!;
  switch (c) {
    case '+':
      result = num2 + num2;
      stdout.write("addition =$result");
      break;
    case '-':
      result = num2 - num2;
      stdout.write("addition =$result");
      break;
    case '/':
      result = num2 / num2;
      stdout.write("addition =$result");
      break;
    case '*':
      result = num2 * num2;
      stdout.write("addition =$result");
      break;
  }
}

import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int num = int.parse(stdin.readLineSync()!);
  int Start = 10, End = 50;

  if (num >= Start && num <= End) {
    print("The number is there");
  } else {
    print("The number isn't there");
  }
}

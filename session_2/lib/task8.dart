import 'dart:io';

void main() {
  int Temperature;
  print("Enter the Temperature ");
  Temperature = int.parse(stdin.readLineSync()!);
  if (Temperature > 30) {
    print("It's hot!");
  } else if (Temperature >= 15 && Temperature <= 30) {
    print("It's warm");
  } else {
    print("It's cold");
  }
}

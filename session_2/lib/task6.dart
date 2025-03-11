import 'dart:io';

void main() {
  int secret = 01552739400;
  int password;
  print("Enter the password");
  password = int.parse(stdin.readLineSync()!);
  if (password == secret) {
    print("Access granted");
  } else {
    print("Access denied");
  }
}

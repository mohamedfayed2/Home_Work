void main() {
  print(reverseString('mohamed'));
}

String reverseString(String input) {
  return input.split('').reversed.join();
}

void main() {
  int num;
  for (num = 1; num <= 20; num++) {
    if (num % 3 == 0 && num % 5 == 0) {
      print("$num is FizzBuzz");
    } else if (num % 3 == 0) {
      print("$num is Fizz");
    } else if (num % 5 == 0) {
      print("$num is Buzz");
    } else {
      print("$num is not Fizz or Buzz");
    }
  }
}

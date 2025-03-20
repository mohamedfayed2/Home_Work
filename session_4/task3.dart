void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      print("${numbers[i]} is even");
    } else {
      print("${numbers[i]} is odd");
    }
  }
}

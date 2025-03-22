List<int> getPrimes(int start, int end) {
  if (start > end) {
    var temp = start;
    start = end;
    end = temp;
  }

  return List.generate(end - start + 1, (i) => start + i)
      .where((num) => isPrime(num))
      .toList();
}

bool isPrime(int number) {
  if (number < 2) return false;
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) return false;
  }
  return true;
}

void main() {
  print(getPrimes(10, 50));
}

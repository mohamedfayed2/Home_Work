void main() {
  print(sum([1, 2, 3, 4, 5]));
}

int sum(List<int> numbers) {
  int sum = 0;
  for (int num in numbers) {
    sum += num;
  }
  return sum;
}

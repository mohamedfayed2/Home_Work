void main() {
  sum(10, 20);
  sub(10, 20);
  mul(10, 20);
  div(10, 20);
}

void sum(int a, int b) => print(a + b);

void sub(int a, int b) => print(a - b);

void mul(int a, int b) => print(a * b);

void div(int a, int b) {
  if (b == 0) {
    print("invalid");
  } else {
    print(a / b);
  }
}

// If you need a variable that can hold any type of value and may change during execution, which data type would you use? Write a code example to show this.
void main() {
  dynamic age = 17;
  print("int=$age");
  age = 17.0;
  print("double=$age");
  age = "17";
  print("String=$age");
  age = true;
  print("bool=$age");
}

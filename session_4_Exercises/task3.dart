void main() {
  int year = 2024;
  print("$year is a leap year: ${isLeapYear(year)}");
}

bool isLeapYear(int year) =>
    (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);

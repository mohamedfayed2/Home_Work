void main() {
  calculateBonus(salary: 2000, yearsWorked: 5);
}

double calculateBonus({required salary, required int yearsWorked}) {
  double bonus = 0;
  if (yearsWorked >= 5) {
    bonus = salary * (10 / 100);
  } else {
    bonus = salary * (5 / 100);
  }
  print("Bonus: $bonus");
  return bonus;
}

void main() {
  print(getDayType(day: "saturday"));
  print(getDayType(day: "Monday"));
}

String getDayType({required day}) {
  if (day.toLowerCase() == "saturday" || day.toLowerCase() == "sunday") {
    return "Weekend";
  } else {
    return "Invalid Day";
  }
}

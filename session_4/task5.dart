void main() {
  print(names());
}

String names() {
  Set<String> names = {"Mohamed", "Samy", "Fares", "Mohamed"};
  return names.join("\n");
}

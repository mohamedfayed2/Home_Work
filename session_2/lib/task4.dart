void main() {
  Map<String, String> person = {
    'name': 'Alice',
    'age': '25',
    'city': 'New York'
  };

  print("Named Person =$person");

  person['city'] = 'Los Angeles';

  print("Named Person =$person");
}

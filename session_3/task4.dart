import 'dart:io';

void main() {
  stdout.write("Enter city name: ");
  String? city = stdin.readLineSync()!.toLowerCase();
  Weather(city);
}

void Weather(String? city) {
  List<String> weatherData = [
    "cairo, 25°C, 60% Humidity, Sunny",
    "dubai, 35°C, 50% Humidity, Hot",
    "london, 15°C, 80% Humidity, Rainy",
    "new york, 10°C, 70% Humidity, Cold"
  ];
  for (var data in weatherData) {
    if (data.toLowerCase().startsWith(city!.toLowerCase())) {
      print("Weather: $data");
      return;
    }
  }
  print("not found.");
}

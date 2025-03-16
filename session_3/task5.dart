void main() {
  Car car = Car(make: "Toyota", model: "Corolla");
  car.show();
}

class Car {
  String? model;
  String? make;
  Car({required String model, required String make}) {
    this.make = make;
    this.model = model;
  }
  void show() {
    print("Make: $make");
    print("Model: $model");
  }
}

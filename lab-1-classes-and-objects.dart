class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void soundVroom() {
    print("Vroom Vroom");
  }
  void printCarDetails() {
    print("Car Details - \nBrand: $brand, \nModel: $model, \nYear: $year");
  }
}

class ElectricCar extends Car {
  int batteryLife;

  ElectricCar(String brand, String model, int year, this.batteryLife)
      : super(brand, model, year);

  @override
  void printCarDetails() {
    super.printCarDetails();
    print("Life: $batteryLife");
  }
}

void main() {
  Car myCar = Car("vols wagen", "C3pO", 2024);
  myCar.printCarDetails();
  myCar.soundVroom();
  ElectricCar myElectricCar = ElectricCar("Tesla", "M-5", 2025, 90);
  myElectricCar.printCarDetails();
  myElectricCar.soundVroom();
}

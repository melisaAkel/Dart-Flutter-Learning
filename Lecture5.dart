class Car {
  String brand;
  int fuel;
  Car(this.brand, this.fuel);
}

extension CarExtension on Car {
  //it is like static method of Car. We can also use this function for Enums
//normally enums doesnt have any method inside but with extension you can give enums methods.
  void controlName() {
    print(this.brand); //we can acces all car attributes with this.
    print(this.fuel);
  }
}

enum CarModel {
  mercedes,
  BMW,
}

extension carModelExt on CarModel {
  void printTheBrand() {
    print(this.name);
  }

  bool isCheckName(String name) {
    //it can take parametr
    return this.name == name;
  }
}

extension StringUSerCheck on String? {
  //now we can add attribute to Strings
  bool isAdmin() {
    //this means if String is null make it (" ")
    return (this ?? " ") == "admin"; //"admin".isAdmin();//will return true
  }
}

void main(List<String> args) {
  final customerCarModel = CarModel.mercedes;
  //right now customerCarModel is enum it shouldnt have
  // method inside but since we extended it with Extension
  //we can use our method it will give us mercedes
  customerCarModel.printTheBrand(); //mercedes
  print("admin".isAdmin()); //we give String attribute
}

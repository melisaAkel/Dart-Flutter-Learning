//we have a car class
//we will have model, name, price.
//we might have city and condition(if customer will not tell this we will accept as 2nd hand)
class CarModel {
  final CarModels category;
  final String name;
  double money;
  String? city;
  bool isSecondHand;
  CarModel(this.category, this.name, this.money,
      {this.city,
      this.isSecondHand = true}); //if isSecondHand has value it wll not make it
  //true but if we didnt give any value it will automtically make it true

  String toString() => "$isSecondHand";
}

enum CarModels { bmw, mercedes, fiat, tesla }

void main() {
  CarModel b = CarModel(CarModels.mercedes, "mercedes a", 100000);
  print(b); //with my toString
  CarModel a =
      CarModel(CarModels.mercedes, "mercedes a", 100000, isSecondHand: false);
  print(a);

  final myCars = [
    //we can keep our car list also like this
    CarModel(CarModels.mercedes, "mercedes a", 100000, isSecondHand: false),
    CarModel(CarModels.bmw, "bmw a", 100),
    CarModel(CarModels.mercedes, "mercedes b", 300000, isSecondHand: false),
  ];
}

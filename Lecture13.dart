//we have a car class
//we will have model, name, price.
//we might have city and condition(if customer will not tell this we will accept as 2nd hand)
class CarModel {
  final CarModels category;
  final String name;
  double money;
  String? city;
  bool isSecondHand;
  get getCategory => this.category;

  get getName => this.name;

  get getMoney => this.money;

  set setMoney(money) => this.money = money;

  get getCity => this.city;

  set setCity(city) => this.city = city;

  get getIsSecondHand => this.isSecondHand;

  set setIsSecondHand(isSecondHand) => this.isSecondHand = isSecondHand;
  CarModel(this.category, this.name, this.money,
      {this.city,
      this.isSecondHand = true}); //if isSecondHand has value it wll not make it
  //true but if we didnt give any value it will automtically make it true

  String toString() =>
      "Model of car is $name and the condition of the car is $isSecondHand ";
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
    CarModel(CarModels.bmw, "bmw a", 100),
  ];
  //if any element of myCars has isSecondHand == true than this will become true
  bool isThereAny = myCars.any((element) => element.isSecondHand == true);
  print(isThereAny);
  bool isAnyBmw = myCars.any((element) => element.category == CarModels.bmw);
  print(isAnyBmw);
  var howManyBmw = myCars.where((element) => element.category == CarModels.bmw);
  ;
  print(howManyBmw);
  int howManyBmwWeHave =
      myCars.where((element) => element.category == CarModels.bmw).length;
  ;
  print(howManyBmwWeHave);

  //contains

  CarModel newCar = CarModel(CarModels.bmw, "bmw a", 100);
  bool isThereAnyGivenCar = myCars.contains(
      newCar); //if i have this car in the list it willl give true                                                                                    //no their referance is not same how can t give true to me to make it return true we can override == operator
  print(isThereAnyGivenCar);

  final whereMyCarisbmw = myCars.where((element) {
    return element.category == CarModels.bmw && element.isSecondHand == true;
  });
  print(whereMyCarisbmw);
  final whereMyCarisbmww = myCars.where((element) {
    return element.category == CarModels.bmw && element.isSecondHand == true;
  }).join();
  print(whereMyCarisbmww);
}

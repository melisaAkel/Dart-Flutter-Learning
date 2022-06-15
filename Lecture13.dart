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
      {this.city, this.isSecondHand = true});
}

enum CarModels { bmw, mercedes, fiat, tesla }

void main() {}

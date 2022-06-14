class Cat {
  String name;
  int speed;
  Cat(this.name, this.speed);

  int operator +(Cat otherCat) {
    return this.speed + otherCat.speed;
  }

  bool operator ==(Object object) {
    return object is Cat && this.speed == object.speed;
  }

  String toString() {
    //like java toString
    return "$speed";
  }
}

void main(List<String> args) {
  Cat tekir = Cat("tekir", 15);
  Cat vanCat = Cat("van cat", 15);
  print(tekir + vanCat);
  print(tekir);
  print(tekir == vanCat);
  //normally since it is not the same cat it should be false however we override the operator so right now since it just compares the speed it return true
}

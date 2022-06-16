class Cat {
  String name;
  int speed;
  int age;
  String breed;
  Cat(this.name, this.speed, this.age, this.breed);

  int operator +(Cat otherCat) {
    return this.speed + otherCat.speed;
  }

  bool operator ==(Object object) {
    return object is Cat && this.speed == object.speed;
  }

  void changeName(String name) {
    this.name = name;
  }

  void changeBreed(String name) {
    this.breed = name;
  }

  String toString() {
    //like java toString
    return "the cat name is $name and the cat speed is $speed and the cat age is $age and the cat breed is $breed";
  }
}

void main(List<String> args) {
  Cat tekir = Cat("tekir", 15, 10, "breed1");
  Cat vanCat = Cat("van cat", 15, 10, "breed2");
  print(tekir + vanCat);
  print(tekir);
  print(tekir == vanCat);
  //normally since it is not the same cat it should be false however we override the operator so right now since it just compares the speed it return true
}

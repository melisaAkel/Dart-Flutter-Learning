//                          Cascade
import 'Lecture7.dart';

void main() {
  Cat miaw = Cat("tekir", 10, 12, "breed 3");
  miaw.changeName("van cat");
  miaw.speed = 12;
  //this is also same
  //this is cascade after putting .. it will return my miaw object so when we need to change multiple variables on same object we can use this
  miaw
    ..changeName("van cat")
    ..speed = 12
    ..age = 10
    ..changeBreed("breed 4");
  print(miaw);
}

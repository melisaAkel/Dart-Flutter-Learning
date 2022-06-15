//                          Cascade
import 'Lecture7.dart';

void main(List<String> args) {
  Cat miaw = Cat("tekir", 10);
  miaw.changeName("van cat");
  miaw.speed = 12;
  //this is also same
  //this is cascade after putting .. it will return my miaw object so when we need to change multiple variables on same object we can use this
  miaw
    ..changeName("van cat")
    ..speed = 12;
}

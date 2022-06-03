import 'dart:io'; //to not go next line

void main() {
  print("Hello, world");

  //variables
  var name = "Ahsan Rao";
  print(name);

  int age = 23;
  String namee = "Rao Ahsan";
  double weight = 73.5;
  bool isMelisa = true;
  int stringLength = namee.length;
  print(addNumber(20, 23));

  double gpa = 2.7;
  if (gpa > 3) {
    print("gift");
  }

  stdout.write("will not go to next line");

  /*homework
  ****  calling a method in printing ****
  */
}

int addNumber(int n1, int n2) {
  return n1 + n2;
}

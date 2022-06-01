import 'dart:io'; //to not go next line

void main() {
  //main
  print("Hello World"); //print console
  var name = 'Melisa'; //var is general type of primitive not specific
  var number = 12;
  num numberr = 12;
  num numbered = 12.5; //this is bigger than double
  int numberrr = 12;
  print("mamamamma");
  double doubledNum = 12.5;
  String namee = "Melisa";

  print("are u okay with me?");
  int melisaLen = name.length; //length methods
  bool isTrue = true;
  print(name);
  print(
      "this will be also same with other: $namee"); // dolar sign is for calling onject int print line
  print("this is other way to do that like Java" + namee);
  print(
      "lets look function ${numberr + numbered} working"); //we can do our calculations like this
  stdout.write("will not go to next line");
  stdout.write("will not go to next line");
  stdout.write("will not go to next line \n");
  print("numbersssss");
  //print("this will give error: " + (numberrr + numberrr));

/*  void printInt(int aNum) {
    print(aNum);
  } */
  printInt(7); //calling functions
  if (number > 12) {
    print("it is bigger");
  } else if (numberr == 12) {
    print("even it is bigger i will not be printed because above is true");
  } else {
    print("AAAAAAAA");
  }

  switch (number) {
    case 3:
      print("i will be printed since number is : $number");
      break;
    case 7:
      print("i will be printed since number is : $number");
      break;
    /* case 12:
      print("i will be printed since number is : $number");
      break; */
    default: //when all the case is not true we will exacute default case
      print(
          "None of them is true so i am the one who will be printed since number is : $number");
  }

  List<int> moneys = [10, 15, 20]; //index are starting from the 0
  print("first person money is: ${moneys[0]}"); //it will give the desired index

  print(
      "first person money is: $moneys[0]"); //we cannot print in this form it will give whole list
}

void printInt(int aNum) {
  print(aNum);
}

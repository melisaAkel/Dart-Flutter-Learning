void main() {
  List<int> moneys = [10, 15, 20]; //index are starting from the 0
  List<String> names = ["ahsan", "melisa"]; // for string list
  print("first person money is: ${moneys[0]}"); //it will give the desired index

  print(
      "first person money is: $moneys[0]"); //we cannot print in this form it will give whole list
  int k = moneys.length;
  print(k);
  moneys.reversed; //it makes it iterator
  //moneys.reversed.toList()  -> this will make it again list(but it is a new list not ours so when we use a method of list our list will not change) and we will be able to use list features again
  print("I reversed orginal list : $moneys");
  moneys.reversed.toList();
  print("Nothing happened to me because new list revesed not me : $moneys");
  moneys.insert(2, 999999); //set method in java
  print(moneys);
  moneys.add(12); //similar with java
  moneys.sort();
  print(moneys);
  moneys.clear(); //to clear the list
  print(moneys);
  List<double> costumerMoney = List.generate(100, (index) {
    return index + 5.7;
  });
  print(costumerMoney);
  List<int> moneyOn = [0, 50, 100];
  for (int i = 0; i < moneyOn.length; i++) {
    print("money of costumer $i : ${moneyOn[i]}");
  }
  for (var item in moneyOn) {
    //iten is elements of the money list
    print(item);
  }
  print(moneys.contains(12));
  for (int item in moneyOn) {
    //iten is elements of the money list
    print(item);
  }
  Map<String, int> users = {"ahmet": 20, "veli": 12};
  print("Ahmet's money : ${users["ahmet"]}");
  for (var item in users
      .keys) //keys are the first ones in our case names. Values are second one in our case it is int
  {
    print(
        "${item} - ${users[item]}"); //second one will give the value it is similar with saying users["ahmet"];
  }
  for (int i = 0; i < users.length; i++) {
    print("${users.keys.elementAt(i)} -- ${users.values.elementAt(i)}");
  }
  Map<String, List<int>> vbBank = {
    //when i want to map with a list first initizlizing
    "ahmet": [100, 200, 300],
    "fatma": [7, 8, 9]
  };

  vbBank["mehmet"] = [30, 50]; //after adding new keys and lists
  vbBank["veli"] = [30];
  for (var item in vbBank.keys) {
    //items are keys for our list and vbBank[item] is a list
    for (var money in vbBank[item]!) {
      //we are looking inside of every list using our keys
      print(money);
    }
  }
}

void methodName(/* parametrs */) {
  //write your code
}
int returnTypeOfFunctionForInt() {
  return 0; //return something
}

String returnTypeOfFunctionForString(int k, int y, String b) {
  return "String"; //return something
}

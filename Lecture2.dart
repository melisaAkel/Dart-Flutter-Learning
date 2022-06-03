void main() {
  List<int> moneys = [10, 15, 20]; //index are starting from the 0
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
}

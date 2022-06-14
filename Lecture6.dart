class Bank {
  dynamic moneyType; //dynamic can be null
  late int money;
  late String bank;
  Bank(int money, String bank) {
    this.money = money;
    this.bank = bank;
  }
  void makeItString(String data) {
    moneyType = data;
  }

  void makeItInt(int data) {
    moneyType = data;
  }
  //when you convert dynamic one time when you try to connect another (string or int) it will give error
  //because we are saying that it is currently string or int after one time initilazing
}

void main() {
  Bank a = Bank(10, "Bank1");
  a.makeItString("TR");
  print(a.moneyType as String); //it is saying that accept as String
  if (a.moneyType is String) {
    //it is saying that is it int
    print("true");
  } else if (a.moneyType is! int) {
    //it is saying that if it is not int
    print("it is not a int");
  }
}

import 'dart:math';

class User2 {
  //when we write our properities we need to use final but to initiliaze in our constructer
  //we should first say them late otherwise it will give error message
  String name;

  int money;

  final String city;
  final int? age;
  final String? favoriteColor;
  late final String userCode;
  late final _userId;
  User2(this.name, this.money, this.city,
      {required int userId, this.age, this.favoriteColor}) {
    //when u said required it must initiliaze
    //similar with java
    this._userId = userId; // _ this makes it private
    this.userCode = (favoriteColor ?? 'red') +
        name; //if favorite color is null it will initiliaze as red deafault
  }
  //getters and setters
  String get getName => this.name;

  set setName(String name) => this.name = name;
  int get getMoney => this.money;

  set setMoney(int? money) {
    /* if (money == null) {
      this.money = 0;
    } else {
      this.money = money;
    } */
    //this will be have same meaning with the above part
    this.money =
        money == null ? 0 : money; //if it is null be 0 otherwise be money
  }

  //this two methods are doing the same job when we dont have anything in paranthesis we can use this notation
  bool isIdEmpty() {
    return _userId.isEmpty;
  }

  bool isIDEmpty() => _userId.isEmpty;
  //i meant this paranthesis
  bool get isIDDEmpty =>
      _userId.isEmpty; //since pharanthesis is also empty we can use like this
  //when we want to use in our code we will just do object.isIDDEmpty;

}

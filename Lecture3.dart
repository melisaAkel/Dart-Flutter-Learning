import 'User2.dart'; //i dont have User2 class inside of this file however i have in other file im dart to use that object i should import the file
//which initliaze that object.

void main() {
  int money;
  //print(money); //it will give error since it is null you should initiliaze every object
  int? iWantItNull; //when i give question mark in the object
  // dart can expact this object as null also
  print(iWantItNull);
  //print(iWantItNull + 10);//as iWantItNull can be null you can not make mathematical opperision in this case it will give error
  //print(iWantItNull! + 10); //you are saying the application that when
  // it comes her it will definitly have value(! whit this)
  //however when you say the programm your value will not  be null with "!" and if your value will come null when you exacute than it will give you
  //"Null check operator used on a null value" this error

  //so we reccomend to use if statements
  if (iWantItNull == null) {
    print("it is null");
  } else {
    print(iWantItNull! + 10);
  }
  List<int?> listCanBeAlsoNull = [null, 10, 50, null];
  bool checkNull = iWantItNull != null ? true : false;
  if (iWantItNull != null)
    //if the condition is true it will return false(the first one in this case it is false)
    print(checkNull); //it gave false

  print("----------------" * 10);
  //creating a object
  User user1 = User("melisa", 10, "aksaray");
  User user2 = User("ahmet", 123, "adana",
      age: 12, favoriteColor: "blue"); //if you want to initiliaze
  //the parts which can be null you should initiliaze like this
  //you dont need to init all
  User user3 = User("name", 123456, "city", age: 156);
  User2 user4 =
      User2("user2", 123456789, "city", userId: 1); //userId must initiliaze
  //accessing properities
  print(user1.name);
  print(User2.justGive3());
}

int? methodCanBeAlsoNull(int? parameter) {
  return null;
}

class User {
  //when we write our properities we need to use final but to initiliaze in our constructer
  //we should first say them late otherwise it will give error message
  late String
      name; //if you will change anything later you shouldnt say final you should just say late
  late final int _money;
  late final String city;
  late final int? age;
  late String? favoriteColor;
  late final String userCode;
  User(String name, int money, String city, {int? age, String? favoriteColor}) {
    //similar with java
    this.name = name;
    this._money = money;
    this.city = city;
    this.age = age;
    this.favoriteColor = favoriteColor;
    this.userCode = (favoriteColor ?? 'red') +
        name; //if favorite color is null it will initiliaze as red deafault
  }
}

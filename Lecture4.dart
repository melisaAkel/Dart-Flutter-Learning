//                  EXTENDS AND ABSTRACT CLASSES

abstract class IUser {
  //PARENTS CLASS
  //this is a visiual class which doesnt exist however
// when we want everything in subclass we created this kind of visiual classes as parent class
  String name;
  int money;

  IUser(this.name, this.money);

  void sayYourNameAndMoney() {
    print("this user has ${name} and $money");
  }
}

class User extends IUser {
  int bankMoney;
  //User a = User("melisa",10,10);
  User(String name, int money, this.bankMoney)
      : super(name, money); //we call super

  void sayYourNameAndMoney() {
    //override
    super.sayYourNameAndMoney();
    print("aaaa");
  }
}

class BankUser extends User {
  String bankName;
  BankUser(String name, int money, int bankMoney, this.bankName) //we call super
      : super(name, money, bankMoney);
}

//                  IMPLEMENTS
abstract class IUStudents {
  String name;
  int ID;
  IUStudents(this.name, this.ID);
  void printID();
}

class Students implements IUStudents {
  //we created to copy of IUStudents so we need to implement all unimplemented things
  @override
  int ID;

  @override
  String name;

  Students(this.ID, this.name);

  @override
  void printID() {
    // TODO: implement printID
    print("a");
  }
}

//                     ENUM
void main() {
  //we can use enums for grouping and switch cases
  final customerMouse = Mouses.magic;
  print(customerMouse.index); //0
  print(customerMouse.name);
  //down to is same
  if (customerMouse.name == "apple") {
    print(customerMouse.name);
  }
  if (customerMouse == Mouses.apple) {
    print(customerMouse.name);
  }

  switch (customerMouse) {
    case Mouses.magic:
      // TODO: Handle this case.
      break;
    case Mouses.apple:
      // TODO: Handle this case.
      break;
    case Mouses.logitec:
      // TODO: Handle this case.
      break;
    case Mouses.inca:
      // TODO: Handle this case.
      break;
  }
  User a = User("melisa", 10, 10);
  a.sayYourNameAndMoney();
}

enum Mouses {
  magic, //index = 0
  apple,
  logitec,
  inca, // index = 3
}

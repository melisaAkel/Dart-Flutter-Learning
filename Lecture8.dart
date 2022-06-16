//              MIXIN

class Bank with BankMixin {
  //with is like using together
  String name;
  int money;
  Bank(this.name, this.money);

  @override //since we didnt init sayBankHello we must override this method in Bank class
  void sayBankHello() {
    calculateMoney(15); //we can call mixin methods

    // TODO: implement sayBankHello
  }
}

mixin BankMixin {
  //good to use with polimorphism
  //we can thing like it is class without constructor.
  void
      sayBankHello(); //we dont need to init this method in mixin but we must init in the class where we will use this mixin.like abstract class this part
  void calculateMoney(int money) {
    //we dont need to override we already make the function.
    print(money);
  }
}
void main(List<String> args) {
  Bank a = Bank("Vb", 100);
  a.sayBankHello();
}

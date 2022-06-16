//                        Singleton
class Product {
  static int money = 15;
  String name;
  String brand;
  Product(this.name, this.brand);
  static void callHelloWorld() => print(
      "Hello World"); //static methpd without creating object of Product class we can call it
}

void main() {
  int k = Product.money;
  print(k);
  Product.callHelloWorld();
  //Product.money we can not use like this we should create a object of product
  //Product a = Product("name", "brand");
}

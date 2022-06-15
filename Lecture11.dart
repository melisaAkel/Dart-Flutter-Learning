//Factory Constructor
class User {
  String name;
  User(this.name);
}

class Product {
  String name;
  Product(this.name);
  //ı have one user i will use this to override constructer it will make the product name user's name
  factory Product.fromUser(User user) {
    //this is overriding constructer
    return Product(
        user.name); //constructor cannot return something so we add factory
  }
  Product.ipana([this.name = "ipana"]);
  //overriding constructor it will always create ipana product

  String toString() {
    return "Name of the product is $name";
  }
}

void main(List<String> args) {
  User user = User("Ahsan");
  Product myProduct =
      Product.fromUser(user); // ı created product object wit using user
  Product ipanaObj = Product.ipana(); //it will create ipana object
  print(myProduct);
  print(ipanaObj);
}

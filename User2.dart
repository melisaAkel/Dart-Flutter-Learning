class User2 {
  //when we write our properities we need to use final but to initiliaze in our constructer
  //we should first say them late otherwise it will give error message
  final String name;
  final int money;
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
}

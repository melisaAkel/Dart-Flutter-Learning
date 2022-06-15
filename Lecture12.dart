//        EAGER SINGLETON
class ProductConfig {
  static final ProductConfig instance = ProductConfig._("a");
  final String apiKey;
  ProductConfig._(this.apiKey);
}

//        LAZY SINGLETON
//where we want to use is when we dont want to create same object over and over again when we want to have control the number of object created
class ProductLazySingleton {
  static ProductLazySingleton?
      _instance; //it can be null if it is null we will create our object
  static ProductLazySingleton get instance {
    if (_instance == null)
      _instance = ProductLazySingleton
          ._init(); //if the instance is null then we will call the constructor
    return _instance!; // it will give the instance if we have already that object it will give that one if we dont have it qill create new object
  }

  ProductLazySingleton._init(); //in this case i will call this constructor just single time when the instance is null
}

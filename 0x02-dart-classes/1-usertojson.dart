class User {
  String name;
  int age;
  double? height;

  User({required this.name, required this.age, this.height});

  String toJson() {
    return "User(name: '${name}', age: ${age}, height: ${height})";
  }
}

class User {
  int? id;
  String name;
  int age;
  double? height;

  User({this.id, required this.name, required this.age, this.height});

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'age': age,
    'height': height,
  };

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'] as int ?? 0,
      name: userJson['name'] as String? ?? '',
      age: userJson['age'] as int? ?? 0,
      height: userJson['height'] as double?,
    );
  }

  String toString() {
    return "User(id : $id ,name: $name, age: $age, height: $height)";
  }
}

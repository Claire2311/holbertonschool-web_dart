import '6-password.dart';

class User extends Password {
  int? id;
  String name;
  int age;
  double? height;

  User({
    this.id,
    required this.name,
    required this.age,
    this.height,
    String user_password = "",
  }) : super(password: user_password);

  String get user_password => super.password;

  set user_password(String newPassword) {
    super.password = newPassword;
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'age': age,
    'height': height,
  };

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'] as int,
      name: userJson['name'] as String? ?? '',
      age: userJson['age'] as int? ?? 0,
      height: userJson['height'] as double?,
      user_password: userJson['user_password'] as String? ?? "",
    );
  }

  @override
  String toString() {
    return "User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})";
  }
}

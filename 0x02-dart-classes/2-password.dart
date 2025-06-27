class Password {
  String password = "";

  bool isValid() {
    var exp = RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+$");

    return (password.length >= 8 && password.length <= 16) &&
        exp.hasMatch(password);
  }

  @override
  String toString() {
    return "Your password is: ${password}";
  }
}

class Password {
  String password = "";

  bool isValid() {
    var exp = RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+$");
    if (password.length >= 8 &&
        password.length <= 16 &&
        exp.hasMatch(password)) {
      return true;
    }
    return false;
  }

  @override
  String toString() {
    return "Your password is: ${password}";
  }
}

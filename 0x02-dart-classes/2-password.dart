class Password {
  String password = "";

  bool isValid() {
    return (password.length >= 8 && password.length <= 16) &&
        this.password.contains(RegExp(r'[A-Z]')) &&
        this.password.contains(RegExp(r'[a-z]')) &&
        this.password.contains(RegExp(r'\d'));
  }

  @override
  String toString() {
    return "Your password is: ${this.password}";
  }
}

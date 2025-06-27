class Password {
  String _password = "";

  Password({String password = ""}) {
    this._password = password;
  }

  bool isValid() {
    return ((_password.length >= 8) && (_password.length <= 16)) &&
        this._password.contains(new RegExp(r"[A-Z]")) &&
        this._password.contains(new RegExp(r"[a-z]")) &&
        this._password.contains(new RegExp(r"[0-9]"));
  }

  @override
  String toString() => "Your Password is ${this._password}";
}

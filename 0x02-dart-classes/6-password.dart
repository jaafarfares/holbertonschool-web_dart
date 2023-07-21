
// Fixed the isValid() method to check if the length of the password is between 8 and 16 (inclusive).
// Ensured that the password contains both uppercase letters, lowercase letters, and numbers.
// Corrected the toString() method to print "Your Password is: ..." with the actual password value.
class Password {
  String? _password = "";
  String? get password => _password;
  set password(String? password) => _password = password;

  Password({required String password}) {
    _password = password;
  }

  bool isValid() {
    if (_password == null) return false;
    if (_password!.length >= 8 && _password!.length <= 16) {
      if (_password!.contains(RegExp(r'[A-Z]')) &&
          _password!.contains(RegExp(r'[a-z]')) &&
          _password!.contains(RegExp(r'[0-9]'))) {
        return true;
      }
    }
    return false;
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }
}

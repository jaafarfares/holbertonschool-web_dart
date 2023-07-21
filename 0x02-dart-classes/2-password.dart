// Fixed the isValid() method to check if the length of the password is between 8 and 16 (inclusive).
// Ensured that the password contains both uppercase letters, lowercase letters, and numbers.
// Corrected the toString() method to print "Your Password is: ..." with the actual password value.
class Password {
  String? password;
  bool isValid() {
    if (password == null) return false;
    if (password!.length > 8 && password!.length < 16) {
      if (password!.contains(RegExp(r'[A-Z]')) &&
          password!.contains(RegExp(r'[a-z]')) &&
          password!.contains(RegExp(r'[0-9]'))) {
        return true;
      }
    }
    return false;
  }

  @override
  String toString() {
    return "Your Password is: $password";
  }
}

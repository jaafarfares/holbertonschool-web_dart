import 'dart:convert';

import '3-util.dart';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();

    final userMap = jsonDecode(userData);
    final username = userMap['username'];

    return 'Hello $username';
  } catch (e) {
    return 'error caught: $e';
  }
}

Future<String> loginUser() async {
  try {
    bool userExists = await checkCredentials();
    if (userExists) {
      print("There is a user: $userExists");
      return await greetUser();
    } else {
      print("There is a user: $userExists");
      return "Wrong credentials";
    }
  } catch (e) {
    return 'error caught: $e';
  }
}

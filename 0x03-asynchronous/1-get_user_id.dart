// call api to get user id
import '1-main.dart';
import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  String user = await fetchUserData();
  Map<String, dynamic> jsonObject = jsonDecode(user);

  String id = jsonObject['id'];
  return id;
}

import '1-usertojson.dart';

void main() {
  final user = User(name: "Jaafar", age: 26, height: 1.91);
  print(user.toJson());
}

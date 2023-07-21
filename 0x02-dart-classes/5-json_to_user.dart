//  class with toJson() that return a map representation of the User
class User {
  String? name;
  int? age;
  double? height;
  int? id;

  User({this.id, this.name, this.age, this.height});

  Map<String, dynamic> toJson() {
    return {"name": name, "age": age, "height": height, "id": id};
  }

  static User fromJson(Map<String, dynamic> userJson) {
    return User(
      name: userJson["name"],
      age: userJson["age"],
      height: userJson["height"],
      id: userJson["id"],
    );
  }

  String toString() {
    return "User(id: $id, name: $name, age: $age, height: $height)";
  }
}

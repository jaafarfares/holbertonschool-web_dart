//  class with toJson() that return a map representation of the User
class User {
  String? name;
  int? age;
  double? height;

  User({this.name, this.age, this.height});


  toJson(){
    return {
      "name": name,
      "age": age,
      "height": height
    };
  }

}

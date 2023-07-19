// outer function 
void outer(String name, String id) {
  String inner() {
  var nameParts = name.split(" ");
  String firstNameInitial = nameParts[1].substring(0, 1) + "." + nameParts[0];
  return "Hello Agent $firstNameInitial your id is $id";
}
print(inner());
}

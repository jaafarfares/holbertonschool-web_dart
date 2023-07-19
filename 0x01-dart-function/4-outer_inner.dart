// File: 4-outer_inner.dart

String inner(String name, String id) {
  List<String> nameParts = name.split(" ");
  String firstNameInitial = nameParts[0][0].toUpperCase();
  String lastName = nameParts[1];
  return "Hello Agent $firstNameInitial.$lastName your id is $id";
}

void outer(String name, String id) {
  String message = inner(name, id);
  print(message);
}

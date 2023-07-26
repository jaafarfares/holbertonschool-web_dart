// consume an API and return the character names
import 'dart:convert';
import 'package:http/http.dart' as http;

printRmCharacters() async {
  try {
    final response =
        await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      // get the results array
      final characters = jsonData['results'];
      // loop over thge characters and print the name
      for (var character in characters) {
        print(character['name']);
      }
    }
  } catch (e) {
    // handle any errorsif something come up 
    return "error caught: $e";
  }
}

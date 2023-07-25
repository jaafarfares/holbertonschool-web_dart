import 'dart:convert';

import '1-util.dart';
import '2-util.dart';

Future<void> getUser() async {
  try {
     String user = await fetchUserData();
  

 
    
    print(user);
  } catch (e) {
    print("error caught: ${e}");
  }
}

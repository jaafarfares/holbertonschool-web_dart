import 'dart:convert';

import '4-util.dart';

calculateTotal() async {
  try {
    double total = 0;

    final Map<String, dynamic> userData = json.decode(await fetchUserData());
    final String data = userData['id'];
    final List<dynamic> userOrder = json.decode(await fetchUserOrders(data));
    for (int i = 0; i < userOrder.length; i++) {
      total += json.decode(await fetchProductPrice(userOrder[i]));
    }
    return total;
  } catch (e) {
    return -1;
  }
}

import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    final user = jsonDecode(await fetchUserData());
    final userOrder = jsonDecode(await fetchUserOrders(user['id']));
    double totalPriceOfProducts = 0;

    for (var i = 0; i < userOrder.length; i++) {
      double itemPrice = double.parse(
        await fetchProductPrice(userOrder[i]),
      );
      totalPriceOfProducts += itemPrice;
    }
    return totalPriceOfProducts;
  } catch (err) {
    return -1;
  }
}

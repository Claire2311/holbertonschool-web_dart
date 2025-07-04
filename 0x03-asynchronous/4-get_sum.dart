import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    String user = await fetchUserData();
    String userId = user.split('"')[3];
    String userOrder = await fetchUserOrders(userId);
    List numberOfProducts = userOrder
        .replaceAll('[', '')
        .replaceAll(']', '')
        .split(',')
        .map<String>((e) {
          return (e);
        })
        .toList();

    double totalPriceOfProducts = 0;

    for (var i = 0; i < numberOfProducts.length; i++) {
      double itemPrice = double.parse(
        await fetchProductPrice(numberOfProducts[i].replaceAll('"', '')),
      );
      totalPriceOfProducts += itemPrice;
    }
    return totalPriceOfProducts;
  } catch (err) {
    return -1;
  }
}

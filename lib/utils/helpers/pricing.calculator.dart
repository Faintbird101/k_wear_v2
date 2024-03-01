class KPricingCalculator {
  // calculate price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxtRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxtRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // Calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // Calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxtRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxtRate;
    return taxAmount.toStringAsFixed(2);
  }

  // Tax rate for location
  static double getTaxRateForLocation(String location) {
    // Replace this with actuall data from a tax rate db or API(stripe API)
    return 0.10;
  }

  // shipping cost
  static double getShippingCost(String location) {
    // Replace this with actual data from a shipping cost db or API(stripe API)
    return 5.00;
  }

  // Sum all cart values and return total amount
  // static double calculateCartTotal(CartModel cartItems) {
  //   return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}

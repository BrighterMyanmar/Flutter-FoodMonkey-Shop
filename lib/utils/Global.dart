import 'package:foodmonkey/models/Product.dart';

class Global {
  static List<Product> cartProducts = [];

  static addToCart(product) {
    bool exist = false;
    if (cartProducts.length > 0) {
      cartProducts.forEach((prod) {
        if (prod.id == product.id) {
          prod.count++;
          exist = true;
        }
      });
    }
    if(!exist){
      cartProducts.add(product);
    }
  }
}

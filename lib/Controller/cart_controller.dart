import 'package:demo/Model/product_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var cartitems = products.obs;

  addToCart(Product product) {
    cartitems.add(product);
  }
}

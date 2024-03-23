import 'package:food_app/data/cart_data.dart';
import 'package:food_app/models/Cart.dart';

class CartController{
  static void addToCart(String id){
    cart.cartList[id] = (cart.cartList[id] ?? 0) + 1;
    print(cart.cartList);
  }
}
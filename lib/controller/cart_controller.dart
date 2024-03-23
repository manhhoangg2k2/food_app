import 'package:food_app/controller/item_controller.dart';
import 'package:food_app/data/cart_data.dart';
import 'package:food_app/models/Cart.dart';

class CartController{
  static void addToCart(String id){
    cart.cartList[id] = (cart.cartList[id] ?? 0) + 1;
    print(cart.cartList);
  }

  static double getTotal(){
    double total = 0;
    cart.cartList.forEach((key, value) {
      total = total + ItemController.getItemById(key).price*value;
    });
    print(total);
    return total;

  }
}
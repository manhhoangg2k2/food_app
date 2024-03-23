import 'package:food_app/models/Items.dart';

class Cart {
  String id;
  Map<String, double> cartList;
  double total;

  Cart({required this.id,required this.cartList, required this.total});
}
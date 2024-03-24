import 'package:food_app/data/payment_data.dart';
import 'package:food_app/models/Payment.dart';

class OrderController {
  static Pay getPayById(String id) {
    for (var item in pays) {
      if (item.id == id) {
        return item;
      }
    }
    throw Exception("Pay not found with id: $id");
  }
}
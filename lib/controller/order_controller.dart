import 'package:food_app/data/payment_data.dart';
import 'package:food_app/data/shipment_data.dart';
import 'package:food_app/models/Payment.dart';
import 'package:food_app/models/Shipment.dart';

class OrderController {
  static Pay getPayById(String id) {
    for (var item in pays) {
      if (item.id == id) {
        return item;
      }
    }
    throw Exception("Pay not found with id: $id");
  }

  static Ship getShipById(String id) {
    for (var item in ships) {
      if (item.id == id) {
        return item;
      }
    }
    throw Exception("Pay not found with id: $id");
  }
}
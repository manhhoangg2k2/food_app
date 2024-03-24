import 'package:food_app/models/Payment.dart';
import 'package:food_app/models/Shipment.dart';

class Order{
  String id;
  Ship ship;
  Pay pay;
  double total;

  Order({required this.id, required this.pay, required this.ship, required this.total});
}
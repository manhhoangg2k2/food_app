import 'package:flutter/material.dart';
import 'package:food_app/controller/cart_controller.dart';

class TotalOrder extends StatelessWidget {
  const TotalOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Total: " + CartController.getTotal().toString()),
          Container(
            child: ElevatedButton(
              onPressed: (){}, 
              child: Text("Buy"),
              style: ButtonStyle(
              ),
            ),
          )
        ],
      )
    );
  }
}
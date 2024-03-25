import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/controller/item_controller.dart';
import 'package:food_app/data/cart_data.dart';
import 'package:food_app/data/order_data.dart';
import 'package:food_app/pages/cart_pages/widget/total.dart';
import 'package:food_app/pages/order_page/widget/list_item.dart';
import 'package:food_app/pages/order_page/widget/total.dart';
import 'package:go_router/go_router.dart';
import 'package:item_count_number_button/item_count_number_button.dart';
import 'package:transparent_image/transparent_image.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Order"),),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: ListItem()),
            Container(height: 10,color: Color.fromARGB(255, 241, 241, 241),),
            InkWell(
              onTap: () {
                context.goNamed("shipments");
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 241, 253, 241),
                  border: Border.all(color: Colors.green.shade200)
                ),
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Color.fromARGB(255, 238, 222, 222)))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Choose Shipment Method"),
                          Icon(Icons.keyboard_arrow_right_outlined)
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(order.ship.name,style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("đ22.000"),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.local_shipping_sharp, color: Colors.green,),
                        SizedBox(width: 10,),
                        Text("Received at Mar 24, 2024 - Mar 26, 2024",style: TextStyle(color: Colors.green),),
                      ]
                    )
                  ],
                ),
              ),
            ),
            Container(height: 10,color: Color.fromARGB(255, 241, 241, 241),),
            InkWell(
              onTap: () {
                context.goNamed("payments");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.attach_money_sharp,color: Colors.purple,),
                      Text("Choose Payment Method"),
                    ],
                  ),
                  Row(
                    children: [
                      Text(order.pay.name, style: TextStyle(fontWeight: FontWeight.bold),),
                      Icon(Icons.keyboard_arrow_right_outlined)
                    ],
                  )
                ],
              ),
            ),
          ],
        )
        ),
        persistentFooterButtons: [
          TotalOrder()
        ],
    );
  }
}
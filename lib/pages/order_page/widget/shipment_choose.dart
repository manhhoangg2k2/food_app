import 'package:flutter/material.dart';
import 'package:food_app/controller/order_controller.dart';
import 'package:food_app/data/order_data.dart';
import 'package:food_app/data/payment_data.dart';
import 'package:food_app/data/shipment_data.dart';
import 'package:go_router/go_router.dart';

class ShipmentChoose extends StatefulWidget {
  ShipmentChoose({Key? key}) : super(key: key);

  @override
  _ShipmentChooseState createState() => _ShipmentChooseState();
}

class _ShipmentChooseState extends State<ShipmentChoose> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose shipment method"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: ships.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: selectedIndex == index
                          ? const Color.fromARGB(255, 223, 223, 223)
                          : Colors.white,
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(Icons.local_shipping_outlined, color: Colors.purple),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: Color.fromRGBO(228, 228, 228, 1))),
                            ),
                            child: Text(ships[index].name),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Positioned(child: 
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 70,
              child: ElevatedButton(
                onPressed: () { 
                    order.ship = OrderController.getShipById((selectedIndex+1).toString());
                    context.goNamed("order");
                 },
                child: Text("Confirm"),
              )
            )
          )
        ],
      ),
    );
  }
}
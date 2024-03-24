import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/controller/order_controller.dart';
import 'package:food_app/data/order_data.dart';
import 'package:food_app/data/payment_data.dart';

class PaymentChoose extends StatefulWidget {
  PaymentChoose({Key? key}) : super(key: key);

  @override
  _PaymentChooseState createState() => _PaymentChooseState();
}

class _PaymentChooseState extends State<PaymentChoose> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose payment method"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: pays.length,
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
                        Icon(Icons.account_balance_wallet_outlined, color: Colors.purple),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: Color.fromRGBO(228, 228, 228, 1))),
                            ),
                            child: Text(pays[index].name),
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
                    order.pay = OrderController.getPayById((selectedIndex+1).toString());
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
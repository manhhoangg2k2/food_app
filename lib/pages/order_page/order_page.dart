import 'package:flutter/material.dart';
import 'package:food_app/controller/item_controller.dart';
import 'package:food_app/data/cart_data.dart';
import 'package:food_app/pages/cart_pages/widget/total.dart';
import 'package:food_app/pages/order_page/widget/total.dart';
import 'package:item_count_number_button/item_count_number_button.dart';
import 'package:transparent_image/transparent_image.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Order"),),
      body: SafeArea(
        child: ListView.separated(
          separatorBuilder: (BuildContext context,int index){
            return const SizedBox(height: 5,);
          },
          itemCount: cart.cartList.length,
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          itemBuilder: (BuildContext context, int index){
            return Container(
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey, ))
              ),
              child: AspectRatio(
                aspectRatio: 7/2,
                child: Container(
                  alignment: Alignment.topLeft,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FadeInImage.memoryNetwork(
                          height: 100,
                          width: 100,
                          placeholder: kTransparentImage, 
                          fit: BoxFit.cover,
                          image: 
                            ItemController.getItemById(cart.cartList[index.toString()].toString()).img
                          ),
              
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                ItemController.getItemById(cart.cartList[index.toString()].toString()).name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24
                                ),  
                              ),
                              Text("Price: ${ItemController.getItemById(cart.cartList[index.toString()].toString()).price}"),
                              Text("x${cart.cartList[index.toString()]}"),

                            ],
                          ),
                          
                        ],
                      ),
                    )
                  ),
              ),
            );
          })
        ),
        persistentFooterButtons: [
          TotalOrder()
        ],
    );
  }
}
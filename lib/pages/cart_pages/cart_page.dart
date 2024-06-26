import 'package:flutter/material.dart';
import 'package:food_app/controller/cart_controller.dart';
import 'package:food_app/controller/item_controller.dart';
import 'package:food_app/data/cart_data.dart';
import 'package:food_app/pages/cart_pages/widget/total.dart';
import 'package:item_count_number_button/item_count_number_button.dart';
import 'package:transparent_image/transparent_image.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart"),),
      body: SafeArea(
        child: ListView.separated(
          separatorBuilder: (BuildContext context,int index){
            return const SizedBox(height: 15,);
          },
          itemCount: cart.cartList.length,
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
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
                            ],
                          ),
                          ItemCount(
                            initialValue: cart.cartList[index.toString()]?.toInt() ?? 0,
                            minValue: 0,
                            maxValue: 100,
                            decimalPlaces: 0,
                            onChanged: (value) {
                              // Handle counter value changes
                              value+=1;
                            },
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
          Total()
        ],
    );
  }
}
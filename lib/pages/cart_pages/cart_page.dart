import 'package:flutter/material.dart';
import 'package:food_app/controller/cart_controller.dart';
import 'package:food_app/data/cart_data.dart';
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
      body: SafeArea(
        child: 
        ListView.separated(
          separatorBuilder: (BuildContext context,int index){
            return const SizedBox(height: 15,);
          },
          
          itemCount: cart.cartList.length,
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          itemBuilder: (BuildContext context, int index){
            return InkWell(
              child: AspectRatio(
                aspectRatio: 5/2,
                child: Container(
                    child: Column(children: [Text("Item name"),Text("Item count")],)
                  ),
              ),
            );
          })
        )
    );
  }
}
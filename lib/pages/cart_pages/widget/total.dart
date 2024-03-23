import 'package:flutter/material.dart';
import 'package:food_app/controller/cart_controller.dart';
import 'package:food_app/routers/routers.dart';
import 'package:go_router/go_router.dart';

class Total extends StatelessWidget {
  const Total({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Total: " + CartController.getTotal().toString(),style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
          Container(
            child: ElevatedButton(
              onPressed: (){
                print('pressed');
                RouterCustom.router.goNamed('order');;
              }, 
              child: Text("Buy",style: TextStyle(color: Colors.white),),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.purple),
              ),
            ),
          )
        ],
      )
    );
  }
}
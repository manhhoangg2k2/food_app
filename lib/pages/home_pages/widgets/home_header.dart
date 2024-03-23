import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/pages/cart_pages/cart_page.dart';
import 'package:go_router/go_router.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Hello Hoang", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
              Text("Good morning")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                context.goNamed("cart");
              },
                child: 
                  Icon(
                    Icons.shopping_cart_outlined
                  )
                ),
              Icon(Icons.notifications_none)
            ],
          )
        ],
      )
    );
  }
}
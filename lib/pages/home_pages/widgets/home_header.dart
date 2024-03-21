import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Row(
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
          Icon(Icons.notifications_none)
        ],
      )
    );
  }
}
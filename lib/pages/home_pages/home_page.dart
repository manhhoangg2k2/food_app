import 'package:flutter/material.dart';
import 'package:food_app/pages/home_pages/widgets/home_content.dart';
import 'package:food_app/pages/home_pages/widgets/home_header.dart';
import 'package:food_app/pages/home_pages/widgets/home_search.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            children: [
              HomeHeader(),
              HomeSearch(),
              Expanded(
                child: 
                  HomeContent()
                ),
            ],
          ),
        ),
      )
    );
  }
}
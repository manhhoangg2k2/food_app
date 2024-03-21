import 'package:flutter/material.dart';
import 'package:food_app/data/items_data.dart';
import 'package:go_router/go_router.dart';
import 'package:transparent_image/transparent_image.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
    itemCount: itemList.length,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
    ), 
    itemBuilder: (BuildContext context, int index){
      return Column(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                context.go("/category");
              },
              child: Container(
                clipBehavior: Clip.hardEdge,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(1,1),
                      color: Colors.grey.shade200,
                      blurRadius: 2,
                      spreadRadius: 2,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10) 
                ),
                child: FadeInImage.memoryNetwork(
                  width: double.infinity,
                  height: double.infinity,
                  placeholder: kTransparentImage, 
                  fit: BoxFit.cover,
                  image: 
                    itemList[index].img
                  ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          
        ],
        
      );
    });
  }
}
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
    itemCount: 10,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
    ), 
    itemBuilder: (BuildContext context, int index){
      return Column(
        children: [
          Expanded(
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
                placeholder: kTransparentImage, 
                fit: BoxFit.cover,
                image: 
                  'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Zm9vZHxlbnwwfHwwfHx8MA%3D%3D'
                ),
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "Bun bo Hue", 
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )
        ],
        
      );
    });
  }
}
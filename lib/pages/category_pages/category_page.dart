import 'package:flutter/material.dart';
import 'package:food_app/data/items_data.dart';
import 'package:food_app/pages/detail_pages/items_detail.dart';
import 'package:transparent_image/transparent_image.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: 
        ListView.separated(
          separatorBuilder: (BuildContext context,int index){
            return const SizedBox(height: 15,);
          },
          
          itemCount: itemList.length,
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          itemBuilder: (BuildContext context, int index){
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemDetails(items: itemList[index]),
                  ),
                );
              },
              child: AspectRatio(
                aspectRatio: 5/2,
                child: Container(
                  //cái này dùng để fit cái ảnh bên trong với cái container bên ngoài
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                  color: Colors.amber, 
                  borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(bottom: 10),
                  child: 
                    FadeInImage.memoryNetwork(
                      width: double.infinity,
                      placeholder: kTransparentImage, 
                      fit: BoxFit.cover,
                      image: 
                        itemList[index].img
                      ),
                  ),
              ),
            );
          })
        )
    );
  }
}
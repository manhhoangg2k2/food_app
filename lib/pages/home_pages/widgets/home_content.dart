import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/controller/cart_controller.dart';
import 'package:food_app/data/items_data.dart';
import 'package:go_router/go_router.dart';
import 'package:like_button/like_button.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:food_app/controller/item_controller.dart';

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
                context.goNamed("detail", pathParameters: {
                    "id": "$index"
                });
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
                child: Stack(
                  children: [
                    FadeInImage.memoryNetwork(
                    width: double.infinity,
                    height: double.infinity,
                    placeholder: kTransparentImage, 
                    fit: BoxFit.cover,
                    image: 
                      itemList[index].img
                    ),
                    Positioned(
                      bottom: 0, 
                      left: 10,
                      child:  InkWell(
                        onTap: (){
                          CartController.addToCart(itemList[index].id);
                          final snackBar = SnackBar(
                              content: Text('Thêm vào giỏ hàng thành công'),
                            );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: const Icon(
                          Icons.add_shopping_cart_outlined,
                           color: Colors.grey,
                          ),
                      )
                    ),
                    Positioned(
                      bottom: 0, 
                      right: 0,
                      child:  LikeButton(
                        onTap: (like) {
                          ItemController.addItemToFavor(itemList[index].id,like);
                          return Future.value(!like);
                        },
                      )
                    )
                ]),
              ),
            ),
          ),
          const SizedBox(height: 5),
        ],
      );
    });
  }
}
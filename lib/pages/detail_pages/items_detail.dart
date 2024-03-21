import 'package:flutter/material.dart';
import 'package:food_app/models/Items.dart';
import 'package:transparent_image/transparent_image.dart';

class ItemDetails extends StatefulWidget {
  final Items items;
  const ItemDetails({super.key, required this.items});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}
class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: widget.items.img),
          Text(widget.items.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Text(widget.items.description)
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:food_app/controller/item_controller.dart';
import 'package:food_app/models/Items.dart';
import 'package:transparent_image/transparent_image.dart';

class ItemDetails extends StatefulWidget {
  String id;
  ItemDetails({super.key, required this.id});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}
class _ItemDetailsState extends State<ItemDetails> {
  late Items item;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      item = ItemController.getItemById(widget.id);
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: item.img),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Text(item.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text(item.description)
            ],),
          )
        ],
      ),
    );
  }
}
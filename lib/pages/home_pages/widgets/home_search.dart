import 'package:flutter/material.dart';
import 'package:food_app/controller/item_controller.dart';
import 'package:food_app/data/items_data.dart';
import 'package:food_app/models/Items.dart';
import 'package:food_app/pages/order_page/widget/list_item.dart';
import 'package:search_page/search_page.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: 
      FloatingActionButton(
          child: Icon(Icons.search),
          tooltip: 'Search people',
          onPressed: () => showSearch(
            context: context,
            delegate: SearchPage<Items>(
              items: itemList,
              searchLabel: 'Search people',
              suggestion: Center(
                child: Text('Filter people by name, surname or age'),
              ),
              failure: Center(
                child: Text('No person found :('),
              ),
              filter: (item) => [
                item.name,
                item.description,
              ],
              builder: (person) => ListTile(
                title: Text(person.name),
                subtitle: Text(person.description),
              ),
            ),
          ),
        ),
      // TextField(
      //   onChanged: (value){
      //     print(ItemController.listSearch(value)[0].name);
      //   },
      //   decoration: InputDecoration(
      //     hintText: "Search key...",
      //     border: OutlineInputBorder(
      //       borderSide: BorderSide(
      //         color: Color.fromARGB(255, 247, 228, 228), // Màu đường viền
      //         width: 0.5, // Độ dày đường viền
      //         style: BorderStyle.solid, // Kiểu đường viền
      //       ),
      //     ),
      //     suffixIcon: Icon(Icons.search, color: Colors.grey,),
      //   ),
      // ),
    );
  }
}
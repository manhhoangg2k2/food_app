import 'package:food_app/data/items_data.dart';
import 'package:food_app/models/Items.dart';

class ItemController{

  static Items getItemById(String id) {
    for (var item in itemList) {
      if (item.id == id) {
        return item;
      }
    }
    return itemList[0]; // Trả về null nếu không tìm thấy mục với id tương ứng
  }

  static void addItemToFavor(String id, bool like){
    if(FavorList.contains(id) || like){
      FavorList.remove(id);
    }
    else{FavorList.add(id);}
    print(FavorList);
  }
}
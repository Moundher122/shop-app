import 'package:flutter/material.dart';
class shoes{
  String? name;
  String? description;
  String? image;
  String? price;
  shoes(this.name,this.price,this.image,this.description);
}
class listshoes extends ChangeNotifier{
  List<shoes> shoess=[shoes('Nike air force','100','images/force.png',"Nike's lifestyle shoes: premium materials, stylish comfort, perfect for everyday wear"),shoes('Nike air jordan 1', '200', 'images/jordan1.png', "Nike's running shoes: ultimate comfort, advanced cushioning, smooth stride"),shoes('Nike duck Sb', '150','images/airjordan.png' , "Nike's basketball shoes: superior traction, ankle support, peak performance")];
  List <shoes> items=[shoes('Nike air force','100','images/force.png',"Nike's lifestyle shoes: premium materials, stylish comfort, perfect for everyday wear")];
  void additem(int index){
    items.add(shoess[index]);
    notifyListeners();
  }
  void suppitem(int index){
    items.removeAt(index);
    notifyListeners();
  }

}

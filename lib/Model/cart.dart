
import 'package:ecommerce/Model/shoe.dart';
import 'package:flutter/cupertino.dart';
class Cart extends ChangeNotifier{
  List<Shoe> shoes = [
    Shoe(name: "AirForce wine", price: "100", imagePath: "lib/img/img.png", description: "Wine version"),
    Shoe(name: "AirForce green", price: "110", imagePath: "lib/img/img_1.png", description: "Colorful AirForce version"),
    Shoe(name: "Nike Running W", price: "140", imagePath: "lib/img/img_2.png", description: "White running nike shoes"),
    Shoe(name: "Nike Running B", price: "90", imagePath: "lib/img/img_3.png", description: "Black running nike shoes"),
  ];

  List<Shoe> itemsInCart = [];

  List <Shoe> getItems(){
    return shoes;
  }

  List <Shoe> getCart(){
   return itemsInCart;
  }

  void addToCart(Shoe shoe){
    itemsInCart.add(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoe shoe){
    itemsInCart.remove(shoe);
    notifyListeners();

  }

}
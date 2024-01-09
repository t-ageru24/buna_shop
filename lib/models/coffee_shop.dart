import 'package:flutter/material.dart';
import 'coffee.dart';


class CoffeeShop extends ChangeNotifier{
  final List<Coffee> _shop = [
    //black
    Coffee(
      name: 'Black white',
      price: "4.10",
      imagePath: "lib/images/coffee1.png",
    ),

    //italy
    Coffee(
      name: 'makiyato',
      price: "4.10",
      imagePath: "lib/images/coffee2.png",
    ),

    //latte
    Coffee(
      name: 'local buna',
      price: "4.10",
      imagePath: "lib/images/coffee6.png",
    ),

    //espresso
    Coffee(
      name: 'packed',
      price: "4.10",
      imagePath: "lib/images/coffee4.png",
    ),

    //iced
    Coffee(
      name: 'long black',
      price: "4.10",
      imagePath: "lib/images/coffee5.png",
    ),

  ];

  //user cart
List<Coffee> _userCart = [];
  //get coffee list
List<Coffee> get coffeeShop => _shop;
  //get user cart
List<Coffee> get userCart => _userCart;
  //add item to cart
void addItemToCart(Coffee coffee){
  _userCart.add(coffee);
  notifyListeners();
}
  //remove item from cart
void removeItemFrontCart(Coffee coffee){
  _userCart.remove(coffee);
  notifyListeners();
}

}
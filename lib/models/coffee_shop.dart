import 'package:flutter/material.dart';
import 'coffee.dart';


class CoffeeShop extends ChangeNotifier{
  final List<Coffee> _shop = [
    //black
    Coffee(
      name: 'Black white',
      price: "\$25.00",
      imagePath: "lib/images/coffee1.png",
    ),

    Coffee(
      name: 'Sprice',
      price: "\$15.00",
      imagePath: "lib/images/coffee10.png",
    ),

    //italy
    Coffee(
      name: 'makiyato',
      price: "\$30.00",
      imagePath: "lib/images/coffee9.png",
    ),

    //latte
    Coffee(
      name: 'Jebena buna',
      price: "\$20.00",
      imagePath: "lib/images/coffee8.png",
    ),

    //espresso
    Coffee(
      name: 'packed',
      price: "\$50.00",
      imagePath: "lib/images/coffee4.png",
    ),

    //iced
    Coffee(
      name: ' ye Machine Buna',
      price: "\$30.00",
      imagePath: "lib/images/coffee5.png",
    ),

    Coffee(
      name: ' Buna be Sukar',
      price: "\$20.00",
      imagePath: "lib/images/coffee6.png",
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
import 'package:flutter/material.dart';
import 'package:house_of_icecream/component/cream.dart';

class CreamShop extends ChangeNotifier {
  final List<Cream> _shop = [
    Cream(
      name: "Chocolate Ice-cream",
      price: "Rs.200",
      imagePath: "assets/a.png",
    ),
    Cream(
      name: "3 in 1 Ice-cream",
      price: "Rs.500",
      imagePath: "assets/b.png",
    ),
    Cream(
      name: "Vanilla Ice-cream",
      price: "Rs.250",
      imagePath: "assets/c.png",
    ),
    Cream(
      name: " Choco Mini Ice-cream",
      price: "Rs.580",
      imagePath: "assets/d.png",
    ),
    Cream(
      name: "Almonds Ice-cream",
      price: "Rs.680",
      imagePath: "assets/e.png",
    ),
    Cream(
      name: " PinkBerry Ice-cream",
      price: "Rs.780",
      imagePath: "assets/f.png",
    ),
  ];
  //user cart
  List<Cream> _userCart = [];

  //get cream list
  List<Cream> get creamShop => _shop;

  //get user cart
  List<Cream> get userCart => _userCart;

  //add item to cart
  void addItemToUserCart(Cream cream) {
    _userCart.add(cream);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Cream cream) {
    _userCart.remove(cream);
    notifyListeners();
  }

  void addItemToCart(Cream cream) {}
}

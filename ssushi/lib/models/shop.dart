import 'package:flutter/material.dart';

import 'food.dart';

class Shop extends ChangeNotifier {
  //food menu
  final List<Food> _foodMenu = [
    Food(
      name: 'Salmon Sushi',
      price: '21.00',
      imagePath: 'images/sushi5.png',
      rating: "4.9",
    ),
    Food(
      name: 'Tuna',
      price: '23.00',
      imagePath: 'images/maki.png',
      rating: "4.3",
    ),
    Food(
      name: 'Uramaki',
      price: '22.00',
      imagePath: 'images/uramaki.png',
      rating: "4.7",
    ),
  ];
  //customer cart
  List<Food> _cart = [];
  //getter methods

  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;
  //add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}

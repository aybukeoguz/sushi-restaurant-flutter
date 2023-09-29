import 'dart:async';

class Food {
  String name;
  String price;
  String imagePath;
  String rating;
  int quantity;
  Food({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.rating,
    this.quantity = 0,
  });
  String get _name => name;
  String get _price => price;
  String get _imagePath => imagePath;
  String get _rating => rating;
}

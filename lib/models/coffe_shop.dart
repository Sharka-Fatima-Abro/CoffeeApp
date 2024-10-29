import 'package:coffeapp/models/coffe.dart';
import 'package:flutter/material.dart';

class Coffeshop extends ChangeNotifier {
  // ignore: unused_field
  final List<Coffe> _shop = [
    Coffe(
      name: 'Long Black',
      price: '4.10',
      imagepath: 'assets/coffe1.jpg',
    ),
    Coffe(
      name: 'Latte',
      price: '4.20',
      imagepath: 'assets/coffe4.jpg',
    ),
    Coffe(
      name: 'espresso',
      price: '4.30',
      imagepath: 'assets/coffe1.jpg',
    ),
    Coffe(
      name: 'iced coffee',
      price: '5.10',
      imagepath: 'assets/coffe4.jpg',
    ),
  ];

  final List<Coffe> _userCart = [];

  List<Coffe> get coffeshop => _shop;

  List<Coffe> get userCart => _userCart;

  void addItemToCart(Coffe coffe) {
    _userCart.add(coffe);
    notifyListeners();
  }

  void removeItemFromCart(Coffe coffe) {
    _userCart.remove(coffe);
    notifyListeners();
  }
}

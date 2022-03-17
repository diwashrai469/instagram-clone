import 'package:flutter/material.dart';

class myfavouritelist extends ChangeNotifier {
  static List<String> _favouritecart = [];

  int get count => _favouritecart.length;
  static List<String> get myfavlist => _favouritecart;

  void additem(String items) {
    _favouritecart.add(items);
    notifyListeners();
  }

  removeItems(
    index,
  ) {
    _favouritecart.remove(index);
    notifyListeners();
  }
}

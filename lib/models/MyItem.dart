import 'package:flutter/material.dart';

class MyItem extends ChangeNotifier{
  var id = 0;
  var name = "";
  var isFavorite = false;

  MyItem(this.id, this.name, this.isFavorite);

  void addToFavorite() {
    isFavorite = true;
    notifyListeners();
  }

  String getName() {
    return name;
  }
}
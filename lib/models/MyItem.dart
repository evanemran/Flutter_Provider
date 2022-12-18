import 'package:flutter/material.dart';

class MyItem{
  var id = 0;
  var name = "";
  var isFavorite = false;

  MyItem(this.id, this.name, this.isFavorite);

  String getName() {
    return name;
  }
}
import 'package:flutter/cupertino.dart';

import 'MyItem.dart';

class MyList extends ChangeNotifier{
  List<MyItem> list = [
    MyItem(0, "Iron Man", false),
    MyItem(1, "Iron Man 2", false),
    MyItem(2, "Incredible Hulk", false),
    MyItem(3, "Captain America - The 1st Avenger", false),
    MyItem(4, "Thor", false),
    MyItem(5, "The Avengers", false),
    MyItem(6, "Iron Man 3", false),
    MyItem(7, "Thor - The Dark World", false),
    MyItem(8, "Avengers, Age of Ultron", false),
    MyItem(9, "Black Panther", false),
    MyItem(10, "Captain America, The Winter Soldier", false),
    MyItem(11, "Captain America, Civil War", false),
    MyItem(12, "Thor Ragnarok", false),
    MyItem(13, "Avengers Infinity War", false),
    MyItem(14, "Dr. Strange", false),
    MyItem(15, "Avengers EndGame", false),
    MyItem(16, "SpiderMan Homecoming", false),
    MyItem(17, "SpiderMan Far From Home", false),
    MyItem(18, "SpiderMan No Way Home", false),
    MyItem(19, "Dr. Strange, Multiverse of Madness", false),
    MyItem(20, "Black Widow", false),
    MyItem(21, "Wakanda Forever", false),
  ];

  List<MyItem> getList() {
    return list;
  }
  
  void addToFav(int id) {
    for (var element in list) {
      if(element.id == id) {
        if(element.isFavorite) {
          element.isFavorite = false;
          notifyListeners();
        }
        else {
          element.isFavorite = true;
          notifyListeners();
        }
      }
    }
  }
}
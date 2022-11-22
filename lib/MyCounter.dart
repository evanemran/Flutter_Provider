import 'package:flutter/material.dart';

class MyCounter extends ChangeNotifier{
  var _count = 0;

  void incrementCounter() {
    _count += 1;
    notifyListeners();
  }

  int getCount() {
    return _count;
  }

}
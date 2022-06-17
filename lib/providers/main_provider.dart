import 'package:flutter/material.dart';

class MainProvider with ChangeNotifier {
  int _currentFilterButton = 0;
  int get currentFilterButton => _currentFilterButton;
  set currentFilterButton(int currentFilterButton) {
    _currentFilterButton = currentFilterButton;
    notifyListeners();
  }

//
  int _currentBarButon = 0;
  int get currentBarButon => _currentBarButon;
  set currentBarButon(int currentBarButon) {
    _currentBarButon = currentBarButon;
    notifyListeners();
  }
}

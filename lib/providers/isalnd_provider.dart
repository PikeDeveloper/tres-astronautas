import 'package:flutter/material.dart';

class IslandProvider with ChangeNotifier {
  int _islandColumn = 3;
  int get islandColumn => _islandColumn;
  set islandColumn(int islandColumn) {
    _islandColumn = islandColumn;
    notifyListeners();
  }

//3
  int _islandRow = 3;
  int get islandRow => _islandRow;
  set islandRow(int islandRow) {
    _islandRow = islandRow;
    notifyListeners();
  }
}

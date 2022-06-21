import 'package:flutter/material.dart';


class IslandProvider with ChangeNotifier {
  int _islandColumn = 9;
  int get islandColumn => _islandColumn;
  set islandColumn(int islandColumn) {
    _islandColumn = islandColumn;
    notifyListeners();
  }

//
  int _islandRow = 9;
  int get islandRow => _islandRow;
  set islandRow(int islandRow) {
    _islandRow = islandRow;
    notifyListeners();
  }

  //
  bool _onlyCrossIsland = true;
  bool get onlyCrossIsland => _onlyCrossIsland;
  set onlyCrossIsland(bool onlyCrossIsland) {
    _onlyCrossIsland = onlyCrossIsland;
    notifyListeners();
  }

    //
  List<List<int>> _customArray = [];
  List<List<int>> get customArray => _customArray;
  set customArray(List<List<int>> customArray) {
    _customArray = customArray;
    notifyListeners();
  }
}

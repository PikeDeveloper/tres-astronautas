import 'package:flutter/material.dart';

import '../models/restaurant_model.dart';
import '../repositories/restaurants_repository.dart';

class RestaurantsProvider with ChangeNotifier {
  RestaurantsProvider.instance() {
    getAll();
  }

  List<RestaurantModel> _restaurants = [];
  bool _loading = false;

  List<RestaurantModel> get restaurants => _restaurants;
  bool get loading => _loading;

  set restaurants(List<RestaurantModel> restaurants) {
    _restaurants = restaurants;
    notifyListeners();
  }

  set loading(bool loading) {
    _loading = loading;
    notifyListeners();
  }

  void getAll() async {
    loading = true;
    restaurants = await RestaurantRepository.getAll();
    loading = false;
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tresastronautas/models/restaurant_model.dart';

class RestaurantRepository {
  static Future<List<RestaurantModel>> getAll() async {
    try {
      var url = Uri.https(
        'api.giphy.com',
        '/v1/gifs/search',
        {
          'api_key': 'aelPXxxHok91hAzHrZ8b2khECeJJ986P',
          'q': 'restaurant',
          'limit': '10',
        },
      );

      var response = await http.get(url);

      var json = jsonDecode(response.body);

      var restaurants = json['data']
          .map<RestaurantModel>(
              (restaurant) => RestaurantModel.fromJson(restaurant))
          .toList();

      return restaurants;
    } catch (e) {
      return [];
    }
  }
}

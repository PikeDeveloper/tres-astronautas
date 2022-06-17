import 'package:provider/provider.dart';
import 'package:tresastronautas/ui/pages/nasa/widgets/restaurant_card.dart';
import 'package:flutter/material.dart';
import '../../../../models/restaurant_model.dart';
import '../../../../providers/restaurants_provider.dart';
import 'happy_hours_text_and_icon.dart';

class RestaurantList extends StatelessWidget {
  const RestaurantList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final restaurantsProvider = Provider.of<RestaurantsProvider>(context);
    List<RestaurantModel> restaurants = restaurantsProvider.restaurants;
    bool loading = restaurantsProvider.loading;

    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            const HappyHoursAndIcon(),
            Expanded(
              child: loading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : _List(restaurants: restaurants),
            ),
          ],
        ),
      ),
    );
  }
}

class _List extends StatelessWidget {
  const _List({Key? key, required this.restaurants}) : super(key: key);

  final List<RestaurantModel> restaurants;

  @override
  Widget build(BuildContext context) {
    return restaurants.isEmpty
        ? Text("Lista vacía")
        : ListView.builder(
            itemCount: restaurants.length,
            itemBuilder: (BuildContext context, int index) {
              return RestaurantCard(
                restaurant: restaurants[index],
              );
            },
          );
  }
}

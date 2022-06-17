import 'package:tresastronautas/utils/colors.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_bottom_bar.dart';
import 'widgets/restaurant_list.dart';
import 'widgets/text_favorites.dart';
import 'widgets/filter.dart';
import 'widgets/header.dart';

class NasaHome extends StatelessWidget {
  static const String route = "/nasa_home";
  const NasaHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.grayBackGround,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            NasaHeader(),
            SizedBox(height: 10),
            TextFavoritesAndIcon(),
            SizedBox(height: 10),
            Filter(),
            SizedBox(height: 10),
            RestaurantList(),
          ],
        ),
        bottomNavigationBar: const BottomBar(),
      ),
    );
  }
}

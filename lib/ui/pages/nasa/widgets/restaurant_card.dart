import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:tresastronautas/models/restaurant_model.dart';
import 'package:tresastronautas/ui/shared/circle_button.dart';
import 'package:tresastronautas/utils/colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../providers/main_provider.dart';
import '../../../shared/custom_text.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({Key? key, required this.restaurant}) : super(key: key);
  final RestaurantModel restaurant;

  @override
  Widget build(BuildContext context) {
    final mainProvider = Provider.of<MainProvider>(context);
    const double pictureWidth = 130;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            padding: const EdgeInsets.all(23),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 231, 229, 229),
                width: 0.1,
              ),
              color: MyColors.grayBackGround,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 194, 192, 192),
            blurRadius: 7.0,
            spreadRadius: -3.0,
            offset: Offset(0, 3),
          )
         
        ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          child: Container(
                            width: pictureWidth,
                            height: pictureWidth / 1.46,
                            child: CachedNetworkImage(
                              imageUrl: restaurant.images.downsized.url,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => Center(
                                child: const CupertinoActivityIndicator(),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                    if (mainProvider.currentBarButon == 3)
                      CircleButton(
                          size: pictureWidth / 3.5,
                          color: Colors.white,
                          padding: 6,
                          child: const ImageIcon(
                              AssetImage(
                                "assets/images/Red-heart-icon.png",
                              ),
                              size: 25,
                              color: MyColors.orange),
                          onTap: () {})
                  ],
                ),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: SizedBox(
                    width: 175,
                    child: CustomText(
                      restaurant.title,
                      20,
                      Colors.black,
                      1,
                      "Futura",
                      FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(
              Icons.more_horiz_rounded,
              color: MyColors.darkGray,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}

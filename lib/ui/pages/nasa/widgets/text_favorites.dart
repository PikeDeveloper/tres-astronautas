import 'package:flutter/material.dart';
import '../../../../utils/colors.dart';
import '../../../shared/circle_button.dart';
import '../../../shared/custom_text.dart';

class TextFavoritesAndIcon extends StatelessWidget {
  const TextFavoritesAndIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding:
          EdgeInsets.only(left: screenWidth * 0.035, right: screenWidth * 0.05),
      child: Row(
        children: [
          const CustomText(
            "Favorites",
            35,
            Colors.black,
            1.5,
            "Futuris",
            FontWeight.w700,
          ),
          const Spacer(),
          CircleButton(
              size: 45,
              color: MyColors.grayBackGround,
              padding: 0,
              onTap: () {},
              child: const Center(
                  child: Text(
                "+",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
              ))),
        ],
      ),
    );
  }
}

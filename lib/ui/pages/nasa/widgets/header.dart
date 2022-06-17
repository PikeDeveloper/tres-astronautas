import 'package:flutter/material.dart';
import '../../../shared/circle_button.dart';

class NasaHeader extends StatelessWidget {
  const NasaHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(
          top: screenWidth * 0.01,
          left: screenWidth * 0.03,
          right: screenWidth * 0.05),
      child: Row(
        children: [
          Image.asset("assets/images/nasa_logo.png", width: screenWidth * 0.21),
          const Spacer(),
          CircleButton(
            size: 40,
            color: Colors.white,
            padding: 10,
            onTap: () {},
            child: const ImageIcon(
                AssetImage(
                  "assets/images/notificationApp.png",
                ),
                size: 32,
                color: Colors.black),
          ),
          const SizedBox(width: 10),
          CircleButton(
              size: 40,
              color: Colors.white,
              padding: 10,
              onTap: () {},
              child: const ImageIcon(
                  AssetImage(
                    "assets/images/setting_icon.png",
                  ),
                  size: 32,
                  color: Colors.black)),
        ],
      ),
    );
  }
}

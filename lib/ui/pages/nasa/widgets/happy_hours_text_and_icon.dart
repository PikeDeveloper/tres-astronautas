import 'package:flutter/material.dart';
import '../../../../utils/colors.dart';
import '../../../shared/circle_button.dart';
import '../../../shared/custom_text.dart';

class HappyHoursAndIcon extends StatelessWidget {
  const HappyHoursAndIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 23, 20, 13),
      child: Row(
        children: [
          const CustomText(
            "Happy Hours",
            25,
            Colors.black,
            1.5,
            "Futura",
            FontWeight.bold,
          ),
          const Spacer(),
          CircleButton(
              size: 40,
              color: MyColors.grayBackGround,
              padding: 0,
              onTap: () {},
              child: const Center(
                child: ImageIcon(
                    AssetImage(
                      "assets/images/trash-icon.png",
                    ),
                    size: 26,
                    color: Color.fromARGB(255, 3, 3, 3)),
              )),
        ],
      ),
    );
  }
}

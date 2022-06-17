import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tresastronautas/utils/colors.dart';
import '../../../../providers/main_provider.dart';
import '../../../shared/custom_text.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //screensize
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      // padding: const EdgeInsets.only(bottom: 5, top: 12),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: screenWidth - 40,
            height: 2,
            color: MyColors.grayBackGround,
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              ButtonBar(
                text: "Home",
                picture: "assets/images/Home-icon.png",
                index: 0,
              ),
              ButtonBar(
                text: "Calendar",
                picture: "assets/images/Calendar-icon.png",
                index: 1,
              ),
              ButtonBar(
                text: "Search ",
                picture: "assets/images/finder.png",
                index: 2,
              ),
              ButtonBar(
                text: "Favoritos",
                picture: "assets/images/Heart-icon.png",
                index: 3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ButtonBar extends StatelessWidget {
  const ButtonBar({
    required this.text,
    required this.picture,
    required this.index,
    Key? key,
  }) : super(key: key);

  final String text;
  final String picture;

  final int index;

  @override
  Widget build(BuildContext context) {
    //mainprovider
    final mainProvider = Provider.of<MainProvider>(context);

    return TextButton(
      onPressed: () {
        mainProvider.currentBarButon = index;
      },
      child: Row(
        children: [
          ImageIcon(
            AssetImage(
              picture,
            ),
            size: 30,
            color: mainProvider.currentBarButon == index
                ? const Color.fromARGB(255, 0, 0, 0)
                : const Color.fromARGB(255, 156, 156, 156),
          ),
          if (mainProvider.currentBarButon == index)
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: CustomText(
                text,
                18,
                Colors.black,
                1,
                "Report",
                FontWeight.w400,
              ),
            ),
        ],
      ),
    );
  }
}

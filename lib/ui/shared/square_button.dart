import 'package:tresastronautas/ui/shared/custom_text.dart';
import 'package:tresastronautas/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/main_provider.dart';

class SquareButton extends StatelessWidget {
  const SquareButton({
    required this.index,
    required this.text,
    Key? key,
  }) : super(key: key);
  final int index;
  final String text;

  @override
  Widget build(BuildContext context) {
    final mainProvider = Provider.of<MainProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: mainProvider.currentFilterButton == index
              ? MyColors.orange
              : Colors.white,
          boxShadow: const [
            BoxShadow(
            color: Color.fromARGB(255, 194, 192, 192),
            blurRadius: 5.0,
            spreadRadius: -2.0,
            offset: Offset(0, 3),
          )
          ],
        ),
        child: TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size(50, 30),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              alignment: Alignment.center),
          onPressed: () {
            mainProvider.currentFilterButton = index;
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: (text.length * 1) + 7, vertical: 10),
            child: CustomText(
              text,
              20,
              mainProvider.currentFilterButton == index
                  ? Colors.white
                  : Colors.black,
              1,
              "Futura",
              FontWeight.w100,
            ),
          ),
        ),
      ),
    );
  }
}

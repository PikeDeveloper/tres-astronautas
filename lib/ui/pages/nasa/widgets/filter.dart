import 'package:tresastronautas/ui/shared/square_button.dart';
import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            SquareButton(
              index: 0,
              text: "All",
            ),
            SquareButton(
              index: 1,
              text: "Happy Hour",
            ),
            SquareButton(
              index: 2,
              text: "Drinks",
            ),
            SquareButton(
              index: 3,
              text: "Beers",
            ),
            SquareButton(
              index: 4,
              text: "cocktails",
            ),
          ],
        ),
      ),
    );
  }
}

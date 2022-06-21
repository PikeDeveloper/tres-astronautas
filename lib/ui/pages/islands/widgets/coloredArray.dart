import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../providers/isalnd_provider.dart';
import 'colored_bool.dart';

class ColoredArray extends StatelessWidget {
  const ColoredArray({Key? key, required this.customArray}) : super(key: key);
  final List<List<int>> customArray;

  @override
  Widget build(BuildContext context) {
    IslandProvider islands = Provider.of<IslandProvider>(context);
    int columns = islands.islandColumn;
    List<Widget> coloredRow = [];
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ListView.builder(
        shrinkWrap: false,
        itemCount: customArray.length,
        itemBuilder: ((context, index) {
          coloredRow = [];
          for (int i = 0; i < columns; i++) {
            if (customArray[index][i] == 1) {
              coloredRow.add(ColoredBool(bit: 1));
            } else {
              coloredRow.add(ColoredBool(bit: 0));
            }
          }
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: coloredRow,
          );
        }),
      ),
    );
  }
}

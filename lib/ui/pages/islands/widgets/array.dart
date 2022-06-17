import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tresastronautas/ui/pages/islands/widgets/functions.dart';
import '../../../../providers/isalnd_provider.dart';

class CustomArray extends StatelessWidget {
  const CustomArray({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IslandProvider islands = Provider.of<IslandProvider>(context);
    int rows = islands.islandRow;
    int columns = islands.islandColumn;

    List<List<int>> custonArray = [];

    for (int i = 0; i < rows; i++) {
      custonArray.add(newRow(columns));
    }

    return Expanded(
      child: Container(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: custonArray.length,
          itemBuilder: ((context, index) {
            return Text(
              custonArray[index].toString(),
              style: TextStyle(fontSize: 20),
            );
          }),
        ),
      ),
    );
  }

  List<int> newRow(int columns) {
    List<int> customColumns = [];
    for (int i = 0; i < columns; i++) {
      customColumns.add(Functions.randomBool());
    }
    return customColumns;
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';
import 'package:tresastronautas/ui/pages/islands/widgets/functions.dart';
import '../../../../providers/isalnd_provider.dart';
import 'coloredArray.dart';
import 'number_of_island.dart';
import 'scroll_area.dart';

class CustomArray extends StatefulWidget {
  const CustomArray({Key? key}) : super(key: key);

  @override
  State<CustomArray> createState() => _CustomArrayState();
}

class _CustomArrayState extends State<CustomArray> {
  @override
  Widget build(BuildContext context) {
    IslandProvider islandsProvider =
        Provider.of<IslandProvider>(context,);
    int rows = islandsProvider.islandRow;
    int columns = islandsProvider.islandColumn;
    bool _switchValue = islandsProvider.onlyCrossIsland;
    List<List<int>> custonArray = Functions.newArray(rows, columns);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ScrollArea(
          child: ScrollArea(
            child: ColoredArray(
              customArray: custonArray,
            ),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Only Cross Island',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(width: 10),
            FlutterSwitch(
              width: 60.0,
              height: 25.0,
              valueFontSize: 14,
              toggleSize: 20.0,
              value: _switchValue,
              borderRadius: 30.0,
              padding: 2.0,
              showOnOff: true,
              onToggle: (val) {
                 islandsProvider.customArray = Functions.newArray(rows, columns);
                islandsProvider.onlyCrossIsland = _switchValue = val;
                setState(() {});
              },
            ),
          ],
        ),
        SizedBox(height: 50),
        NumberOfIsland(array: custonArray),
        IconButton(
            onPressed: () {
              islandsProvider.customArray = Functions.newArray(rows, columns);
              setState(() {});
            },
            icon: Icon(
              Icons.refresh,
              color: Colors.blue,
              size: 30,
            ))
      ],
    );
  }
}

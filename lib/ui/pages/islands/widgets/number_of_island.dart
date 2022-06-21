import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tresastronautas/ui/pages/islands/widgets/functions.dart';
import '../../../../providers/isalnd_provider.dart';

class NumberOfIsland extends StatelessWidget {
  const NumberOfIsland({Key? key, required this.array}) : super(key: key);
  final List<List<int>> array;

  @override
  Widget build(BuildContext context) {
    final onlyCrossIsland =
        Provider.of<IslandProvider>(context).onlyCrossIsland;

    return Text(Functions.calculateIsland(array, onlyCrossIsland).toString(),
        style: TextStyle(fontSize: 18, color: Colors.blue));
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../providers/isalnd_provider.dart';

class InPutRow extends StatelessWidget {
  const InPutRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IslandProvider islandProvider = Provider.of<IslandProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: 150,
      height: 50,
      child: Row(
        children: [
          Text("Rows: "),
          Expanded(
            child: TextFormField(
              initialValue: "9",
              keyboardType: TextInputType.numberWithOptions(decimal: false),
              onChanged: (value) {
                islandProvider.islandRow = int.parse(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}

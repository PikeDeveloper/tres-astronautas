import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../providers/isalnd_provider.dart';

class InPutColunm extends StatelessWidget {
  const InPutColunm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IslandProvider islandProvider = Provider.of<IslandProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: 150,
      height: 50,
      child: Expanded(
        child: Row(
          children: [
            Text("Columns: "),
            Expanded(
              child: TextFormField(
                initialValue: "3",
                keyboardType: TextInputType.numberWithOptions(decimal: false),
                onChanged: (value) {
                  islandProvider.islandColumn = int.parse(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

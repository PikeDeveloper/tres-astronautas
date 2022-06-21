import 'package:flutter/material.dart';
import 'package:tresastronautas/ui/pages/nasa/nasa_home.dart';
import 'widgets/array.dart';
import 'widgets/input_column.dart';
import 'widgets/input_row.dart';
import 'widgets/scroll_area.dart';

class Islands extends StatelessWidget {
  static const String route = "/islands";
  const Islands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,  
              children: <Widget>[
                SizedBox(height: 70),
                InPutColunm(),
                InPutRow(),
                SizedBox(height: 10),
                CustomArray(),
                SizedBox(height: 20),
              ],
            ),
          ),
          Positioned(
            top: 30,
            right: 30,
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, NasaHome.route);
                },
                child: Text(
                  "Ir a NASA",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                )),
          ),
        ],
      ),
    );
  }
}

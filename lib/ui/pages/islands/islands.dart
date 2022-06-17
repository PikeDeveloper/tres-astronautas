import 'package:flutter/material.dart';
import 'package:tresastronautas/ui/pages/nasa/nasa_home.dart';
import 'widgets/array.dart';
import 'widgets/input_column.dart';
import 'widgets/input_row.dart';

class Islands extends StatelessWidget {
  static const String route = "/islands";
  const Islands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: <Widget>[
              SizedBox(height: 100),
              InPutColunm(),
              InPutRow(),
              SizedBox(height: 10),
              CustomArray(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                    "No me alcanzó el tiempo para calcular las islas",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
              ),
            ],
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

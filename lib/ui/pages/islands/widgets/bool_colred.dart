import 'package:flutter/material.dart';

class BoolColored extends StatelessWidget {
  const BoolColored({Key? key, required this.digit}) : super(key: key);
  final int digit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      color: digit == 1 ? Colors.brown : Color.fromARGB(255, 44, 154, 243),
      child: Text(
        digit.toString(),
        style: TextStyle(fontSize: 10, color: Colors.white),
      ),
    );
  }
}

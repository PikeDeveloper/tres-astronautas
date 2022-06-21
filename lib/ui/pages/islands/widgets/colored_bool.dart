import 'package:flutter/material.dart';

class ColoredBool extends StatelessWidget {
ColoredBool({Key? key, required this.bit}) : super(key: key);
  final int bit;

  @override
   Widget build(BuildContext context) {
    double side = 20;
    return Container(
      decoration: BoxDecoration(
        color: bit == 1 ? Colors.brown : Colors.blue,
      ),
      width: side,
      height: side,
      child: Center(
        child: Text(
        bit.toString(),
          style: TextStyle(fontSize: 12, color: Colors.white),
        ),
      ),
    );
  }
}
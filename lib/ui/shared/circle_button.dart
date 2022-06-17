import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    required this.size,
    required this.color,
    required this.padding,
    required this.child,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final double size;
  final Color color;
  final double padding;
  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 120, 119, 119),
            blurRadius: 10.0,
            spreadRadius: -10.0,
            offset: Offset(0, 6),
          )
        ],
      ),
      child: Material(
        borderRadius: BorderRadius.circular(50),
        color: color,
        child: InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: child,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ScrollArea extends StatelessWidget {
  ScrollArea({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final _verticalScrollController = ScrollController();
    final _horizontalScrollController = ScrollController();
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          controller: _verticalScrollController,
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            controller: _horizontalScrollController,
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0, bottom: 16.0),
              child: Container(
                width: screenWidth,
                height: screenWidth * 0.8,
                child: child,
              ),
            ),
          ),
        ));
  }
}

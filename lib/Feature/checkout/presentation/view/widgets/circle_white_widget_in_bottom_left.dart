import 'package:flutter/material.dart';

class CircleWhiteWidgetInBottomLeft extends StatelessWidget {
  const CircleWhiteWidgetInBottomLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: -20,
      bottom: MediaQuery.of(context).size.height * 0.2,
      child: CircleAvatar(radius: 20, backgroundColor: Colors.white),
    );
  }
}

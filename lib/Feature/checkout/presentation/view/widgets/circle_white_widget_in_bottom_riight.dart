import 'package:flutter/material.dart';

class CircleWhiteWidgetInBottomRight extends StatelessWidget {
  const CircleWhiteWidgetInBottomRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -20,
      bottom: MediaQuery.of(context).size.height * 0.2,
      child: CircleAvatar(radius: 20, backgroundColor: Colors.white),
    );
  }
}

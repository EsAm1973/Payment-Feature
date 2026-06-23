import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.2 + 20,
      right: 20 + 5,
      left: 20 + 5,
      child: DottedLine(
        direction: Axis.horizontal,
        lineThickness: 2.0,
        dashLength: 8.0,
        dashColor: const Color(0xFFB7B7B7),
      ),
    );
  }
}

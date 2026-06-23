import 'package:flutter/material.dart';

class SuccessCheckWidget extends StatelessWidget {
  const SuccessCheckWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -50,
      left: 0,
      right: 0,
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Color(0xFFD9D9D9),
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Colors.green,
          child: Icon(Icons.check, size: 60, color: Colors.white),
        ),
      ),
    );
  }
}

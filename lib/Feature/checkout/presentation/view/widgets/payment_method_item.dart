import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentOptionButton extends StatelessWidget {
  final String assetPath;
  final bool isSelected;
  final VoidCallback onTap;

  const PaymentOptionButton({
    super.key,
    required this.assetPath,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color borderColor = isSelected ? Colors.green : Colors.grey[300]!;
    final double borderWidth = isSelected ? 3.0 : 1.0;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 150,
        height: 70,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: borderColor, width: borderWidth),
        ),
        child: Center(child: SvgPicture.asset(assetPath, fit: BoxFit.contain)),
      ),
    );
  }
}

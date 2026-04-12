import 'package:flutter/material.dart';
import 'package:payment_feature/Core/utils/spp_text_styles.dart';

class CustomPaymentButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const CustomPaymentButton({
    super.key,
    required this.onPressed,
    this.label = 'Complete Payment',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        height: 70,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF31A05F),
            foregroundColor: Colors.black,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            textStyle: AppTextStyles.style22,
          ),
          child: Text(label),
        ),
      ),
    );
  }
}

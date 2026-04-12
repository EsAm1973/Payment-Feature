import 'package:flutter/material.dart';
import 'package:payment_feature/Core/utils/spp_text_styles.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildSummaryRow("Order Subtotal", "\$42.97"),
          const SizedBox(height: 8),
          _buildSummaryRow("Discount", "\$0"),
          const SizedBox(height: 8),
          _buildSummaryRow("Shipping", "\$8"),
          const SizedBox(height: 16),
          const Divider(thickness: 1, color: Colors.grey),
          const SizedBox(height: 16),
          _buildSummaryRow("Total", "\$50.97", isTotal: true),
        ],
      ),
    );
  }

  Widget _buildSummaryRow(String label, String value, {bool isTotal = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: isTotal ? AppTextStyles.style24 : AppTextStyles.style18,
        ),
        Text(
          value,
          style: isTotal ? AppTextStyles.style24 : AppTextStyles.style18,
        ),
      ],
    );
  }
}

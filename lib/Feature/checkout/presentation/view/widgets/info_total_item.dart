import 'package:flutter/material.dart';
import 'package:payment_feature/Core/utils/spp_text_styles.dart';

class ItemInfoRow extends StatelessWidget {
  final String title;
  final String value;

  const ItemInfoRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyles.style18.copyWith(fontWeight: FontWeight.w400),
          ),
          Text(
            value,
            style: AppTextStyles.style18.copyWith(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_feature/Core/utils/spp_text_styles.dart';

class CardWidgetNameAndNumber extends StatelessWidget {
  const CardWidgetNameAndNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/mastercard.svg',
              fit: BoxFit.contain,
              width: 35,
              height: 35,
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Credit Card', style: AppTextStyles.style18),

                Text('Mastercard **78', style: AppTextStyles.style18),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

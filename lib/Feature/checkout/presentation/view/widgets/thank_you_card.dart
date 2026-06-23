import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_feature/Core/utils/spp_text_styles.dart';
import 'package:payment_feature/Feature/checkout/presentation/view/widgets/card_widget_name_and_number.dart';
import 'package:payment_feature/Feature/checkout/presentation/view/widgets/info_total_item.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50 + 10),
      child: Column(
        children: [
          Text(
            'Thank you!',
            textAlign: TextAlign.center,
            style: AppTextStyles.style25,
          ),
          SizedBox(height: 4),
          Text(
            'Your transaction was successful',
            textAlign: TextAlign.center,
            style: AppTextStyles.style20,
          ),
          SizedBox(height: 42),
          ItemInfoRow(title: 'Date', value: '2023-08-15'),
          SizedBox(height: 20),
          ItemInfoRow(title: 'Time', value: '10:00 AM'),
          SizedBox(height: 20),
          ItemInfoRow(title: 'To', value: 'Cairo'),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: const Divider(color: Color(0xFFC6C6C6), thickness: 1.5),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.85),
                  ),
                ),
                const Text(
                  '\$50.97',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          CardWidgetNameAndNumber(),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FaIcon(FontAwesomeIcons.barcode, size: 70),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 20,
                  ),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1.50,
                        color: const Color(0xFF34A853),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'PAID',
                    style: AppTextStyles.style18.copyWith(
                      color: const Color(0xFF34A853),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height * 0.2 + 20) / 2 - 29,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:payment_feature/Feature/checkout/presentation/view/widgets/circle_white_widget_in_bottom_left.dart';
import 'package:payment_feature/Feature/checkout/presentation/view/widgets/circle_white_widget_in_bottom_riight.dart';
import 'package:payment_feature/Feature/checkout/presentation/view/widgets/dashed_line.dart';
import 'package:payment_feature/Feature/checkout/presentation/view/widgets/success_check_widget.dart';
import 'package:payment_feature/Feature/checkout/presentation/view/widgets/thank_you_card.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: ShapeDecoration(
                color: const Color(0xFFD9D9D9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: ThankYouCard(),
            ),
            CircleWhiteWidgetInBottomLeft(),
            DashedLine(),
            CircleWhiteWidgetInBottomRight(),
            SuccessCheckWidget(),
          ],
        ),
      ),
    );
  }
}

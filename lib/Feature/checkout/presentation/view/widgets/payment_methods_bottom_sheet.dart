import 'package:flutter/material.dart';
import 'package:payment_feature/Core/componant/custom_pay_botton.dart';
import 'package:payment_feature/Feature/checkout/presentation/view/widgets/payment_methods_row.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentMethodsRow(),
          SizedBox(height: 20),
          CustomPaymentButton(onPressed: () {}, label: 'Continue'),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:payment_feature/Core/componant/custom_pay_botton.dart';
import 'package:payment_feature/Feature/checkout/presentation/view/widgets/order_summary.dart';
import 'package:payment_feature/Feature/checkout/presentation/view/widgets/payment_methods_bottom_sheet.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Center(child: Image.asset('assets/cart_image.png')),
          SizedBox(height: 20),
          OrderSummary(),
          SizedBox(height: 16),
          CustomPaymentButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => const PaymentMethodsBottomSheet(),
              );
            },
            label: 'Complete Payment',
          ),
        ],
      ),
    );
  }
}

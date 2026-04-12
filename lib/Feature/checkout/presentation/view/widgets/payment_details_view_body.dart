import 'package:flutter/material.dart';
import 'package:payment_feature/Feature/checkout/presentation/view/widgets/payment_methods_row.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(children: [PaymentMethodsRow()]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:payment_feature/Core/componant/custom_pay_botton.dart';
import 'package:payment_feature/Core/routing/app_routes.dart';
import 'package:payment_feature/Feature/checkout/presentation/view/widgets/order_summary.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Column(
      children: [
        SizedBox(height: 10),
        Center(child: Image.asset('assets/basket.png')),
      ],
=======
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
              GoRouter.of(context).push(AppRoutes.paymentDetailsViewRoute);
            },
            label: 'Complete Payment',
          ),
        ],
      ),
>>>>>>> 18c273161f24db5d168bc81d507d68b9832e5626
    );
  }
}

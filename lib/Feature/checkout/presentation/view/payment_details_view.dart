import 'package:flutter/material.dart';
import 'package:payment_feature/Core/utils/spp_text_styles.dart';
import 'package:payment_feature/Feature/checkout/presentation/view/widgets/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Payment Details',
          textAlign: TextAlign.center,
          style: AppTextStyles.style25,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(child: const PaymentDetailsViewBody()),
    );
  }
}

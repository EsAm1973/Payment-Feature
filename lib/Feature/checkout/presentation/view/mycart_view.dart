import 'package:flutter/material.dart';
import 'package:payment_feature/Core/utils/spp_text_styles.dart';
import 'package:payment_feature/Feature/checkout/presentation/view/widgets/mycart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Cart',
          textAlign: TextAlign.center,
          style: AppTextStyles.style25,
        ),
      ),
      body: SafeArea(child: const MyCartViewBody()),
    );
  }
}

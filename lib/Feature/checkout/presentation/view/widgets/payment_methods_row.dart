import 'package:flutter/material.dart';
import 'package:payment_feature/Feature/checkout/presentation/view/widgets/payment_method_item.dart';

class PaymentMethodsRow extends StatefulWidget {
  const PaymentMethodsRow({super.key});

  @override
  State<PaymentMethodsRow> createState() => _PaymentMethodsRowState();
}

class _PaymentMethodsRowState extends State<PaymentMethodsRow> {
  int _selectedIndex = 0;
  final List<String> _paymentAssets = [
    'assets/card.svg',
    'assets/paypal.svg',
    'assets/apple_pay.svg',
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: PaymentOptionButton(
            assetPath: _paymentAssets[0],
            isSelected: _selectedIndex == 0,
            onTap: () {
              setState(() {
                _selectedIndex = 0;
              });
            },
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: PaymentOptionButton(
            assetPath: _paymentAssets[1],
            isSelected: _selectedIndex == 1,
            onTap: () {
              setState(() {
                _selectedIndex = 1;
              });
            },
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: PaymentOptionButton(
            assetPath: _paymentAssets[2],
            isSelected: _selectedIndex == 2,
            onTap: () {
              setState(() {
                _selectedIndex = 2;
              });
            },
          ),
        ),
      ],
    );
  }
}

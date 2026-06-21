import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

// ignore: must_be_immutable
class CustomCreditCard extends StatelessWidget {
  const CustomCreditCard({
    super.key,
    required this.formKey,
    required this.autovalidateMode,
    required this.cardNumber,
    required this.expiryDate,
    required this.cardHolderName,
    required this.cvvCode,
    required this.showBackView,
    required this.onCreditCardModelChange,
  });

  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;

  final String cardNumber;
  final String expiryDate;
  final String cardHolderName;
  final String cvvCode;
  final bool showBackView;

  final ValueChanged<CreditCardModel> onCreditCardModelChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          onCreditCardWidgetChange: (_) {},
          isHolderNameVisible: true,
        ),
        const SizedBox(height: 20),
        CreditCardForm(
          formKey: formKey,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: onCreditCardModelChange,
          autovalidateMode: autovalidateMode,
        ),
      ],
    );
  }
}

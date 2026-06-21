import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:payment_feature/Core/componant/custom_pay_botton.dart';
import 'package:payment_feature/Feature/checkout/presentation/view/widgets/custom_credit_card.dart';
import 'package:payment_feature/Feature/checkout/presentation/view/widgets/payment_methods_row.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  String _cardNumber = '';
  String _expiryDate = '';
  String _cardHolderName = '';
  String _cvvCode = '';
  bool _showBackView = false;

  void _onPayPressed() {
    final isValid = _formKey.currentState?.validate() ?? false;

    if (isValid) {
      _formKey.currentState?.save();

      return;
    }

    setState(() {
      _autovalidateMode = AutovalidateMode.always;
    });
  }

  void _onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      _cardNumber = creditCardModel.cardNumber;
      _expiryDate = creditCardModel.expiryDate;
      _cardHolderName = creditCardModel.cardHolderName;
      _cvvCode = creditCardModel.cvvCode;
      _showBackView = creditCardModel.isCvvFocused;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: PaymentMethodsRow()),
          SliverToBoxAdapter(
            child: CustomCreditCard(
              formKey: _formKey,
              autovalidateMode: _autovalidateMode,
              cardNumber: _cardNumber,
              expiryDate: _expiryDate,
              cardHolderName: _cardHolderName,
              cvvCode: _cvvCode,
              showBackView: _showBackView,
              onCreditCardModelChange: _onCreditCardModelChange,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomPaymentButton(
                label: 'Pay',
                onPressed: _onPayPressed,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

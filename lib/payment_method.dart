import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool showBack = false;
  OutlineInputBorder? border;
  final _formKey = GlobalKey<FormState>();
  bool showCreditCard = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text('Payment Method',
              style: TextStyle(color: Colors.black)),
          toolbarHeight: 70,
          backgroundColor: Colors.white,
        ),
        body: ListView(children: [
          GestureDetector(
            onTap: () {
              setState(() {
                showBack = !showBack;
              });
            },
            child: CreditCardWidget(
              cardNumber: cardNumber,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              expiryDate: expiryDate,
              showBackView: showBack,
              obscureCardNumber: false,
              obscureCardCvv: false,
              onCreditCardWidgetChange: (CreditCardBrand) {},
            ),
          ),
          CreditCardForm(
            formKey: _formKey,
            cardNumber: cardNumber,
            cvvCode: cvvCode,
            themeColor: const Color.fromRGBO(240, 81, 147, 1),
            textColor: Colors.black,
            cardNumberDecoration: InputDecoration(
              labelText: 'Card Number',
              hintText: 'XXXX XXXX XXXX XXXX',
              focusedBorder: border,
              enabledBorder: border,
              hintStyle: const TextStyle(color: Colors.black),
              labelStyle: const TextStyle(color: Colors.grey),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18.0)),
            ),
            expiryDateDecoration: InputDecoration(
              hintStyle: const TextStyle(color: Colors.black),
              labelStyle: const TextStyle(color: Colors.grey),
              labelText: 'Expired Date',
              hintText: 'XX/XX',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18.0)),
            ),
            cvvCodeDecoration: InputDecoration(
              hintStyle: const TextStyle(color: Colors.black),
              labelStyle: const TextStyle(color: Colors.grey),
              labelText: 'CVV',
              hintText: 'XXX',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18.0)),
            ),
            cardHolderDecoration: InputDecoration(
              hintStyle: const TextStyle(color: Colors.black),
              labelStyle: const TextStyle(color: Colors.grey),
              labelText: 'Card Name',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18.0)),
            ),
            onCreditCardModelChange: onCreditCardModelChange,
            cardHolderName: '',
            expiryDate: '',
          ),
        ]));
  }

  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:fooddelivery/profile.dart';

class DailyDeli extends StatefulWidget {
  const DailyDeli({Key? key}) : super(key: key);

  @override
  State<DailyDeli> createState() => _DailyDeliState();
}

class _DailyDeliState extends State<DailyDeli> {
  bool showBack = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: Row(children: [
            Text('Daily Deli', style: TextStyle(color: Colors.black)),
            Spacer(),
            Text('23 Jun, 2020',
                style: TextStyle(color: Colors.grey, fontSize: 17))
          ]),
          toolbarHeight: 70,
          backgroundColor: Colors.white,
        ),
        body: ListView(children: [
          Padding(
              padding: EdgeInsets.only(right: 15.0, left: 30.00, top: 30),
              child: Text('Order Summary',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Row(children: [
              Expanded(
                flex: 7,
                child: Text('1x Chicken Fajita Pizza',
                    style: TextStyle(fontSize: 17)),
              ),
              Expanded(
                child: Text('\$20',
                    style: TextStyle(color: Colors.grey, fontSize: 17)),
              )
            ]),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Row(children: [
              Expanded(
                flex: 7,
                child: Text('3x Chicken Wrap Deluxe',
                    style: TextStyle(fontSize: 17)),
              ),
              Expanded(
                child: Text('\$30',
                    style: TextStyle(color: Colors.grey, fontSize: 17)),
              )
            ]),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Row(children: [
              Expanded(
                flex: 7,
                child: Text('Subtotal', style: TextStyle(fontSize: 17)),
              ),
              Expanded(
                child: Text('\$50',
                    style: TextStyle(color: Colors.grey, fontSize: 17)),
              )
            ]),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Row(children: [
              Expanded(
                flex: 7,
                child: Text('Delivery Fee', style: TextStyle(fontSize: 17)),
              ),
              Expanded(
                child: Text('\$10',
                    style: TextStyle(color: Colors.grey, fontSize: 17)),
              )
            ]),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Row(children: [
              Expanded(
                flex: 7,
                child: Text('Vat', style: TextStyle(fontSize: 17)),
              ),
              Expanded(
                child: Text('\$4',
                    style: TextStyle(color: Colors.grey, fontSize: 17)),
              )
            ]),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Row(children: [
              Expanded(
                flex: 7,
                child: Text('Coupon', style: TextStyle(fontSize: 17)),
              ),
              Expanded(
                child: Text('-\$4',
                    style: TextStyle(color: Colors.green, fontSize: 17)),
              )
            ]),
          ),
          SizedBox(height: 10),
          Divider(thickness: 5),
          Padding(
              padding: EdgeInsets.only(right: 15.0, left: 30.00, top: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Delivery Address',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    SizedBox(height: 10),
                    Text('Block P Phase 1 Johar Town,Lahore',
                        style: TextStyle(color: Colors.grey, fontSize: 17)),
                    SizedBox(height: 10),
                  ])),
          Divider(thickness: 5),
          Padding(
              padding: EdgeInsets.only(right: 15.0, left: 30.00, top: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Delivery Instructions',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    SizedBox(height: 10),
                    Text('I am at home at around 9 PM',
                        style: TextStyle(color: Colors.grey, fontSize: 17)),
                    SizedBox(height: 10),
                  ])),
          Divider(thickness: 5),
          Padding(
              padding: EdgeInsets.only(right: 15.0, left: 30.00, top: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Payment Method',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          showBack = !showBack;
                        });
                      },
                      child: CreditCardWidget(
                        cardNumber: '1234123412344871',
                        cardHolderName: 'John Doe',
                        cvvCode: '123',
                        expiryDate: '02/2023',
                        showBackView: showBack,
                        obscureCardNumber: true,
                        obscureCardCvv: true,
                        onCreditCardWidgetChange: (CreditCardBrand) {},
                      ),
                    ),
                  ])),
          Padding(
              padding: const EdgeInsets.only(
                  right: 30.0, left: 30.00, bottom: 15.00, top: 30),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: const Color.fromRGBO(240, 81, 147, 1),
                padding: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                height: 55,
                child: const Text('Cancel Order',
                    style: TextStyle(color: Colors.white)),
              )),
          SizedBox(height: 30)
        ]));
  }
}

import 'package:flutter/material.dart';
import 'package:fooddelivery/models/order.dart';
import 'package:fooddelivery/orders/order_card.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    List<Order> orders = [
      Order('Daily Deli', '23 Jun, 2020', '\$25'),
      Order('Johny Jugnu', '10 Jun, 2020', '\$20'),
      Order('Daily Deli', '03 Mar, 2020', '\$120'),
      Order('Daily Deli', '28 Jun, 2020', '\$90'),
      Order('KFC', '24 Dec, 2019', '\$30'),
      Order('Pizza Heart', '07 Nov, 2019', '\$40'),
    ];
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text('My Orders', style: TextStyle(color: Colors.black)),
          toolbarHeight: 70,
          backgroundColor: Colors.white,
        ),
        body: ListView(children: [
          Padding(
              padding: EdgeInsets.only(
                  right: 30.0, left: 30.00, bottom: 30.00, top: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Recent Order',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/home_screen/Burger.png'),
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                    width: !isPortrait
                                        ? width * 0.91
                                        : width * 0.85,
                                    height: !isPortrait
                                        ? height * 0.5
                                        : height * 0.2,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Burger King',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    '\$80',
                                    style: TextStyle(fontSize: 16),
                                  )
                                ])),
                        Padding(
                            padding: const EdgeInsets.only(top: 20, left: 30),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/home_screen/Wrap.png'),
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                    width: !isPortrait
                                        ? width * 0.91
                                        : width * 0.85,
                                    height: !isPortrait
                                        ? height * 0.5
                                        : height * 0.2,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Wrap Factory',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    '\$30',
                                    style: TextStyle(fontSize: 16),
                                  )
                                ])),
                      ])),
                ],
              )),
          Divider(),
          Column(
              children: List.generate(
                  orders.length, (index) => OrderCard(order: orders[index])))
        ]));
  }
}

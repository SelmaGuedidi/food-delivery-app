import 'package:flutter/material.dart';
import 'package:fooddelivery/orders/order_summary.dart';

import 'package:fooddelivery/models/order.dart';

class OrderCard extends StatelessWidget {
  final Order order;
  const OrderCard({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    OrderSummary(title: order.title, date: order.date),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 10, right: 10),
            child: Row(children: [
              Expanded(
                flex: 7,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(order.title, style: TextStyle(fontSize: 17)),
                      Text(order.date,
                          style: TextStyle(color: Colors.grey, fontSize: 17))
                    ]),
              ),
              Expanded(
                child: Text(order.price,
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
              ),
              Expanded(child: Icon(Icons.arrow_forward_ios_sharp))
            ]),
          ),
        ),
        Divider()
      ],
    );
  }
}

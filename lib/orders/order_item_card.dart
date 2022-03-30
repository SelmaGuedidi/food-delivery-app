import 'package:flutter/material.dart';
import 'package:fooddelivery/models/order_item.dart';

class OrderItemCard extends StatelessWidget {
  final OrderItem orderItem;
  const OrderItemCard({Key? key, required this.orderItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 20),
          child: Row(children: [
            Expanded(
              flex: 7,
              child: Text('${orderItem.quantity}x ${orderItem.title}',
                  style: TextStyle(fontSize: 17)),
            ),
            Expanded(
              child: Text(orderItem.price,
                  style: TextStyle(color: Colors.grey, fontSize: 17)),
            )
          ]),
        ),
        Divider(),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fooddelivery/models/notification.dart';

class NotificationCard extends StatelessWidget {
  final NotificationItem notification;
  const NotificationCard({Key? key, required this.notification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(left: 30, top: 10, bottom: 10),
        child: Row(children: [
          Expanded(
            flex: 7,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(notification.text, style: TextStyle(fontSize: 17)),
              if (notification.multiple)
                Text(notification.text2,
                    style: TextStyle(color: Colors.grey, fontSize: 17))
            ]),
          ),
          Expanded(
            child: Text(notification.time,
                style: TextStyle(color: Colors.grey, fontSize: 17)),
          )
        ]),
      ),
      Divider()
    ]);
  }
}

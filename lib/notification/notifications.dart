import 'package:flutter/material.dart';
import 'package:fooddelivery/models/notification.dart';
import 'package:fooddelivery/notification/notification_card.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  List<NotificationItem> notifications = [
    NotificationItem('Your order has arrived', '2m', false),
    NotificationItem('Your order is on its way', '50m', false),
    NotificationItem('Your order has been placed', '1h', false),
    NotificationItem('Confirm your phone number', '5d', false),
    NotificationItem.second('We have updated our Privacy Policy', '6d', true,
        'View Privacy Policy'),
    NotificationItem('Your order has been cancelled', '1w', false),
    NotificationItem('Your order has been placed', '1w', false),
    NotificationItem.second(
        'Welcome to Foodeck', '1w', true, 'Watch our video'),
  ];
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
            padding: EdgeInsets.only(
                right: 15.0, left: 30.00, bottom: 30.00, top: 30),
            child: Text('Notifications',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
        Column(
          children: List.generate(notifications.length,
              (index) => NotificationCard(notification: notifications[index])),
        )
      ],
    );
  }
}

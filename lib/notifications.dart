import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
            padding: EdgeInsets.only(
                right: 15.0, left: 30.00, bottom: 30.00, top: 30),
            child: Text('Notifications',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(children: [
            Expanded(
              flex: 7,
              child: Text('Your order has arrived',
                  style: TextStyle(fontSize: 17)),
            ),
            Expanded(
              child: Text('2m',
                  style: TextStyle(color: Colors.grey, fontSize: 17)),
            )
          ]),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 20, right: 10),
          child: Row(children: [
            Expanded(
              flex: 7,
              child: Text('Your order is on its way',
                  style: TextStyle(fontSize: 17)),
            ),
            Expanded(
              child: Text('50m',
                  style: TextStyle(color: Colors.grey, fontSize: 17)),
            )
          ]),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 20, right: 10),
          child: Row(children: [
            Expanded(
              flex: 7,
              child: Text('Your order has been placed',
                  style: TextStyle(fontSize: 17)),
            ),
            Expanded(
              child: Text('1h',
                  style: TextStyle(color: Colors.grey, fontSize: 17)),
            )
          ]),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 20, right: 10),
          child: Row(children: [
            Expanded(
              flex: 7,
              child: Text('Confirm your phone number',
                  style: TextStyle(fontSize: 17)),
            ),
            Expanded(
              child: Text('5d',
                  style: TextStyle(color: Colors.grey, fontSize: 17)),
            )
          ]),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 10, right: 10),
          child: Row(children: [
            Expanded(
              flex: 7,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('We have updated our Privacy Policy',
                        style: TextStyle(fontSize: 17)),
                    Text('View Privacy Policy',
                        style: TextStyle(color: Colors.grey, fontSize: 17))
                  ]),
            ),
            Expanded(
              child: Text('6d',
                  style: TextStyle(color: Colors.grey, fontSize: 17)),
            )
          ]),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 20, right: 10),
          child: Row(children: [
            Expanded(
              flex: 7,
              child: Text('Your order has been cancelled',
                  style: TextStyle(fontSize: 17)),
            ),
            Expanded(
              child: Text('1w',
                  style: TextStyle(color: Colors.grey, fontSize: 17)),
            )
          ]),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 20, right: 10),
          child: Row(children: [
            Expanded(
              flex: 7,
              child: Text('Your order has been placed',
                  style: TextStyle(fontSize: 17)),
            ),
            Expanded(
              child: Text('1w',
                  style: TextStyle(color: Colors.grey, fontSize: 17)),
            )
          ]),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 10, right: 10),
          child: Row(children: [
            Expanded(
              flex: 7,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Welcome to Foodeck', style: TextStyle(fontSize: 17)),
                    Text('Watch our video',
                        style: TextStyle(color: Colors.grey, fontSize: 17))
                  ]),
            ),
            Expanded(
              child: Text('1w',
                  style: TextStyle(color: Colors.grey, fontSize: 17)),
            )
          ]),
        ),
        Divider()
      ],
    );
  }
}

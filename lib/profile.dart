import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/account.dart';
import 'package:fooddelivery/location.dart';
import 'package:fooddelivery/login.dart';
import 'package:fooddelivery/orders/my_orders.dart';
import 'package:fooddelivery/my_reviews.dart';
import 'package:fooddelivery/payment_method.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 100),
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Image.asset('assets/home_screen/Avatar.png'),
          SizedBox(
            height: 10,
          ),
          Text('John Doe', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('Lahore, Pakistan', style: TextStyle(color: Colors.grey))
        ]),
        SizedBox(
          height: 70,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Account Settings',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromRGBO(240, 81, 147, 1))),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Account(),
                  ),
                );
              },
              child: Row(
                children: [
                  Expanded(child: Icon(Icons.account_circle_outlined)),
                  Expanded(flex: 7, child: Text("Account")),
                  Expanded(
                      child: IconButton(
                          onPressed: null, icon: Icon(Icons.arrow_forward)))
                ],
              ),
            ),
            Divider(),
            GestureDetector(
              child: Row(
                children: [
                  Expanded(child: Icon(Icons.location_on_outlined)),
                  Expanded(flex: 7, child: Text("My locations")),
                  Expanded(
                      child: IconButton(
                          onPressed: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Location(),
                              ),
                            );
                          }),
                          icon: Icon(Icons.arrow_forward)))
                ],
              ),
            ),
            Divider(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyOrders(),
                  ),
                );
              },
              child: Row(
                children: [
                  Expanded(child: Icon(Icons.shopping_bag_outlined)),
                  Expanded(flex: 7, child: Text("My orders")),
                  Expanded(
                      child: IconButton(
                          onPressed: null, icon: Icon(Icons.arrow_forward)))
                ],
              ),
            ),
            Divider(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentMethod(),
                  ),
                );
              },
              child: Row(
                children: [
                  Expanded(child: Icon(Icons.payment_outlined)),
                  Expanded(flex: 7, child: Text("Payment Methods")),
                  Expanded(
                      child: IconButton(
                          onPressed: null, icon: Icon(Icons.arrow_forward)))
                ],
              ),
            ),
            Divider(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyReviews(),
                  ),
                );
              },
              child: Row(
                children: [
                  Expanded(child: Icon(Icons.star_border_outlined)),
                  Expanded(flex: 7, child: Text("My reviews")),
                  Expanded(
                      child: IconButton(
                          onPressed: null, icon: Icon(Icons.arrow_forward)))
                ],
              ),
            ),
            Divider(),
            SizedBox(
              height: 50,
            ),
            Text('General Settings',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromRGBO(240, 81, 147, 1))),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(child: Icon(Icons.info_outlined)),
                Expanded(flex: 7, child: Text("About us")),
                Expanded(
                    child: IconButton(
                        onPressed: null, icon: Icon(Icons.arrow_forward)))
              ],
            ),
            Divider(),
            Row(
              children: [
                Expanded(child: Icon(Icons.storage_rounded)),
                Expanded(flex: 7, child: Text("Data usage")),
                Expanded(
                    child: IconButton(
                        onPressed: null, icon: Icon(Icons.arrow_forward)))
              ],
            ),
            Divider(),
            GestureDetector(
              onTap: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => login()),
                  (Route<dynamic> route) => false,
                );
              },
              child: Row(
                children: [
                  Expanded(child: Icon(Icons.logout_outlined)),
                  Expanded(flex: 7, child: Text("Sign out")),
                  Expanded(
                      child: IconButton(
                          onPressed: (() {
                            FirebaseAuth.instance.signOut();
                          }),
                          icon: Icon(Icons.arrow_forward)))
                ],
              ),
            ),
            Divider(),
            SizedBox(
              height: 50,
            )
          ]),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fooddelivery/home.dart';

class ThankYou extends StatelessWidget {
  const ThankYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 70, right: 70, top: 100),
            child: Column(children: [
              const Image(
                  image: AssetImage("assets/thank_you_screen/CheckCircle.png")),
              const Text(
                "Thank You for placing the \n                      order",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              const Text(
                  "We'll get to you as soon as \n                possible"),
              const SizedBox(height: 30),
              const Image(
                  image: AssetImage("assets/thank_you_screen/OnTheWay.png")),
              const SizedBox(height: 50),
            ])),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ));
            },
            color: const Color.fromRGBO(240, 81, 147, 1),
            padding: const EdgeInsets.all(10.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0)),
            height: 55,
            child: const Text('Go Home', style: TextStyle(color: Colors.white)),
          ),
        )
      ],
    ));
  }
}

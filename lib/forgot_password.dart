import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text('Forgot Password',
              style: TextStyle(
                color: Colors.black,
              )),
          toolbarHeight: 70,
          backgroundColor: Colors.white,
        ),
        body: ListView(children: [
          const Padding(
              padding: EdgeInsets.only(
                  right: 15.0, left: 15.00, bottom: 30.00, top: 30),
              child: Text('Input your credentials',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ))),
          Padding(
            padding:
                const EdgeInsets.only(right: 30.0, left: 30.00, bottom: 15.00),
            child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    labelText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.0)))),
          ),
          Padding(
              padding: const EdgeInsets.only(
                  right: 30.0, left: 30.00, bottom: 15.00, top: 30),
              child: MaterialButton(
                onPressed: () {},
                color: const Color.fromRGBO(240, 81, 147, 1),
                padding: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                height: 55,
                child:
                    const Text('Reset', style: TextStyle(color: Colors.white)),
              )),
        ]));
  }
}

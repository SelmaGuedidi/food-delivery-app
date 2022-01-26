import 'package:flutter/material.dart';
import 'package:fooddelivery/create_an_account.dart';
import 'package:fooddelivery/forgot_password.dart';

class login_via_email extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text('Login via Email',
              style: TextStyle(
                color: Colors.black,
              )),
          toolbarHeight: 70,
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: [
            const Padding(
                padding: EdgeInsets.only(
                    right: 15.0, left: 15.00, bottom: 30.00, top: 30),
                child: Text('Input your credentials',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ))),
            Padding(
                padding: const EdgeInsets.only(
                    right: 30.0, left: 30.00, bottom: 15.00),
                child: Column(children: [
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email),
                          labelText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18.0)))),
                  const SizedBox(height: 20),
                  TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          labelText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18.0)))),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => forgot_password()));
                        },
                        child: Text(
                          'Forgot password ?',
                          style: TextStyle(color: Colors.blue[200]),
                        ))
                  ]),
                  const SizedBox(height: 30),
                ])),
            Padding(
                padding: const EdgeInsets.only(
                    right: 30.0, left: 30.00, bottom: 15.00),
                child: MaterialButton(
                  onPressed: () {},
                  color: const Color.fromRGBO(240, 81, 147, 1),
                  padding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  height: 55,
                  child: const Text('Login',
                      style: TextStyle(color: Colors.white)),
                )),
            Padding(
                padding: const EdgeInsets.only(
                    right: 30.0, left: 30.00, bottom: 15.00),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (Context) => create_an_account(),
                      ),
                    );
                  },
                  color: Colors.white,
                  padding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  height: 55,
                  child: const Text('Create an account instead',
                      style: TextStyle(
                        color: Colors.black,
                      )),
                )),
          ],
        ));
  }
}

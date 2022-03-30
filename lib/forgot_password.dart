import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgotPassword extends StatefulWidget {
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
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
          Form(
              key: _formKey,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(
                      right: 30.0, left: 30.00, bottom: 15.00),
                  child: TextFormField(
                      controller: emailController,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Invalid email";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email),
                          labelText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18.0)))),
                )
              ])),
          Padding(
              padding: const EdgeInsets.only(
                  right: 30.0, left: 30.00, bottom: 15.00, top: 30),
              child: MaterialButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    print("Email: " + emailController.text);
                    try {
                      await FirebaseAuth.instance
                          .sendPasswordResetEmail(email: emailController.text);

                      Fluttertoast.showToast(
                          msg: "Check your email to change your password",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    } catch (e) {
                      if (e is FirebaseAuthException) {
                        Fluttertoast.showToast(
                            msg: e.message ?? "Unknown error",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.redAccent,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      }
                    }
                  }
                
                },
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

import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fooddelivery/create_an_account.dart';
import 'package:fooddelivery/forgot_password.dart';
import 'package:fooddelivery/home.dart';

class LoginViaEmail extends StatefulWidget {
  const LoginViaEmail({Key? key}) : super(key: key);

  @override
  State<LoginViaEmail> createState() => LoginViaEmailState();
}

class LoginViaEmailState extends State<LoginViaEmail> {
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool visiblePassword = false;
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  Future<void> submit() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });
      try {
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: emailController.text, password: passwordController.text)
            .then((value) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => Home()),
            (Route<dynamic> route) => false,
          );
        });
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
      setState(() {
        isLoading = false;
      });
    }
  }

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
            Form(
                key: _formKey,
                child: Column(children: [
                  Padding(
                      padding: const EdgeInsets.only(
                          right: 30.0, left: 30.00, bottom: 15.00),
                      child: Column(children: [
                        TextFormField(
                            controller: emailController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (!EmailValidator.validate(value!) ||
                                  value.isEmpty) {
                                return "Invalid email";
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.email),
                                labelText: 'Email',
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(18.0)))),
                        const SizedBox(height: 20),
                        TextFormField(
                            controller: passwordController,
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: visiblePassword ? false : true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Invalid password";
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.lock),
                                suffixIcon: IconButton(
                                    icon: Icon(visiblePassword
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined),
                                    onPressed: () {
                                      setState(() {
                                        visiblePassword = !visiblePassword;
                                      });
                                    }),
                                labelText: 'Password',
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(18.0)))),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ForgotPassword()));
                                  },
                                  child: Text(
                                    'Forgot password ?',
                                    style: TextStyle(color: Colors.blue[200]),
                                  ))
                            ]),
                        const SizedBox(height: 30),
                      ]))
                ])),
            Padding(
              padding: const EdgeInsets.only(
                  right: 30.0, left: 30.00, bottom: 15.00),
              child: MaterialButton(
                onPressed: isLoading
                    ? null
                    : () {
                        submit();
                      },
                color: const Color.fromRGBO(240, 81, 147, 1),
                padding: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                height: 55,
                child: isLoading
                    ? CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                        strokeWidth: 3,
                      )
                    : Text('Login', style: TextStyle(color: Colors.white)),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                    right: 30.0, left: 30.00, bottom: 15.00),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateAnAccount(),
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

import 'package:flutter/material.dart';
import 'package:fooddelivery/create_an_account.dart';
import 'package:fooddelivery/forgot_password.dart';

class LoginViaEmail extends StatefulWidget {
  const LoginViaEmail({Key? key}) : super(key: key);

  @override
  State<LoginViaEmail> createState() => LoginViaEmailState();
}

class LoginViaEmailState extends State<LoginViaEmail> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
        body: Form(
            key: _formKey,
            child: ListView(
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
                                onFieldSubmitted: (value) {
                                  if (_formKey.currentState!.validate()) {
                                    print("Email: " + emailController.text);
                                    print(
                                        "Password: " + passwordController.text);
                                  }
                                },
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
                                        borderRadius:
                                            BorderRadius.circular(18.0)))),
                            const SizedBox(height: 20),
                            TextFormField(
                                controller: passwordController,
                                textInputAction: TextInputAction.done,
                                onFieldSubmitted: (value) {
                                  if (_formKey.currentState!.validate()) {
                                    print("Email: " + emailController.text);
                                    print(
                                        "Password: " + passwordController.text);
                                  }
                                },
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Invalid password";
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.lock),
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
                                        style:
                                            TextStyle(color: Colors.blue[200]),
                                      ))
                                ]),
                            const SizedBox(height: 30),
                          ])),
                      Padding(
                          padding: const EdgeInsets.only(
                              right: 30.0, left: 30.00, bottom: 15.00),
                          child: MaterialButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                print("Email: " + emailController.text);
                                print("Password: " + passwordController.text);
                              }
                            },
                            color: const Color.fromRGBO(240, 81, 147, 1),
                            padding: const EdgeInsets.all(10.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            height: 55,
                            child: const Text('Login',
                                style: TextStyle(color: Colors.white)),
                          )),
                    ])),
                Padding(
                    padding: const EdgeInsets.only(
                        right: 30.0, left: 30.00, bottom: 15.00),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (Context) => CreateAnAccount(),
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
            )));
  }
}
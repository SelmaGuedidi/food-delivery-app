import 'package:flutter/material.dart';
import 'package:fooddelivery/food_menu_screen.dart';
import 'package:fooddelivery/login_via_email.dart';

class CreateAnAccount extends StatefulWidget {
  @override
  State<CreateAnAccount> createState() => _CreateAnAccountState();
}

class _CreateAnAccountState extends State<CreateAnAccount> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text('Create an account',
              style: TextStyle(color: Colors.black)),
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
                    child: Column(children: [
                      TextFormField(
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Invalid name";
                            } else {
                              return null;
                            }
                          },
                          onFieldSubmitted: (value) {
                            if (_formKey.currentState!.validate()) {
                              print("Name: " + nameController.text);
                            }
                          },
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.person),
                              labelText: 'Name',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18.0)))),
                      const SizedBox(height: 20),
                      TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Invalid email";
                            } else {
                              return null;
                            }
                          },
                          onFieldSubmitted: (value) {
                            if (_formKey.currentState!.validate()) {
                              print("Email: " + emailController.text);
                            }
                          },
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.email),
                              labelText: 'Email',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18.0)))),
                      const SizedBox(height: 20),
                      TextFormField(
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Invalid phone number";
                            } else {
                              return null;
                            }
                          },
                          onFieldSubmitted: (value) {
                            if (_formKey.currentState!.validate()) {
                              print(
                                  "phoneNumber: " + phoneNumberController.text);
                            }
                          },
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.phone),
                              labelText: 'Phone No.',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18.0)))),
                      const SizedBox(height: 20),
                      TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Invalid password";
                            } else {
                              return null;
                            }
                          },
                          onFieldSubmitted: (value) {
                            if (_formKey.currentState!.validate()) {
                              print("Password: " + passwordController.text);
                            }
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.lock),
                              labelText: 'Password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18.0)))),
                    ]))
              ])),
          Padding(
              padding: const EdgeInsets.only(
                  right: 30.0, left: 30.00, bottom: 15.00, top: 30),
              child: MaterialButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print("Email: " + emailController.text);
                    print("Password: " + passwordController.text);
                  } 
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (Context) =>  FoodMenu(),
                      ),
                    );
                },
                color: const Color.fromRGBO(240, 81, 147, 1),
                padding: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                height: 55,
                child: const Text('Create an account',
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
                      builder: (Context) => LoginViaEmail(),
                    ),
                  );
                },
                color: Colors.white,
                padding: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                height: 55,
                child: const Text('Login instead',
                    style: TextStyle(
                      color: Colors.black,
                    )),
              )),
        ]));
  }
}

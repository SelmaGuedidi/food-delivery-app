import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fooddelivery/login_via_email.dart';

class CreateAnAccount extends StatefulWidget {
  @override
  State<CreateAnAccount> createState() => _CreateAnAccountState();
}

class _CreateAnAccountState extends State<CreateAnAccount> {
  bool visiblePassword = false;
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;
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
                          controller: phoneNumberController,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Invalid name";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.person),
                              labelText: 'Name',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18.0)))),
                      const SizedBox(height: 20),
                      TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
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
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.phone),
                              labelText: 'Phone No.',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18.0)))),
                      const SizedBox(height: 20),
                      TextFormField(
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Invalid password";
                            } else {
                              return null;
                            }
                          },
                          obscureText: visiblePassword ? false : true,
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
                                  borderRadius: BorderRadius.circular(18.0)))),
                    ]))
              ])),
          Padding(
              padding: const EdgeInsets.only(
                  right: 30.0, left: 30.00, bottom: 15.00, top: 30),
              child: MaterialButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      isLoading = true;
                    });
                    print("Email: " + emailController.text);
                    print("Password: " + passwordController.text);
                  }
                  try {
                    await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text)
                        .then(((value) {
                      Fluttertoast.showToast(
                          msg: "Account created successfully",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    }));
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
                    : Text('Create an account',
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
                      builder: (context) => LoginViaEmail(),
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

import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool visiblePassword = false;
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text('Account', style: TextStyle(color: Colors.black)),
          toolbarHeight: 70,
          backgroundColor: Colors.white,
        ),
        body: ListView(children: [
          SizedBox(
            height: 50,
          ),
          Stack(
              alignment: AlignmentDirectional.center,
              clipBehavior: Clip.none,
              children: [
                Positioned(child: Image.asset('assets/home_screen/Avatar.png')),
                Positioned(
                    right: isPortrait ? 140 : 350,
                    bottom: 0,
                    child: Image.asset('assets/home_screen/Button.png')),
              ]),
          SizedBox(
            height: 50,
          ),
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
                child:
                    const Text('Save', style: TextStyle(color: Colors.white)),
              )),
        ]));
  }
}

import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/create_an_account.dart';
import 'package:fooddelivery/home.dart';
import 'package:fooddelivery/login_via_email.dart';
import 'package:google_sign_in/google_sign_in.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: <String>['email'],
);

class login extends StatelessWidget {
  GoogleSignInAccount? user = _googleSignIn.currentUser;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
        body: ListView(
      children: [
        Image(
          fit: BoxFit.cover,
          image: const AssetImage('assets/Login_screen/Img.png'),
          height: isPortrait ? height * 0.4 : height * 0.7,
        ),
        Padding(
            padding: const EdgeInsets.only(
                right: 30.0, left: 30.00, bottom: 15.00, top: 30),
            child: MaterialButton(
                onPressed: () async {
                  try {
                    await _googleSignIn.signIn().then((value) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                        (Route<dynamic> route) => false,
                      );
                    });
                  } catch (e) {
                    print("erreur");
                  }
                },
                color: Colors.red,
                padding: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                height: 55.00,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage('assets/Login_screen/GoogleLogo.png'),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Text('Login via Google',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ],
                ))),
        Padding(
            padding:
                const EdgeInsets.only(right: 30.0, left: 30.00, bottom: 15.00),
            child: MaterialButton(
                onPressed: () {},
                color: Colors.blue,
                padding: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage('assets/Login_screen/FacebookLogo.png'),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Text('Login via Facebook',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ],
                ))),
        Padding(
            padding:
                const EdgeInsets.only(right: 30.0, left: 30.00, bottom: 15.00),
            child: MaterialButton(
                onPressed: () {},
                color: Colors.black,
                padding: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                      image: AssetImage('assets/Login_screen/AppleLogo.png'),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Login via Apple',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ],
                ))),
        Padding(
            padding:
                const EdgeInsets.only(right: 30.0, left: 30.00, bottom: 15.00),
            child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (Context) => LoginViaEmail(),
                    ),
                  );
                },
                color: const Color.fromRGBO(240, 81, 147, 1),
                padding: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage('assets/Login_screen/Email.png'),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Text('Login via Email',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ],
                ))),
        Padding(
            padding:
                const EdgeInsets.only(right: 30.0, left: 30.00, bottom: 15.00),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (Context) => CreateAnAccount()),
                );
              },
              color: Colors.white,
              padding: const EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)),
              height: 55,
              child: const Text('Create an account',
                  style: TextStyle(
                    color: Colors.black,
                  )),
            )),
      ],
    ));
  }
}

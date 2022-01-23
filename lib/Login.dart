import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      Expanded(
          flex: 3,
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage('assets/Login_screen/Img.png'),
          )),
      Column(children: [
        Padding(
            padding:
                const EdgeInsets.only(right: 30.0, left: 30.00, bottom: 15.00),
            child: Expanded(
                flex: 2,
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.red,
                    padding: const EdgeInsets.all(10.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    height: 55.00,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image:
                              AssetImage('assets/Login_screen/GoogleLogo.png'),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text('Login via Google',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ],
                    )))),
        Padding(
            padding:
                const EdgeInsets.only(right: 30.0, left: 30.00, bottom: 15.00),
            child: Expanded(
                flex: 3,
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
                        Image(
                          image: AssetImage(
                              'assets/Login_screen/FacebookLogo.png'),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text('Login via Facebook',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ],
                    )))),
        Padding(
            padding:
                const EdgeInsets.only(right: 30.0, left: 30.00, bottom: 15.00),
            child: Expanded(
                flex: 3,
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.black,
                    padding: const EdgeInsets.all(10.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image:
                              AssetImage('assets/Login_screen/AppleLogo.png'),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text('Login via Apple',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ],
                    )))),
        Padding(
            padding:
                const EdgeInsets.only(right: 30.0, left: 30.00, bottom: 15.00),
            child: Expanded(
                flex: 3,
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.pink,
                    padding: const EdgeInsets.all(10.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/Login_screen/Email.png'),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text('Login via Email',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ],
                    )))),
        Padding(
            padding:
                const EdgeInsets.only(right: 30.0, left: 30.00, bottom: 15.00),
            child: Expanded(
                flex: 3,
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.white,
                    padding: const EdgeInsets.all(10.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/Login_screen/Email.png'),
                        ),
                        Text('Create an account',
                            style: TextStyle(
                              color: Colors.black,
                            )),
                      ],
                    )))),
        Expanded(flex: 1, child: Container()),
      ])
    ])));
  }
}

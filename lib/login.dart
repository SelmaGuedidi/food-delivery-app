import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    final isPortrait=MediaQuery.of(context).orientation== Orientation.portrait;


    return Scaffold(
        body: ListView(

          children: [
             Image(
              fit: BoxFit.cover,
              image: const AssetImage('assets/Login_screen/Img.png'),
              height: isPortrait ? height*0.4 : height* 0.7,
            ),
            Padding(
                padding:
                const EdgeInsets.only(right: 30.0, left: 30.00, bottom: 15.00,top: 30),
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
                    ))),
            Padding(
                padding:
                const EdgeInsets.only(right: 30.0, left: 30.00, bottom: 15.00),
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
                    ))),
            Padding(

                padding:
                const EdgeInsets.only(right: 30.0, left: 30.00, bottom: 15.00),
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
                    ))),
            //Expanded(flex: 1, child: Container()),
          ],
        ));
  }
}

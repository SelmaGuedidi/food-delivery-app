import 'package:flutter/material.dart';
import 'package:fooddelivery/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodeck',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
                // backgroundColor: MaterialStateProperty.all(Colors.pink),
                foregroundColor: MaterialStateProperty.all(Colors.white))),
        textTheme: const TextTheme(
            headline1: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black),
            headline2: TextStyle(
                fontFamily: "Inter", fontSize: 25, fontWeight: FontWeight.w600),
            headline3: TextStyle(
                fontFamily: "Inter", fontWeight: FontWeight.w100, fontSize: 25),
            headline4: TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.w200,
              fontSize: 25,
            ),
            headline5: TextStyle(
                fontFamily: "Inter", fontWeight: FontWeight.w300, fontSize: 25),
            headline6: TextStyle(
                fontFamily: "Inter", fontWeight: FontWeight.w400, fontSize: 25),
            subtitle1: TextStyle(
                fontFamily: "Inter", fontWeight: FontWeight.w400, fontSize: 20),
            subtitle2: TextStyle(
                fontFamily: "Inter", fontWeight: FontWeight.w400, fontSize: 20),
            bodyText1: TextStyle(
                fontFamily: "Inter", fontWeight: FontWeight.w400, fontSize: 20),
            bodyText2: TextStyle(
                fontFamily: "Inter", fontWeight: FontWeight.w400, fontSize: 20),
            caption: TextStyle(
                fontFamily: "Inter", fontWeight: FontWeight.w400, fontSize: 15),
            button: TextStyle(
                fontFamily: "Inter", fontWeight: FontWeight.w400, fontSize: 15),
            overline: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w400,
                fontSize: 15)),
      ),
      home: login(),
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fooddelivery/Login.dart';

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
                  backgroundColor: MaterialStateProperty.all(Colors.pink),
                  foregroundColor: MaterialStateProperty.all(Colors.white)))),
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

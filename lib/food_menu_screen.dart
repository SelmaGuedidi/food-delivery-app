import 'package:flutter/material.dart';

class food_menu_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Stack(
            children: [
              Image(
                image: AssetImage('assets/food_menu_screen/Img.png'),
                fit: BoxFit.cover,
              )
            ],
          )
        ],
      ),
    );
  }
}

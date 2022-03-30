import 'package:flutter/material.dart';
import 'package:fooddelivery/food_variation.dart';

class MealCard extends StatelessWidget {
  const MealCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FoodVariation(),
                        ),
                      );
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.only(
                            start: 24,
                            top: 24,
                          ),
                          child: Image(
                            image:
                                AssetImage('assets/food_menu_screen/pizza.png'),
                            fit: BoxFit.cover,
                            height: 64,
                            width: 64,
                          ),
                        ),
                        Expanded(
                            child: Padding(
                          padding: EdgeInsetsDirectional.only(
                            start: 16,
                            top: 23,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Chicken Fajita Pizza",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Container(
                                  padding: EdgeInsetsDirectional.only(top: 4),
                                  child: Text(
                                      "8'' pizza with regular soft drink",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: Colors.grey))),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  top: 12,
                                ),
                                child: Text("10 \$",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700)),
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                  );
  }
}
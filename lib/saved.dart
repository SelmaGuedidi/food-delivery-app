import 'package:flutter/material.dart';
import 'package:fooddelivery/explore/restaurant_card.dart';
import 'package:fooddelivery/models/restaurant.dart';

class Saved extends StatefulWidget {
  const Saved({Key? key}) : super(key: key);

  @override
  _SavedState createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  List<Restaurant> savedProducts = [
    Restaurant(
      id: '0',
      title: "Daily Deli",
      rate: 4.8,
      place: "Johar Town",
      image: 'assets/home_screen/exploreMore1.png',
      isSaved: true,
    ),
    Restaurant(
      id: '5',
      title: 'Hot n Sour',
      rate: 4.8,
      place: 'Johar Town',
      image: 'assets/home_screen/ExploreMore4.png',
      isSaved: true,
    ),
    Restaurant(
      id: '6',
      title: 'Johnny Juice',
      rate: 4.8,
      place: 'Wapda Town',
      image: 'assets/home_screen/ExploreMore5.png',
      isSaved: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
          padding:
              EdgeInsets.only(right: 15.0, left: 30.00, bottom: 30.00, top: 10),
          child: Text("Saved (${savedProducts.length})",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
      Column(
          children: List.generate(
              savedProducts.length,
              (index) => RestaurantCard(
                  restaurant: savedProducts[index],
                  onFavoriteButtonTapped: () {
                    setState(() {
                      savedProducts[index].isSaved =
                          !savedProducts[index].isSaved;
                    });
                  }))),
    ]);
  }
}

import 'package:flutter/material.dart';
import 'package:fooddelivery/explore/deal_card.dart';
import 'package:fooddelivery/models/deal.dart';

class MyReviews extends StatefulWidget {
  const MyReviews({Key? key}) : super(key: key);

  @override
  State<MyReviews> createState() => _MyReviewsState();
}

class _MyReviewsState extends State<MyReviews> {
  List<Deal> deals = [
    Deal.second(
      0,
      "Daily Deli",
      false,
      "Johar Town",
      'https://www.vegrecipesofindia.com/wp-content/uploads/2020/11/pizza-recipe-2-500x375.jpg',
    ),
    Deal.second(
      1,
      "Rice Bowl",
      false,
      "Wapda Town",
      'https://img.taste.com.au/Ssi-Eelu/taste/2018/02/mar-18_cajun-chicken-rice-bowl-3000x2000-135698-1.jpg',
    )
  ];
  bool star1 = false;
  bool star2 = false;
  bool star3 = false;
  bool star4 = false;
  bool star5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title:
            const Text('My Reviews (2)', style: TextStyle(color: Colors.black)),
        toolbarHeight: 70,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        deals.length,
                        (index) => DealCard(
                            deal: deals[index],
                            onFavoriteButtonTapped: () {
                              setState(() {
                                deals[index].isSaved = !deals[index].isSaved;
                              });
                            })))),
          ),
          Padding(
              padding: EdgeInsets.only(right: 15.0, left: 30.00, top: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text('My Ratings',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    SizedBox(height: 10),
                    Row(children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              star1 = true;
                              star2 = star3 = star4 = star5 = false;
                            });
                          },
                          icon: Icon(Icons.star,
                              color: star1 ? Colors.yellow : Colors.grey)),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              star1 = star2 = true;
                              star5 = star4 = star3 = false;
                            });
                          },
                          icon: Icon(Icons.star,
                              color: star2 ? Colors.yellow : Colors.grey)),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              star1 = star2 = star3 = true;
                              star4 = star5 = false;
                            });
                          },
                          icon: Icon(Icons.star,
                              color: star3 ? Colors.yellow : Colors.grey)),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              star1 = star2 = star3 = star4 = true;
                              star5 = false;
                            });
                          },
                          icon: Icon(Icons.star,
                              color: star4 ? Colors.yellow : Colors.grey)),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              star1 = star2 = star3 = star4 = star5 = true;
                            });
                          },
                          icon: Icon(Icons.star,
                              color: star5 ? Colors.yellow : Colors.grey)),
                    ])
                  ])),
          Divider(),
        ],
      ),
    );
  }
}

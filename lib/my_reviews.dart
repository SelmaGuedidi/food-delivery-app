import 'package:flutter/material.dart';

class MyReviews extends StatefulWidget {
  const MyReviews({Key? key}) : super(key: key);

  @override
  State<MyReviews> createState() => _MyReviewsState();
}

class _MyReviewsState extends State<MyReviews> {
  bool isSaved1 = false;
  bool isSaved2 = false;
  bool star1 = false;
  bool star2 = false;
  bool star3 = false;
  bool star4 = false;
  bool star5 = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title:
            const Text('My Reviews (2)', style: TextStyle(color: Colors.black)),
        toolbarHeight: 70,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 30),
        children: [
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Image(
                              image: AssetImage('assets/home_screen/Deal1.png'),
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                              width: !isPortrait ? width * 0.91 : width * 0.85,
                              height: !isPortrait ? height * 0.5 : height * 0.2,
                            ),
                            Positioned(
                                right: 0,
                                child: Image(
                                  height: 48,
                                  width: 48,
                                  image: AssetImage(
                                      'assets/home_screen/Ellipse.png'),
                                )),
                            Positioned(
                                right: 0,
                                child: IconButton(
                                    icon: Icon(Icons.favorite,
                                        size: 20,
                                        color: isSaved1
                                            ? Colors.red
                                            : Colors.black),
                                    onPressed: () {
                                      setState(() {
                                        isSaved1 = !isSaved1;
                                      });
                                    })),
                          ]),
                          SizedBox(height: 10),
                          Container(
                            width: width - 60,
                            child: Row(children: [
                              Text('Daily Deli',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 18)),
                              Spacer(),
                              //SizedBox(width: isPortrait ? 180 : 550),
                              Icon(Icons.star, color: Colors.yellow),
                              Text('4.8',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17))
                            ]),
                          ),
                          Text(
                            'Johar Town',
                            style: TextStyle(fontSize: 16),
                          )
                        ])),
                Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Image(
                              image: AssetImage('assets/home_screen/Rice.png'),
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                              width: !isPortrait ? width * 0.91 : width * 0.85,
                              height: !isPortrait ? height * 0.5 : height * 0.2,
                            ),
                            Positioned(
                                right: 0,
                                child: Image(
                                  height: 48,
                                  width: 48,
                                  image: AssetImage(
                                      'assets/home_screen/Ellipse.png'),
                                )),
                            Positioned(
                                right: 0,
                                child: IconButton(
                                    icon: Icon(Icons.favorite,
                                        size: 20,
                                        color: isSaved2
                                            ? Colors.red
                                            : Colors.black),
                                    onPressed: () {
                                      setState(() {
                                        isSaved2 = !isSaved2;
                                      });
                                    }))
                          ]),
                          const SizedBox(height: 10),
                          Container(
                            width: width - 60,
                            child: Row(children: [
                              Text(
                                'Rice Bowl',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Spacer(),
                              Icon(Icons.star, color: Colors.yellow),
                              Text('4.5',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17))
                            ]),
                          ),
                          const Text(
                            'Wapda Town',
                            style: TextStyle(fontSize: 16),
                          )
                        ])),
              ])),
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
          Container()
        ],
      ),
    );
  }
}

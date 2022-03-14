import 'package:flutter/material.dart';
import 'package:fooddelivery/food_menu_screen.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  bool isSaved1 = false;
  bool isSaved2 = false;
  bool isSaved3 = false;
  bool isSaved4 = false;
  bool isSaved5 = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return ListView(children: [
      Padding(
          padding: EdgeInsets.only(left: 30.00, top: 30),
          child: Container(
            width: double.infinity,
            child:
                Stack(alignment: AlignmentDirectional.bottomStart, children: [
              Image(
                image: AssetImage('assets/home_screen/Food.png'),
                fit: BoxFit.fill,
                filterQuality: FilterQuality.high,
                width: !isPortrait ? width * 0.91 : width * 0.85,
                height: !isPortrait ? height * 0.5 : height * 0.23,
              ),
              Text('  Food\n  Order food you love\n',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500)),
            ]),
          )),
      Padding(
          padding: const EdgeInsets.only(right: 30, left: 30, top: 10),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Expanded(
              child:
                  Stack(alignment: AlignmentDirectional.bottomStart, children: [
                Image(
                  image: AssetImage('assets/home_screen/Grocery.png'),
                  fit: BoxFit.fill,
                  filterQuality: FilterQuality.high,
                  width: !isPortrait ? width * 0.91 : width * 0.85,
                  height: !isPortrait ? height * 0.5 : height * 0.2,
                ),
                Text('  Grocery\n  Shop daily life items\n',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500)),
              ]),
            ),
            SizedBox(width: 10),
            Expanded(
              child:
                  Stack(alignment: AlignmentDirectional.bottomStart, children: [
                Image(
                  image: AssetImage('assets/home_screen/Deserts.png'),
                  fit: BoxFit.fill,
                  filterQuality: FilterQuality.high,
                  width: !isPortrait ? width * 0.91 : width * 0.85,
                  height: !isPortrait ? height * 0.5 : height * 0.2,
                ),
                Text('  Deserts\n  Something Sweet\n',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500)),
              ]),
            ),
          ])),
      SizedBox(height: 30),
      SingleChildScrollView(
          reverse: true,
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Image(
                  image: AssetImage('assets/home_screen/IcecreamBanner.png'),
                  fit: BoxFit.fill,
                  filterQuality: FilterQuality.high,
                  width: !isPortrait ? width * 0.91 : width * 0.85,
                  height: !isPortrait ? height * 0.5 : height * 0.2,
                )),
            Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Image(
                  image: AssetImage('assets/home_screen/GroceryBanner.png'),
                  fit: BoxFit.fill,
                  filterQuality: FilterQuality.high,
                  width: !isPortrait ? width * 0.91 : width * 0.85,
                  height: !isPortrait ? height * 0.5 : height * 0.2,
                )),
            Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Image(
                  image: AssetImage('assets/home_screen/Banners.png'),
                  fit: BoxFit.fill,
                  filterQuality: FilterQuality.high,
                  width: !isPortrait ? width * 0.91 : width * 0.85,
                  height: !isPortrait ? height * 0.5 : height * 0.2,
                )),
          ])),
      SizedBox(height: 20),
      Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text('Deals', style: TextStyle(fontWeight: FontWeight.bold))),
      SizedBox(height: 20),
      SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FoodMenu(),
                                ),
                              );
                            },
                            child: Image(
                              image: AssetImage('assets/home_screen/Deal1.png'),
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                              width: !isPortrait ? width * 0.91 : width * 0.85,
                              height: !isPortrait ? height * 0.5 : height * 0.2,
                            )),
                        Positioned(
                            right: 0,
                            child: Image(
                              height: 48,
                              width: 48,
                              image:
                                  AssetImage('assets/home_screen/Ellipse.png'),
                            )),
                        Positioned(
                            right: 0,
                            child: IconButton(
                                icon: Icon(Icons.favorite,
                                    size: 20,
                                    color:
                                        isSaved1 ? Colors.red : Colors.black),
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
                                  fontWeight: FontWeight.bold, fontSize: 17))
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
                              image:
                                  AssetImage('assets/home_screen/Ellipse.png'),
                            )),
                        Positioned(
                            right: 0,
                            child: IconButton(
                                icon: Icon(Icons.favorite,
                                    size: 20,
                                    color:
                                        isSaved2 ? Colors.red : Colors.black),
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
                                  fontWeight: FontWeight.bold, fontSize: 17))
                        ]),
                      ),
                      const Text(
                        'Wapda Town',
                        style: TextStyle(fontSize: 16),
                      )
                    ])),
          ])),
      SizedBox(height: 30),
      Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text('Explore More',
              style: TextStyle(fontWeight: FontWeight.bold))),
      SizedBox(height: 20),
      Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Stack(children: [
              Image(
                image: AssetImage('assets/home_screen/exploreMore1.png'),
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
                    image: AssetImage('assets/home_screen/Ellipse.png'),
                  )),
              Positioned(
                  right: 0,
                  child: IconButton(
                      icon: Icon(Icons.favorite,
                          size: 20,
                          color: isSaved3 ? Colors.red : Colors.black),
                      onPressed: () {
                        setState(() {
                          isSaved3 = !isSaved3;
                        });
                      })),
            ]),
            SizedBox(height: 10),
            Row(children: [
              Expanded(
                flex: 7,
                child: Text(
                  'Jean\'s Cakes',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              Icon(Icons.star, color: Colors.yellow),
              Text('4.8',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17))
            ]),
            Text(
              'Johar Town',
              style: TextStyle(fontSize: 16),
            )
          ])),
      SizedBox(height: 20),
      Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Stack(children: [
              Image(
                image: AssetImage('assets/home_screen/exploreMore2.png'),
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
                    image: AssetImage('assets/home_screen/Ellipse.png'),
                  )),
              Positioned(
                  right: 0,
                  child: IconButton(
                      icon: Icon(Icons.favorite,
                          size: 20,
                          color: isSaved4 ? Colors.red : Colors.black),
                      onPressed: () {
                        setState(() {
                          isSaved4 = !isSaved4;
                        });
                      })),
            ]),
            SizedBox(height: 10),
            Row(children: [
              Expanded(
                flex: 7,
                child: Text(
                  'Thicc Shakes',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              Icon(Icons.star, color: Colors.yellow),
              Text('4.5',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17))
            ]),
            Text(
              'Wapda Town',
              style: TextStyle(fontSize: 16),
            )
          ])),
      SizedBox(height: 30),
      Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Stack(children: [
              Image(
                image: AssetImage('assets/home_screen/exploreMore3.png'),
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
                    image: AssetImage('assets/home_screen/Ellipse.png'),
                  )),
              Positioned(
                  right: 0,
                  child: IconButton(
                      icon: Icon(Icons.favorite,
                          size: 20,
                          color: isSaved5 ? Colors.red : Colors.black),
                      onPressed: () {
                        setState(() {
                          isSaved5 = !isSaved5;
                        });
                      })),
            ]),
            SizedBox(height: 10),
            Row(children: [
              Expanded(
                flex: 7,
                child: Text(
                  'Daily Deli',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              Icon(Icons.star, color: Colors.yellow),
              Text('4.8',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17))
            ]),
            Text(
              'Garden Town',
              style: TextStyle(fontSize: 16),
            )
          ])),
      SizedBox(
        height: 30,
      ),
    ]);
  }
}

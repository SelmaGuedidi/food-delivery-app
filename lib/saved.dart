import 'package:flutter/material.dart';

class Saved extends StatefulWidget {
  const Saved({Key? key}) : super(key: key);

  @override
  _SavedState createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  bool isSaved1 = true;
  bool isSaved2 = true;
  bool isSaved3 = true;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return ListView(children: [
      const Padding(
          padding:
              EdgeInsets.only(right: 15.0, left: 30.00, bottom: 30.00, top: 30),
          child: Text('Saved (3)',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
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
                          color: isSaved1 ? Colors.red : Colors.black),
                      onPressed: () {
                        setState(() {
                          isSaved1 = !isSaved1;
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
                image: AssetImage('assets/home_screen/ExploreMore4.png'),
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
                          color: isSaved2 ? Colors.red : Colors.black),
                      onPressed: () {
                        setState(() {
                          isSaved2 = !isSaved2;
                        });
                      })),
            ]),
            SizedBox(height: 10),
            Row(children: [
              Expanded(
                flex: 7,
                child: Text(
                  'Hot n Sour',
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
                image: AssetImage('assets/home_screen/ExploreMore5.png'),
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
                  'Johnny Juice',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              Icon(Icons.star, color: Colors.yellow),
              Text('4.8',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17))
            ]),
            Text(
              'Wapda Town',
              style: TextStyle(fontSize: 16),
            )
          ])),
    ]);
  }
}

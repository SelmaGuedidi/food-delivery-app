import 'package:flutter/material.dart';
import 'package:fooddelivery/daily_Deli.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text('My Orders', style: TextStyle(color: Colors.black)),
          toolbarHeight: 70,
          backgroundColor: Colors.white,
        ),
        body: ListView(children: [
          Padding(
              padding: EdgeInsets.only(
                  right: 30.0, left: 30.00, bottom: 30.00, top: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Recent Order',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/home_screen/Burger.png'),
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                    width: !isPortrait
                                        ? width * 0.91
                                        : width * 0.85,
                                    height: !isPortrait
                                        ? height * 0.5
                                        : height * 0.2,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Burger King',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    '\$80',
                                    style: TextStyle(fontSize: 16),
                                  )
                                ])),
                        Padding(
                            padding: const EdgeInsets.only(top: 20, left: 30),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/home_screen/Wrap.png'),
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                    width: !isPortrait
                                        ? width * 0.91
                                        : width * 0.85,
                                    height: !isPortrait
                                        ? height * 0.5
                                        : height * 0.2,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Wrap Factory',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    '\$30',
                                    style: TextStyle(fontSize: 16),
                                  )
                                ])),
                      ])),
                ],
              )),
          Divider(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DailyDeli(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 10, right: 10),
              child: Row(children: [
                Expanded(
                  flex: 7,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Daily Deli', style: TextStyle(fontSize: 17)),
                        Text('23 Jun, 2020',
                            style: TextStyle(color: Colors.grey, fontSize: 17))
                      ]),
                ),
                Expanded(
                  child: Text('\$25',
                      style: TextStyle(color: Colors.grey, fontSize: 15)),
                ),
                Expanded(
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.arrow_forward_ios_sharp)))
              ]),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10, right: 10),
            child: Row(children: [
              Expanded(
                flex: 7,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Johny Jugnu', style: TextStyle(fontSize: 17)),
                      Text('10 Jun, 2020',
                          style: TextStyle(color: Colors.grey, fontSize: 17))
                    ]),
              ),
              Expanded(
                child: Text('\$20',
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
              ),
              Expanded(
                  child: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.arrow_forward_ios_sharp)))
            ]),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10, right: 10),
            child: Row(children: [
              Expanded(
                flex: 7,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Daily Deli', style: TextStyle(fontSize: 17)),
                      Text('03 Mar, 2020',
                          style: TextStyle(color: Colors.grey, fontSize: 17))
                    ]),
              ),
              Expanded(
                child: Text('\$120',
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
              ),
              Expanded(
                  child: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.arrow_forward_ios_sharp)))
            ]),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10, right: 10),
            child: Row(children: [
              Expanded(
                flex: 7,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Daily Deli', style: TextStyle(fontSize: 17)),
                      Text('28 Jun, 2020',
                          style: TextStyle(color: Colors.grey, fontSize: 17))
                    ]),
              ),
              Expanded(
                child: Text('\$90',
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
              ),
              Expanded(
                  child: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.arrow_forward_ios_sharp)))
            ]),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10, right: 10),
            child: Row(children: [
              Expanded(
                flex: 7,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('KFC', style: TextStyle(fontSize: 17)),
                      Text('24 Dec, 2019',
                          style: TextStyle(color: Colors.grey, fontSize: 17))
                    ]),
              ),
              Expanded(
                child: Text('\$30',
                    style: TextStyle(color: Colors.grey, fontSize: 17)),
              ),
              Expanded(
                  child: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.arrow_forward_ios_sharp)))
            ]),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10, right: 10),
            child: Row(children: [
              Expanded(
                flex: 7,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Pizza Heart', style: TextStyle(fontSize: 17)),
                      Text('07 Nov, 2019',
                          style: TextStyle(color: Colors.grey, fontSize: 17))
                    ]),
              ),
              Expanded(
                child: Text('\$40',
                    style: TextStyle(color: Colors.grey, fontSize: 17)),
              ),
              Expanded(
                  child: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.arrow_forward_ios_sharp)))
            ]),
          ),
          Divider(),
        ]));
  }
}

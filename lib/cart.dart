import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:fooddelivery/thank_you.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool isSaved1 = false;
  bool isSaved2 = false;
  final _formKey = GlobalKey<FormState>();

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
        appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            title: const Text('Cart',
                style: TextStyle(
                  color: Colors.black,
                )),
            toolbarHeight: 70,
            backgroundColor: Colors.white,
            elevation: 2.0),
        body: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsetsDirectional.only(
                      start: 24,
                      top: 24,
                    ),
                    child: Badge(
                      padding: const EdgeInsets.all(7),
                      badgeColor: Colors.black,
                      badgeContent: const Text(
                        "1",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      child: const Image(
                        image: AssetImage('assets/food_menu_screen/pizza.png'),
                        fit: BoxFit.cover,
                        height: 64,
                        width: 64,
                      ),
                    )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 16,
                    top: 23,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Chicken Fajita Pizza",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Row(children: [
                        Container(
                          padding: const EdgeInsetsDirectional.only(top: 4),
                          child: Text("10'' Char Donay",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey)),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: null,
                            icon: Image(
                                image: AssetImage(
                                    "assets/cart_screen/XCircle.png")))
                      ]),
                      Padding(
                        padding: EdgeInsetsDirectional.only(
                          top: 12,
                        ),
                        child: Text("20 \$",
                            style: TextStyle(fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                ))
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: 24,
                    top: 24,
                  ),
                  child: Badge(
                    badgeColor: Colors.black,
                    badgeContent: Text(
                      "3",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    child: Image(
                      image: AssetImage('assets/food_menu_screen/meal.png'),
                      fit: BoxFit.cover,
                      height: 64,
                      width: 64,
                    ),
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
                        "Chicken Wrap Delux",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Row(children: [
                        Container(
                          padding: EdgeInsetsDirectional.only(top: 4),
                          child: Text("Large",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey)),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: null,
                            icon: Image(
                                image: AssetImage(
                                    "assets/cart_screen/XCircle.png")))
                      ]),
                      Padding(
                        padding: EdgeInsetsDirectional.only(
                          top: 12,
                        ),
                        child: Text("30 \$",
                            style: TextStyle(fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                ))
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Text('Popular with these',
                    style: TextStyle(fontWeight: FontWeight.bold))),
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
                              Image(
                                image: AssetImage('assets/cart_screen/Img.png'),
                                fit: BoxFit.fill,
                                filterQuality: FilterQuality.high,
                                width:
                                    !isPortrait ? width * 0.91 : width * 0.85,
                                height:
                                    !isPortrait ? height * 0.5 : height * 0.2,
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
                                Text('Red Grape Margarita',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                        fontSize: 18)),
                                Spacer(),
                                IconButton(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.add,
                                  ),
                                )
                              ]),
                            ),
                            Text(
                              'Daily Deli',
                              style: TextStyle(fontSize: 16),
                            )
                          ])),
                  Padding(
                      padding: const EdgeInsets.only(left: 50, right: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(children: [
                              Image(
                                image:
                                    AssetImage('assets/cart_screen/Img2.png'),
                                fit: BoxFit.fill,
                                filterQuality: FilterQuality.high,
                                width:
                                    !isPortrait ? width * 0.91 : width * 0.87,
                                height:
                                    !isPortrait ? height * 0.5 : height * 0.2,
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
                              width: width - 50,
                              child: Row(children: [
                                Text(
                                  'Lemon Pina',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                Spacer(),
                                IconButton(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.add,
                                  ),
                                )
                              ]),
                            ),
                            const Text(
                              'Arfan Juices',
                              style: TextStyle(fontSize: 16),
                            )
                          ])),
                ])),
            SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Text('Coupon',
                    style: TextStyle(fontWeight: FontWeight.bold))),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Form(
                key: _formKey,
                child: TextFormField(
                    controller: textController,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.arrow_right_alt_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18.0)))),
              ),
            ),
            SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
                child: Row(children: [
                  Expanded(
                    flex: 7,
                    child: Text('Subtotal',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Expanded(
                    child: Text('\$50',
                        style: TextStyle(
                          color: const Color.fromRGBO(240, 81, 147, 1),
                        )),
                  )
                ])),
            Divider(),
            Padding(
                padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
                child: Row(children: [
                  Expanded(
                    flex: 7,
                    child: Text('Delivery Fee',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Expanded(
                    child: Text('\$10',
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                  )
                ])),
            Divider(),
            Padding(
                padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
                child: Row(children: [
                  Expanded(
                    flex: 7,
                    child: Text('Vat',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Expanded(
                    child: Text('\$4',
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                  )
                ])),
            Divider(),
            Padding(
                padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
                child: Row(children: [
                  Expanded(
                    flex: 7,
                    child: Text('Coupon',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Expanded(
                    child: Text('-\$4',
                        style: TextStyle(
                          color: Colors.green,
                        )),
                  )
                ])),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: Row(children: [
                Expanded(
                  child: Text('\$20',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ),
                Expanded(
                    child: MaterialButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThankYou(),
                        ));
                  },
                  color: const Color.fromRGBO(240, 81, 147, 1),
                  padding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  height: 55,
                  child: const Text('Go to Checkout',
                      style: TextStyle(color: Colors.white)),
                ))
              ]),
            ),
            SizedBox(height: 20)
          ],
        ));
  }
}

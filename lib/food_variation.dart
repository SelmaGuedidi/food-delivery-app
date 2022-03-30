import 'package:flutter/material.dart';
import 'package:fooddelivery/models/restaurant.dart';

enum Number { eight, ten, twelve }

class FoodVariation extends StatefulWidget {
  const FoodVariation({Key? key}) : super(key: key);

  @override
  _FoodVariationState createState() => _FoodVariationState();
}

class _FoodVariationState extends State<FoodVariation> {
  bool _checkbox1 = false;
  bool _checkbox2 = false;
  int quantity = 1;
  String dropdownValue = 'Remove it from my order';
  Number? _character = Number.eight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 180,
            elevation: 0,
            flexibleSpace: const Image(
              image: AssetImage('assets/food_variation/chicken.png'),
              fit: BoxFit.fill,
              height: double.infinity,
            ),
            automaticallyImplyLeading: false,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_sharp,
                          color: Colors.white,
                        )),
                    const Spacer(),
                    const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.favorite_outline_outlined,
                          color: Colors.white,
                        )),
                    const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.share_outlined,
                          color: Colors.white,
                        )),
                    const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 150,
                )
              ],
            )),
        body: ListView(children: [
          Padding(
              padding: const EdgeInsetsDirectional.only(top: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(start: 10, end: 10),
                      child: Row(
                        children: [
                          Text("Variation",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                              )),
                          Spacer(),
                          Text("Required",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.pink))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 5),
                      child: ListTile(
                        title: const Text('8"'),
                        leading: Radio<Number>(
                          value: Number.eight,
                          groupValue: _character,
                          onChanged: (Number? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text('10"'),
                      leading: Radio<Number>(
                        value: Number.ten,
                        groupValue: _character,
                        onChanged: (Number? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('12"'),
                      leading: Radio<Number>(
                        value: Number.twelve,
                        groupValue: _character,
                        onChanged: (Number? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ])),
          Divider(
            thickness: 5,
          ),
          Padding(
              padding: EdgeInsets.all(20),
              child: Text('Quantity',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700))),
          Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 3,
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              if (quantity > 1) {
                                quantity--;
                              }
                            });
                          },
                          icon: Icon(Icons.remove))),
                  Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('${quantity}')),
                  Expanded(
                      flex: 3,
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              quantity++;
                            });
                          },
                          icon: Icon(Icons.add))),
                ],
              )),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 5,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: 15,
                  start: 15,
                ),
                child: Row(
                  children: [
                    Text(
                      'Extra Sauce',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: 5,
                  start: 10,
                  end: 10,
                ),
                child: Row(
                  children: [
                    Checkbox(
                      value: _checkbox1,
                      onChanged: (value) {
                        setState(() {
                          _checkbox1 = !_checkbox1;
                        });
                      },
                    ),
                    Text(
                      'Texas Barbeque',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    Spacer(),
                    Text(
                      "+6 \$",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 10,
                  end: 10,
                ),
                child: Row(
                  children: [
                    Checkbox(
                      value: _checkbox2,
                      onChanged: (value) {
                        setState(() {
                          _checkbox2 = !_checkbox2;
                        });
                      },
                    ),
                    Text(
                      'Char Donay',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    Spacer(),
                    Text(
                      "+8 \$",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            thickness: 5,
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: 5,
                  start: 15,
                ),
                child: Row(
                  children: [
                    Text(
                      'Instructions',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: 10,
                  start: 15,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Let us know if you have specific things in mind',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: 10,
                ),
                child: SizedBox(
                  height: 50,
                  width: 380,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'e.g.less spices , no mayo etc',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18.0))),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 5,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding:
                const EdgeInsetsDirectional.only(top: 10, start: 15, end: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'If the product is not available',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                DropdownButton<String>(
                  isExpanded: true,
                  value: dropdownValue,
                  focusColor: Colors.black,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>['Remove it from my order', 'Notify me first']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text("20 \$",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w700)),
                    ),
                    Expanded(
                      flex: 2,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        color: const Color.fromRGBO(240, 81, 147, 1),
                        padding: const EdgeInsets.all(10.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)),
                        height: 55,
                        child: const Text('Add to cart',
                            style: TextStyle(color: Colors.white)),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30)
              ],
            ),
          ),
        ]));
  }
}

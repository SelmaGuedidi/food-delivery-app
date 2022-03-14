import 'package:flutter/material.dart';

class FoodMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 180,
          elevation: 0,
          flexibleSpace: const Image(
            image: AssetImage('assets/food_menu_screen/food_menu.png'),
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(
                top: 26,
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Icon(Icons.star_border_outlined),
                      Text(
                        '4.8',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      )
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      Icon(Icons.access_time_outlined),
                      Text('40 min',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400))
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                      ),
                      Text('1.4 km',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                    ],
                  ))
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(
            top: 25,
          ),
          child: DefaultTabController(
              length: 5,
              child: TabBar(
                  onTap: (index) {},
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.pink,
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                  indicatorColor: Colors.pink,
                  isScrollable: true,
                  tabs: [
                    Tab(
                      text: "Popular",
                    ),
                    Tab(
                      text: "Deals",
                    ),
                    Tab(
                      text: "Wraps",
                    ),
                    Tab(text: "Beverages"),
                    Tab(
                      text: "Sandwichs",
                    )
                  ])),
        ),
        Padding(
          padding: EdgeInsets.only(right: 24),
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: 22,
                      start: 24,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Popular",
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Row(
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
                                child: Text("8'' pizza with regular soft drink",
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: 24,
                          top: 24,
                        ),
                        child: Image(
                          image: AssetImage('assets/food_menu_screen/meal.png'),
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
                                child: Text("8'' pizza with regular soft drink",
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
                  )
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(top: 24, bottom: 74),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        top: 24,
                        start: 24,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Deals",
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.only(
                            start: 24,
                            top: 33,
                          ),
                          child: Image(
                            image:
                                AssetImage('assets/food_menu_screen/meal1.png'),
                            fit: BoxFit.cover,
                            height: 64,
                            width: 64,
                          ),
                        ),
                        Expanded(
                            child: Padding(
                          padding: EdgeInsetsDirectional.only(
                            start: 16,
                            top: 24,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Deal 1",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    top: 4,
                                  ),
                                  child: Text(
                                      "1 regular burger with croquette and hot cocoa",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: Colors.grey,
                                      ))),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  top: 12,
                                ),
                                child: Text("12 \$",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700)),
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
                          child: Image(
                            image:
                                AssetImage('assets/food_menu_screen/meal2.png'),
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
                                  "Deal 2",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                    padding: EdgeInsetsDirectional.only(top: 4),
                                    child: Text(
                                        "1 regular burger with small fries",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            color: Colors.grey))),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    top: 12,
                                  ),
                                  child: Text("6 \$",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700)),
                                ),
                              ],
                            ),
                          ),
                        )
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
                          child: Image(
                            image:
                                AssetImage('assets/food_menu_screen/meal3.png'),
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
                                "Deal 3",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Text("2 pieces of beef stew with homemade sauce",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey)),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  top: 12,
                                ),
                                child: Text("23 \$",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700)),
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}

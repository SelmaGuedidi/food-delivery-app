import 'package:flutter/material.dart';
import 'package:fooddelivery/explore/deal_card.dart';
import 'package:fooddelivery/explore/product_card.dart';
import 'package:fooddelivery/food_menu_screen.dart';
import 'package:fooddelivery/models/deal.dart';
import 'package:fooddelivery/models/product.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List<Product> products = [
    Product(
        0,
        "Daily Deli",
        4.8,
        "Johar Town",
        'https://www.vegrecipesofindia.com/wp-content/uploads/2020/11/pizza-recipe-2-500x375.jpg',
        true,
    []
    ),
    Product(
        1,
        "Rice Bowl",
        4.5,
        "Wapda Town",
        'https://img.taste.com.au/Ssi-Eelu/taste/2018/02/mar-18_cajun-chicken-rice-bowl-3000x2000-135698-1.jpg',
        false,
        [
          ///
        ]),
    Product(
        0,
        "Daily Deli",
        4.8,
        "Johar Town",
        'https://www.vegrecipesofindia.com/wp-content/uploads/2020/11/pizza-recipe-2-500x375.jpg',
        true,
        [
          ///
        ]),
    Product(
        1,
        "Rice Bowl",
        4.5,
        "Wapda Town",
        'https://img.taste.com.au/Ssi-Eelu/taste/2018/02/mar-18_cajun-chicken-rice-bowl-3000x2000-135698-1.jpg',
        false,
    [
      ///
    ]
    ),
  ];

  List<Deal> deals = [
    Deal(
        0,
        "Daily Deli",
        4.8,
        "Johar Town",
        'https://www.vegrecipesofindia.com/wp-content/uploads/2020/11/pizza-recipe-2-500x375.jpg',
        true,
      "45 min",
      "2.5 km"
    ),
    Deal(
        1,
        "Rice Bowl",
        4.5,
        "Wapda Town",
        'https://img.taste.com.au/Ssi-Eelu/taste/2018/02/mar-18_cajun-chicken-rice-bowl-3000x2000-135698-1.jpg',
        false,
        "15 min",
        "0.5 km"
    ),
  ];

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
      SizedBox(height: 30),
      Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text('Explore More',
              style: TextStyle(fontWeight: FontWeight.bold))),
      Column(
        children: List.generate(
            products.length,
            (index) => ProductCard(
                product: products[index],
                onFavoriteButtonTapped: () {
                  setState(() {
                    products[index].isSaved = !products[index].isSaved;
                  });
                })),
      ),
      SizedBox(
        height: 30,
      ),
    ]);
  }
}

import 'package:flutter/material.dart';
import 'package:fooddelivery/models/restaurant.dart';

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;
  final void Function() onFavoriteButtonTapped;
  const RestaurantCard(
      {Key? key,
      required this.restaurant,
      required this.onFavoriteButtonTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(children: [
            Image(
              image: AssetImage(restaurant.image),
              fit: BoxFit.fill,
              filterQuality: FilterQuality.high,
              width: !isPortrait ? width * 0.91 : width * 0.85,
              height: !isPortrait ? height * 0.5 : height * 0.2,
            ),
            Positioned(
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
                  child: GestureDetector(
                      child: Icon(
                          restaurant.isSaved
                              ? Icons.favorite
                              : Icons.favorite_outline,
                          size: 20,
                          color:
                              restaurant.isSaved ? Colors.red : Colors.black),
                      onTap: () {
                        onFavoriteButtonTapped();
                      }),
                )),
          ]),
          SizedBox(height: 10),
          Row(children: [
            Expanded(
              flex: 7,
              child: Text(
                restaurant.title,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Icon(Icons.star, color: Colors.yellow),
            Text(restaurant.rate.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17))
          ]),
          Text(
            restaurant.place,
            style: TextStyle(fontSize: 16),
          )
        ]));
  }
}

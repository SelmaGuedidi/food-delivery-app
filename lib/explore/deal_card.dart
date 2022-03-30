import 'package:flutter/material.dart';
import 'package:fooddelivery/meal/food_menu_screen.dart';
import 'package:fooddelivery/models/deal.dart';

class DealCard extends StatelessWidget {
  final Deal deal;
  final void Function() onFavoriteButtonTapped;

  const DealCard(
      {Key? key, required this.deal, required this.onFavoriteButtonTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FoodMenu(
                        deal: deal,
                      ),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  child: Image(
                    image: NetworkImage(deal.image),
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.high,
                    width: !isPortrait ? width * 0.91 : width * 0.85,
                    height: !isPortrait ? height * 0.5 : height * 0.2,
                  ),
                )),
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
                          deal.isSaved
                              ? Icons.favorite
                              : Icons.favorite_outline,
                          size: 20,
                          color: deal.isSaved ? Colors.red : Colors.black),
                      onTap: () {
                        onFavoriteButtonTapped();
                      }),
                )),
          ]),
          const SizedBox(height: 10),
          SizedBox(
            width: width - 60,
            child: Row(children: [
              Text(deal.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 18)),
              const Spacer(),
              const Icon(Icons.star, color: Colors.yellow),
              Text(deal.rate.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17))
            ]),
          ),
          Text(
            deal.place,
            style: const TextStyle(fontSize: 16),
          )
        ]));
  }
}

import 'package:flutter/material.dart';
import 'package:fooddelivery/models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final void Function() onFavoriteButtonTapped;
  const ProductCard({Key? key,required this.product,required this.onFavoriteButtonTapped}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                ClipRRect(
                  borderRadius:
                  const BorderRadius.all(Radius.circular(15)),
                  child: Image(
                    image: NetworkImage(product.image),
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.high,
                    width: !isPortrait ? width * 0.91 : width * 0.85,
                    height: !isPortrait ? height * 0.5 : height * 0.2,
                  ),
                ),
                Positioned(
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: const BorderRadius.all(
                              Radius.circular(15))),
                      child: GestureDetector(
                          child: Icon(
                              product.isSaved
                                  ? Icons.favorite
                                  : Icons.favorite_outline,
                              size: 20,
                              color: product.isSaved
                                  ? Colors.red
                                  : Colors.black),
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
                    product.title,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Icon(Icons.star, color: Colors.yellow),
                Text(product.rate.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17))
              ]),
              Text(
                product.place,
                style: TextStyle(fontSize: 16),
              )
            ]));
  }
}

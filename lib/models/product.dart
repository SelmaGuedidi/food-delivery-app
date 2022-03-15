import 'package:fooddelivery/models/variation.dart';

class Product{
  final int id;
  final String title;
  final num rate;
  final String place;
  final String image;
  bool isSaved;
  final List<Variantion> variantions;

  Product(this.id,this.title,this.rate,this.place,this.image,this.isSaved,this.variantions);

}
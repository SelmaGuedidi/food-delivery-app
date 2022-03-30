class Restaurant {
  final String id;
  final String title;
  final num rate;
  final String place;
  final String image;
  bool isSaved;

  Restaurant(
      {required this.id,
      required this.title,
      required this.rate,
      required this.place,
      required this.image,
      required this.isSaved});
}

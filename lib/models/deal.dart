class Deal {
  final int id;
  final String title;
  final num rate;
  final String place;
  final String image;
  final String duration;
  final String distance;
  bool isSaved;

  Deal(this.id, this.title, this.rate, this.place, this.image, this.isSaved,
      this.duration, this.distance);
  Deal.second(this.id, this.title, this.isSaved, this.place, this.image,
      {this.duration = "", this.distance = "", this.rate = 0});
}

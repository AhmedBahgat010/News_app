
class ArteCal {
  String date;
  String image;
  String title;

  ArteCal({
    this.date,
    this.image,
    this.title,
  });

  factory ArteCal.fromJson(Map<String, dynamic> json) {
    return ArteCal(
      date: json['publishedAt'],
      image: json['urlToImage'],
      title: json['title'],

    );

  }

}

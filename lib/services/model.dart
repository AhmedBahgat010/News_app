class ArteCal {
  String date;
  String image;
  String title;
  String content;
  ArteCal({this.date, this.image, this.title, this.content});

  factory ArteCal.fromJson(Map<String, dynamic> json) {
    return ArteCal(
      date: json['publishedAt'],
      image: json['urlToImage'],
      title: json['title'],
      content: json['content'],
    );
  }
}

class NewsModel {
  final String? imageNews;
  final String descreption;
  final String title;
  final String publishedAt;
  final String content;

  const NewsModel({
    required this.publishedAt,
    required this.content,
// **************************** //
    required this.title,
    required this.imageNews,
    required this.descreption,
  });

  // اي model بياناته من علي النت لازم اعمله factory constactor (named parameters)

  // factory NewsModel.fromjson(Map<String, dynamic> json) {
  //   return NewsModel(
  //     imageNews: json["urlToImage"],
  //     descreption: json["description"],
  //     title: json['title'],
  //   );
  // }
}

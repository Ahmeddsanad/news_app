class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;

  ArticleModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> jsonData) {
    return ArticleModel(
      image: jsonData['image'],
      subTitle: jsonData['subTitle'],
      title: jsonData['title'],
    );
  }
}

class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String? url;

  ArticleModel({
    required this.image,
    required this.title,
    required this.subTitle,
    this.url,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> jsonData) {
    return ArticleModel(
        image: jsonData['image'],
        subTitle: jsonData['subTitle'],
        title: jsonData['title'],
        url: jsonData['url']);
  }
}

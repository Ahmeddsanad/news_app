import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final dio = Dio();

  Future<List<ArticleModel>> getNews({
    required String category,
  }) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=8cf0ab8b4fa8438990ae6171e83c225b&country=us&category=$category');

      // print(response.data);

      Map<String, dynamic> jsonData = response.data as Map<String, dynamic>;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'] ?? 'there is no title here.',
          subTitle: article['description'],
          url: article['url'],
        );
        articlesList.add(articleModel);
      }

      return articlesList;
    } on Exception catch (e) {
      print(e);
      return [];
    }
  }
}

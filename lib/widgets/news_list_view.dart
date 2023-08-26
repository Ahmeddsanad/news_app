import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles = [];

  @override
  void initState() {
    super.initState();

    getGeneralMethod();
  }

  Future<void> getGeneralMethod() async {
    articles = await NewsServices().getNews();
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: 16,
            ),
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        },
        childCount: 10,
      ),
    );
  }
}

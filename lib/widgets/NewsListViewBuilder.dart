import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  bool isLoading = true;

  List<ArticleModel> articles = [];

  @override
  void initState() {
    super.initState();

    getGeneralMethod();
  }

  Future<void> getGeneralMethod() async {
    articles = await NewsServices().getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(
            child: Container(
              height: 350,
              width: 150,
              child: const Center(
                  child: CircularProgressIndicator(
                color: Colors.amber,
              )),
            ),
          )
        : NewsListView(
            articles: articles,
          );
  }
}
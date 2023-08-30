import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_tile.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class NewsListView extends StatelessWidget {
  NewsListView({
    required this.articles,
  });

  List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
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

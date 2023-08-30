import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/NewsListViewBuilder.dart';
import 'package:news_app/widgets/news_tile.dart';

class CategoryView extends StatelessWidget {
  CategoryView({super.key, required this.category});

  String category;

  List<ArticleModel> articles = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 35,
        ),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            NewsListViewBuilder(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}

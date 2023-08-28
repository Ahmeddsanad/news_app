import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/NewsListViewBuilder.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/news_list_view.dart';
import 'package:news_app/widgets/news_tile.dart';
import 'package:news_app/services/news_service.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsListViewBuilder(),
          ],
        ),
      ),

      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Column(
      //     children: [
      //       CategoriesListView(),
      //       SizedBox(
      //         height: 32,
      //       ),
      //       Expanded(
      //         child: NewsListView(),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}

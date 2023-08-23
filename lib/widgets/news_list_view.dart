import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: 16,
            ),
            child: NewsTile(),
          );
        },
        childCount: 10,
      ),
    );
  }
}

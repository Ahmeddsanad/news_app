import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });

  List<CategoryModel> categories = [
    CategoryModel(
      categoryName: 'Business',
      image: 'business.jpeg',
    ),
    CategoryModel(
      categoryName: 'Entertainment',
      image: 'entertainment.jpeg',
    ),
    CategoryModel(
      categoryName: 'General',
      image: 'general.jpeg',
    ),
    CategoryModel(
      categoryName: 'Health',
      image: 'health.jpeg',
    ),
    CategoryModel(
      categoryName: 'Science',
      image: 'science.jpeg',
    ),
    CategoryModel(
      categoryName: 'Sports',
      image: 'sports.jpeg',
    ),
    CategoryModel(
      categoryName: 'Technology',
      image: 'technology.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        // physics: const NeverScrollableScrollPhysics(),
        // shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CategoryCard(
              category: categories[index],
            ),
          );
        },
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

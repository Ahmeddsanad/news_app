import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({super.key, required this.category});

  CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 140,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          // color: Colors.red,
          color: Colors.black.withOpacity(0.9),
          boxShadow: const [
            BoxShadow(
              blurRadius: 3,
              spreadRadius: 2,
              color: Colors.black38,
            ),
          ],
          image: DecorationImage(
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3),
              BlendMode.darken,
            ),
            image: AssetImage(
              'assets/${category.image}',
            ),
          ),
        ),
        child: Center(
            child: Text(
          category.categoryName,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 16,
          ),
        )),
      ),
    );
  }
}

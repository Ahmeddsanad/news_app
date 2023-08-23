import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    // required this.articleModel,
  });

  // final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              'https://plus.unsplash.com/premium_photo-1673306778968-5aab577a7365?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 12,
        ),
        Text(
          'this is dfkmbmdfkigdmfgdfgdfgdfggdfgf',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'djfgdfknkgdfnkbndnbdfbdfnbodnolfbndfbdfnbdolnbodfnbdfbodnbod',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}

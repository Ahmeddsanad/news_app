// import 'package:flutter/material.dart';
// import 'package:news_app/models/article_model.dart';
// import 'package:news_app/services/news_service.dart';
// import 'package:news_app/widgets/news_tile.dart';
// import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

// class NewsListView extends StatefulWidget {
//   NewsListView({super.key});

//   // bool isLoading = false;

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   bool isLoading = true;

//   List<ArticleModel> articles = [];

//   @override
//   void initState() {
//     super.initState();

//     getGeneralMethod();
//   }

//   Future<void> getGeneralMethod() async {
//     articles = await NewsServices().getNews();
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? SliverToBoxAdapter(
//             child: Container(
//               height: 350,
//               width: 150,
//               child: const Center(
//                   child: CircularProgressIndicator(
//                 color: Colors.amber,
//               )),
//             ),
//           )
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.only(
//                     bottom: 16,
//                   ),
//                   child: NewsTile(
//                     articleModel: articles[index],
//                   ),
//                 );
//               },
//               childCount: 10,
//             ),
//           );
//   }
// }

import 'package:flutter/material.dart';
import 'package:news_apps/models/news_model.dart';
import 'package:news_apps/views/webview.dart';

// ignore: must_be_immutable
class WebListView extends StatelessWidget {
  WebListView({super.key, required this.generalNewsList});
  List<NewsModel> generalNewsList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: generalNewsList.length,
        itemBuilder: (context, index) {
          return Webview(news: generalNewsList[index]);
        });
  }
}

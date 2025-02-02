import 'package:flutter/material.dart';
import 'package:news_apps/models/news_model.dart';
import 'package:news_apps/widgets/one_page_news.dart';

class Webview extends StatelessWidget {
  const Webview({super.key, required this.news});
  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return OnePageNews(news: news);
  }
}

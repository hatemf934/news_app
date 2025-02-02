import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_apps/models/news_model.dart';
import 'package:news_apps/services/generalnews.dart';
import 'package:news_apps/widgets/loading_circular.dart';

import 'package:news_apps/widgets/web_list_view.dart';

class WebViewBuilder extends StatefulWidget {
  const WebViewBuilder({super.key, required this.catorgy});
  final String catorgy;

  @override
  State<WebViewBuilder> createState() => _WebViewBuilderState();
}

class _WebViewBuilderState extends State<WebViewBuilder> {
  List<NewsModel> generalNewsList = [];

  var futuredata;

  @override
  void initState() {
    futuredata = Newsservices(Dio()).getNews(catorgy: widget.catorgy);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
        future: futuredata,
        builder: (context, snapshot) {
          return snapshot.hasData
              ? WebListView(generalNewsList: snapshot.data!)
              : snapshot.hasError
                  ? const SliverToBoxAdapter(
                      child: Center(child: Text("oops this is error")))
                  : const SliverToBoxAdapter(
                      child: Center(
                        child: LoadingCircular(),
                      ),
                    );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:news_apps/widgets/news_list_veiw_builder.dart';

class Cardview extends StatelessWidget {
  const Cardview({super.key, required this.catogery});
  final String catogery;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(slivers: [
          NewsListVeiwBuilder(
            catorgy: catogery,
          ),
        ]),
      ),
    );
  }
}

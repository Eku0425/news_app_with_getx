import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/news_controller.dart';
import '../modal/news_modal.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final NewsController newsController = Get.put(NewsController());
    final NewsController2 newsController2 = Get.put(NewsController2());
    final NewsController3 newsController3 = Get.put(NewsController3());
    final NewsController4 newsController4 = Get.put(NewsController4());
    final NewsController5 newsController5 = Get.put(NewsController5());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
      ),
      body: FutureBuilder<NewsModal?>(
        future: newsController2.getNews(),
        builder: (context, snapshot) {
          // NewsModal? apiModal = snapshot.data;
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData && snapshot.data != null) {
            final newsModal = snapshot.data!;
            return Column(
              children: [
                Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(),
                    child: Text(newsController
                        .newsModal.value!.articles[0].source.name)),
              ],
            );
          } else {
            return const Center(child: Text('No Data'));
          }
        },
      ),
    );
  }
}

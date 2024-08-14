import 'package:get/get.dart';

import 'package:news_app_with_getx/Api_Helper/api1_helper.dart';

import '../modal/news_modal.dart';

class NewsController extends GetxController {
  ApiNewsHelper apiNewsHelper = ApiNewsHelper();
  Rx<NewsModal?> newsModal = Rx<NewsModal?>(null);

  Future<void> fromMap() async {
    try {
      final data = await apiNewsHelper.fetchNewsData();
      newsModal.value = NewsModal.fromjson(data);
      print(newsModal.value);
    } catch (e) {
      print('Error fetching news: $e');
    }
  }

  Future<NewsModal?> getNews() async {
    return newsModal.value;
  }

  NewsController() {
    fromMap();
  }
}

class NewsController2 extends GetxController {
  ApiNewsHelper apiNewsHelper = ApiNewsHelper();
  Rx<NewsModal?> newsModal = Rx<NewsModal?>(null);

  Future<void> fromMap2() async {
    try {
      final data = await apiNewsHelper.fetchNewsData();
      newsModal.value = NewsModal.fromjson(data);
      print(newsModal.value);
    } catch (e) {
      print('Error fetching news: $e');
    }
  }

  Future<NewsModal?> getNews() async {
    return newsModal.value;
  }

  NewsController() {
    fromMap2();
  }
}

class NewsController3 extends GetxController {
  ApiNewsHelper apiNewsHelper = ApiNewsHelper();
  Rx<NewsModal?> newsModal = Rx<NewsModal?>(null);

  Future<void> fromMap3() async {
    try {
      final data = await apiNewsHelper.fetchNewsData();
      newsModal = NewsModal.fromjson(data).obs;
      print(newsModal.value);
    } catch (e) {
      print('Error fetching news: $e');
    }
  }

  Future<NewsModal?> getNews() async {
    return newsModal.value;
  }

  NewsController() {
    fromMap3();
  }
}

class NewsController4 extends GetxController {
  ApiNewsHelper apiNewsHelper = ApiNewsHelper();
  Rx<NewsModal?> newsModal = Rx<NewsModal?>(null);

  Future<void> fromMap4() async {
    try {
      final data = await apiNewsHelper.fetchNewsData();
      newsModal.value = NewsModal.fromjson(data);
      print(newsModal.value);
    } catch (e) {
      print('Error fetching news: $e');
    }
  }

  Future<NewsModal?> getNews() async {
    return newsModal.value;
  }

  NewsController() {
    fromMap4();
  }
}

class NewsController5 extends GetxController {
  ApiNewsHelper apiNewsHelper = ApiNewsHelper();
  Rx<NewsModal?> newsModal = Rx<NewsModal?>(null);

  Future<void> fromMap5() async {
    try {
      final data = await apiNewsHelper.fetchNewsData();
      newsModal.value = NewsModal.fromjson(data);
      print(newsModal.value);
    } catch (e) {
      print('Error fetching news: $e');
    }
  }

  Future<NewsModal?> getNews() async {
    return newsModal.value;
  }

  NewsController() {
    fromMap5();
  }
}

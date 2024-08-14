import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiNewsHelper {
  String api =
      'https://newsapi.org/v2/everything?q=apple&from=2024-08-13&to=2024-08-13&sortBy=popularity&apiKey=73d19ece7f5d4088b6f327b5498f9b1f';
  String api2 =
      'https://newsapi.org/v2/everything?q=tesla&from=2024-07-14&sortBy=publishedAt&apiKey=73d19ece7f5d4088b6f327b5498f9b1f';
  String api3 =
      'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=73d19ece7f5d4088b6f327b5498f9b1f';
  String api4 =
      'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=73d19ece7f5d4088b6f327b5498f9b1f';
  String api5 =
      'https://newsapi.org/v2/everything?domains=wsj.com&apiKey=73d19ece7f5d4088b6f327b5498f9b1f';

  Future<Map> fetchNewsData() async {
    Uri url = Uri.parse(api);

    Response response = await http.get(url);

    if (response.statusCode == 200) {
      final json = response.body;
      final Map data = jsonDecode(json);
      return data;
    } else {
      return {};
    }
  }

  Future<Map> fetchNewsData2() async {
    Uri url = Uri.parse(api2);

    Response response = await http.get(url);

    if (response.statusCode == 200) {
      final json = response.body;
      final Map data = jsonDecode(json);
      return data;
    } else {
      return {};
    }
  }

  Future<Map> fetchNewsData3() async {
    Uri url = Uri.parse(api3);

    Response response = await http.get(url);

    if (response.statusCode == 200) {
      final json = response.body;
      final Map data = jsonDecode(json);
      return data;
    } else {
      return {};
    }
  }

  Future<Map> fetchNewsData4() async {
    Uri url = Uri.parse(api3);

    Response response = await http.get(url);

    if (response.statusCode == 200) {
      final json = response.body;
      final Map data = jsonDecode(json);
      return data;
    } else {
      return {};
    }
  }

  Future<Map> fetchNewsData5() async {
    Uri url = Uri.parse(api5);
    Response response = await http.get(url);

    if (response.statusCode == 200) {
      final json = response.body;
      final Map data = jsonDecode(json);
      return data;
    } else {
      return {};
    }
  }
}

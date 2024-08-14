// class NewsModal {
//   late String status;
//
//   final List<Articles> articles;
//
//   NewsModal({required this.status, required this.articles});
//
//   factory NewsModal.fromjson(Map m1) => NewsModal(
//       status: m1['status'] ?? '',
//       articles:
//           (m1['articles'] as List).map((e) => Articles.fromjson(e)).toList());
// }
//
// class Articles {
//   late Source source;
//   late String author;
//   late String title;
//   late String description;
//   late String url;
//   late String urlToImage;
//
//   // late DateTime publishedAt;
//   late String content;
//
//   Articles({
//     required this.source,
//     required this.author,
//     required this.title,
//     required this.url,
//     required this.urlToImage,
//     // required this.publishedAt,
//     required this.content,
//     required this.description,
//   });
//
//   factory Articles.fromjson(Map m1) {
//     return Articles(
//         source: m1['source'] ?? '',
//         description: m1['description'] ?? '',
//         author: m1['author'] ?? '',
//         title: m1['title'] ?? '',
//         url: m1['url'] ?? '',
//         urlToImage: m1['urlToImage'] ?? '',
//         // publishedAt: m1['publishedAt'] ?? '',
//         content: m1['content'] ?? '');
//   }
// }
//
// class Source {
//   late String name;
//
//   Source({
//     required this.name,
//   });
//
//   factory Source.fromjson(Map m1) => Source(name: m1['name'] ?? '');
// }
class NewsModal {
  final List<Articles> articles;

  NewsModal({required this.articles});

  factory NewsModal.fromjson(Map json) {
    return NewsModal(
      articles:
          (json['articles'] as List).map((e) => Articles.fromjson(e)).toList(),
    );
  }
}

class Articles {
  final Source source;
  final String author;
  late String url;
  late String urlToImage;
  final String title;
  final String description;
  final String publishedAt;
  final String content;

  Articles({
    required this.source,
    required this.url,
    required this.urlToImage,
    required this.author,
    required this.title,
    required this.description,
    required this.publishedAt,
    required this.content,
  });

  factory Articles.fromjson(Map json) {
    return Articles(
      source: Source.fromjson(json['source']),
      author: json['author'] ?? '',
      url: json['url'] ?? '',
      urlToImage: json['urlToImage'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      publishedAt: json['publishedAt'] ?? '',
      content: json['content'] ?? '',
    );
  }
}

class Source {
  final String name;

  Source({required this.name});

  factory Source.fromjson(Map json) {
    return Source(name: json['name'] ?? '');
  }
}

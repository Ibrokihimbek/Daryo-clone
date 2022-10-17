class Article {
  String? author;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Article({
    required this.author,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      author: json['author'] ?? "",
      urlToImage: json['urlToImage'] ?? "",
      publishedAt: json['publishedAt'] ?? "",
      content: json['content'] ?? "",
    );
  }
}

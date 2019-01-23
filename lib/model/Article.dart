/*class Article{
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Article({this.source, this.author, this.title, this.description, this.url, this.urlToImage, this.publishedAt, this.content});

  factory Article.fromJson(Map<String, dynamic> jsonString){
    return Article(
      source: Source.fromJson(jsonString['source']),
      author: jsonString['author'],
      title: jsonString['title'],
      description: jsonString['description'],
      url: jsonString['url'],
      urlToImage: jsonString['urlToImage'],
      publishedAt: jsonString['publishedAt'],
      content: jsonString['content'],
    );
  }

}*/

class Article{
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Article({this.author, this.title, this.description, this.url, this.urlToImage, this.publishedAt, this.content});

  factory Article.fromJson(Map<String, dynamic> jsonString){
    return Article(
      author: jsonString['author'],
      title: jsonString['title'],
      description: jsonString['description'],
      url: jsonString['url'],
      urlToImage: jsonString['urlToImage'],
      publishedAt: jsonString['publishedAt'],
      content: jsonString['content'],
    );
  }

}

/*
class Source{
  String id;
  String name;

  Source({this.id, this.name});

  factory Source.fromJson(Map<String, dynamic> jsonString){
    return Source(
      id: jsonString['id'],
      name: jsonString['name'],
    );
  }
}*/

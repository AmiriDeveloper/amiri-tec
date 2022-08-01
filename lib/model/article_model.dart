class ArticleModel {
  String? id, title, image, catId, catName, author, view, status, createdAt;

  ArticleModel({
    required this.id,
    required this.title,
    required this.image,
    required this.catId,
    required this.catName,
    required this.author,
    required this.view,
    required this.status,
    required this.createdAt,
  });

  ArticleModel.fromJson(Map<String, dynamic> element) {
    id = element["id"];
    title = element["title"];
    image = element["image"];
    catId = element["cat_id"];
    catName = element["at_name"];
    author = element[""];
    view = element["author"];
    status = element["status"];
    createdAt = element["create_at"];
  }
}

class TopPodcasts {
  String? id, title, poster, publisher, view, createAt;

  TopPodcasts({
    required this.id,
    required this.title,
    required this.poster,
    required this.publisher,
    required this.view,
    required this.createAt,
  });

  TopPodcasts.fromJson(Map<String, dynamic> element2) {
    id = element2["id"];
    title = element2["title"];
    poster = element2["poster"];
    publisher = element2["publisher"];
    view = element2["view"];
    createAt = element2["created_at"];
  }
}

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
    catName = element["cat_name"];
    author = element["view"];
    view = element["author"];
    status = element["status"];
    createdAt = element["create_at"];
  }
}

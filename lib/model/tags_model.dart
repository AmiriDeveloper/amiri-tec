class TagsModel {
  String? id, title;

  TagsModel({required this.id, required this.title});

  TagsModel.fromJson(Map<String, dynamic> element2) {
    id = element2["id"];
    title = element2["title"];
  }
}

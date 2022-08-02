class Poster {
  String? id, title, image;

  Poster({required this.id, required this.title, required this.image});

  Poster.fromJson(Map<String, dynamic> element2) {
    id = element2["id"];
    title = element2["title"];
    image = element2["image"];
  }
}

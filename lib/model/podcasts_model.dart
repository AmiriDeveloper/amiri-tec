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

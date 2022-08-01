Map homePagePosterMap = {
  "imageAsset ": "assets/images/skynews.jpg",
  "writer": "ملیکا عزیزی",
  "data": "یک روز پیش",
  "title": "دوازده قدم برنامه نویسی یک دوره ی...",
  "view": "250"
};

class HashTagModel {
  String title;
  HashTagModel({required this.title});
}

List<HashTagModel> tagList = [
  HashTagModel(title: "جاوا"),
  HashTagModel(title: "کاتلین"),
  HashTagModel(title: "وب"),
  HashTagModel(title: "هوش مصنوعی"),
  HashTagModel(title: "iot"),
  HashTagModel(title: "دارت"),
];

class PodcastModel {
  int id;
  String imageUrl;
  String title;
  String writer;

  PodcastModel({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.writer,
  });
}
//----------------------------------------------
//blog fake data

List<HashTagModel> selectedTags = [];

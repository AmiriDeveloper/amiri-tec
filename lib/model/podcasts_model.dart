import 'package:tec/component/api_constant.dart';

class PodcastsModel {
  String? id;
  String? title;
  String? poster;
  String? publisher;
  String? view;
  String? createAt;

  PodcastsModel({
    required this.id,
    required this.title,
    required this.poster,
    required this.publisher,
    required this.view,
    required this.createAt,
  });

  PodcastsModel.fromJson(Map<String, dynamic> element) {
    id = element["id"];
    title = element["title"];
    poster = ApiConstant.hostDlUrl + element["poster"];
    publisher = element["publisher"];
    view = element["view"];
    createAt = element["created_at"];
  }
}

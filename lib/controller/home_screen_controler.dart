import 'package:get/get.dart';
import 'package:tec/component/api_constant.dart';
import 'package:tec/model/article_model.dart';
import 'package:tec/model/poster_model.dart';
import 'package:tec/service/dio_service.dart';
import '../model/podcasts_model.dart';
import '../model/tags_model.dart';

class HomeScreenContriller extends GetxController {
  Rx<PosterModel> topPoster = PosterModel().obs;
  RxList<PodcastsModel> topPodcasts = RxList();
  RxList<TagsModel> topTags = RxList();
  RxList<ArticleModel> topVisitedList = RxList();
  RxBool loding = false.obs;

  @override
  onInit() {
    super.onInit();
    getHomeItems();
  }

  getHomeItems() async {
    loding.value = true;

    var response = await DioService().getMethod(ApiConstant.getHomeItems);

    if (response.statusCode == 200) {
      response.data['top_visited'].forEach((element) {
        topVisitedList.add(ArticleModel.fromJson(element));
      });

      response.data['top_podcasts'].forEach((element) {
        topPodcasts.add(PodcastsModel.fromJson(element));
      });

      response.data['tags'].forEach((element) {
        topTags.add(TagsModel.fromJson(element));
      });

      topPoster.value = PosterModel.fromJson(response.data['poster']);
      loding.value = false;
    }
  }
}

import 'package:get/get.dart';
import 'package:tec/component/api_constant.dart';
import 'package:tec/model/article_model.dart';
import 'package:tec/model/poster_model.dart';
import 'package:tec/service/dio_service.dart';
import '../model/podcasts_model.dart';
import '../model/tags_model.dart';

class HomeScreenContriller extends GetxController {
  late Rx<Poster> poster;
  RxList<TopPodcasts> topPodcasts = RxList();
  RxList<TagsModel> tagsModel = RxList();
  RxList<ArticleModel> topVisitedList = RxList();

  @override
  onInit() {
    super.onInit();
    getHomeItems();
  }

  getHomeItems() async {
    var response = await DioService().getMethod(ApiConstant.getHomeItems);

    if (response.statusCode == 200) {
      response.data['top_visited'].forEach((element) {
        topVisitedList.add(ArticleModel.fromJson(element));
      });
    }
  }
}

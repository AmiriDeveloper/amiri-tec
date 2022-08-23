import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:tec/component/my_colors.dart';
import 'package:tec/controller/article_controller.dart';

import '../../component/my_component.dart';

// ignore: must_be_immutable
class ArticleScreen extends StatelessWidget {
  ArticleScreen({Key? key}) : super(key: key);

  ArcticleController arcticleController = Get.put(ArcticleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar("مقالات جدید"),
        body: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Obx(
              () => ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: arcticleController.articleList.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      SizedBox(
                        height: Get.height / 6,
                        width: Get.width / 3,
                        child: CachedNetworkImage(
                          imageUrl:
                              arcticleController.articleList[index].image!,
                          imageBuilder: ((context, imageProvider) => Container(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(16),
                                    ),
                                    image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.cover)),
                              )),
                          placeholder: ((context, url) {
                            return const SpinKitFadingCube(
                              color: SolidColors.primeryColorpurple,
                              size: 32,
                            );
                          }),
                          errorWidget: ((context, url, error) {
                            return const Icon(
                                Icons.image_not_supported_outlined,
                                color: SolidColors.primeryColorpurple);
                          }),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          Text(arcticleController.articleList[index].title!,
                              overflow: TextOverflow.ellipsis, maxLines: 1),
                          Row(
                            children: [
                              Text(arcticleController
                                  .articleList[index].author!),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(arcticleController.articleList[index].view! +
                                  "بازدید")
                            ],
                          )
                        ],
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ));
  }
}

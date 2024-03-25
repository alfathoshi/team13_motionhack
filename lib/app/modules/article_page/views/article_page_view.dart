import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:motionhack/app/shared/widgets/article_card.dart';

import '../controllers/article_page_controller.dart';

class ArticlePageView extends GetView<ArticlePageController> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ArticlePageController());

    return Scaffold(
      backgroundColor: Color(0xFFf8f8f8),
      body: Obx(() => ListView.builder(
          itemCount: controller.articles.length,
          itemBuilder: (context, index) => ArticleCard(
                id: controller.articles[index].id.toString(),
                title: controller.articles[index].title.toString(),
                description: controller.articles[index].description.toString(),
                sourceTitle: controller.articles[index].sourceTitle.toString(),
              ))),
    );
  }
}

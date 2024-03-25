import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:motionhack/app/shared/widgets/video_card.dart';

import '../controllers/video_page_controller.dart';

class VideoPageView extends GetView<VideoPageController> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VideoPageController());

    return Scaffold(
      backgroundColor: Color(0xFFf8f8f8),
      body: Obx(() => ListView.builder(
          itemCount: controller.articles.length,
          itemBuilder: (context, index) => VideoCard(
                id: controller.articles[index].id.toString(),
                title: controller.articles[index].title.toString(),
                source: controller.articles[index].source.toString(),
              ))),
    );
  }
}

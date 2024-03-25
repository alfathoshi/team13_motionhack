import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:motionhack/app/utils/video_card.dart';

import '../controllers/video_page_controller.dart';

class VideoPageView extends GetView<VideoPageController> {
  const VideoPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color(0xFFf8f8f8),
        
        body: SingleChildScrollView(
          child: Column(
            children: [
              VideoCard(),
            ],
          ),
        ));
  }
}

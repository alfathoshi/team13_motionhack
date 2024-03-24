import 'package:get/get.dart';

import '../controllers/video_page_controller.dart';

class VideoPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VideoPageController>(
      () => VideoPageController(),
    );
  }
}

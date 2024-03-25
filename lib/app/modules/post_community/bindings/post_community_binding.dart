import 'package:get/get.dart';

import '../controllers/post_community_controller.dart';

class PostCommunityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostCommunityController>(
      () => PostCommunityController(),
    );
  }
}

import 'package:get/get.dart';

import '../controllers/consultant_controller.dart';

class ConsultantBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConsultantController>(
      () => ConsultantController(),
    );
  }
}

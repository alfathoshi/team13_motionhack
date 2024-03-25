import 'package:get/get.dart';

class NavigationBarController extends GetxController {
  var selectedindex = 0.obs;
  var profile = true.obs;
  void changeIndex(int index) {
    selectedindex.value = index;
    if (selectedindex.value == 3) {
      profile.value = false;
    } else {
      profile.value = true;
    }
  }

}

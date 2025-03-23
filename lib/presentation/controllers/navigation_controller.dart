import 'package:get/get.dart';

class NavigationController extends GetxController {
  RxInt currentIndex = 0.obs;

  set changeNavItem(int index) {
    currentIndex.value = index;
  }
}

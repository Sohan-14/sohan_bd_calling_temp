import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/features/home/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}

import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/presentation/controllers/splash_controller.dart';

class SplashBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}
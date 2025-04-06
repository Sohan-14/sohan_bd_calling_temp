import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/features/onboarding/controllers/splash_controller.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}

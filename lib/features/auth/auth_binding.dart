import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/features/auth/controllers/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
  }
}

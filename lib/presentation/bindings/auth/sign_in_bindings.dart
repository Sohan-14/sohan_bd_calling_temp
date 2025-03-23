import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/core/network/network_service.dart';
import 'package:sohan_bd_calling_temp/presentation/controllers/auth/sign_in_controller.dart';

class SignInBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController(Get.find<NetworkService>()));
  }
}
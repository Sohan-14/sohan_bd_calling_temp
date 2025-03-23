import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/presentation/controllers/auth/sign_up_controller.dart';

class SignUpBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(() => SignUpController());
  }
}
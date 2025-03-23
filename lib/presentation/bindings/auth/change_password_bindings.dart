import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/presentation/controllers/auth/change_password_controller.dart';

class ChangePasswordBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ChangePasswordController>(() => ChangePasswordController());
  }
}
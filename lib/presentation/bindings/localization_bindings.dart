import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/presentation/controllers/localization_controller.dart';

class LocalizationBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LocalizationController>(() => LocalizationController());
  }
}
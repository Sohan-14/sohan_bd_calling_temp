import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/presentation/controllers/general_controller.dart';

class GeneralBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<GeneralController>(() => GeneralController());
  }
}
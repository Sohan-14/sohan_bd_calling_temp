import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/features/general/controllers/general_controller.dart';

class GeneralBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GeneralController>(() => GeneralController());
  }
}

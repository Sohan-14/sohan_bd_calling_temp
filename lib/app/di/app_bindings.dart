import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/app/network/network_service.dart';
import 'package:sohan_bd_calling_temp/features/home/controllers/navigation_controller.dart';


class AppBindings extends Bindings{
  @override
  void dependencies() {
    Get.put<NetworkService>(NetworkService(), permanent: true);
    Get.lazyPut<NavigationController>(() => NavigationController());
  }
}

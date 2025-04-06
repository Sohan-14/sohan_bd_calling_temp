import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/app/config/app_constants.dart';
import 'package:sohan_bd_calling_temp/app/routes/app_screens.dart';
import 'package:sohan_bd_calling_temp/app/storage/storage_service.dart';

class SplashController extends GetxController {
  final StorageService _storage = StorageService();

  @override
  void onInit() {
    super.onInit();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() async {
    await Future<void>.delayed(const Duration(seconds: 3));

    final bool isLoggedIn = _storage.isDataExists(AppConstants.token);

    if (isLoggedIn) {
      Get.offNamed<dynamic>(AppScreens.homeRoute);
    } else {
      Get.offNamed<dynamic>(AppScreens.signInRoute);
    }
  }
}

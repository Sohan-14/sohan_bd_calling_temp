import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/core/config/app_api_endpoints.dart';
import 'package:sohan_bd_calling_temp/core/enums/http_method.dart';
import 'package:sohan_bd_calling_temp/core/network/network_service.dart';
import 'package:sohan_bd_calling_temp/core/utils/logger_utils.dart';

class SignInController extends GetxController{

  final NetworkService _networkService;

  SignInController(this._networkService);

  late TextEditingController emailController;
  late TextEditingController passwordController;
  RxBool isSignInLoading = false.obs;

  Future<void> handleSignIn() async{
    isSignInLoading.value = true;

    final Map<String, dynamic> body = <String, String>{
      "email": emailController.text.trim(),
      "password": passwordController.text.trim(),
      "fcmToken": "fcmToken",
    };

    final dynamic sample = await _networkService.handleRequest<dynamic>(
      httpMethod: HttpMethod.POST,
      endpoint: AppApiEndpoints.singIn,
      data: body
    );

    LoggerUtils.info(sample.toString());

    // if (response.statusCode == 200 || response.statusCode == 201) {
    //   isSignInLoading.value = false;
    // }
    // else {
    //   Fluttertoast.showToast(
    //     msg: response.body['message'],
    //   );
    // }
  }

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    isSignInLoading.value = false;
  }

  @override
  void dispose() {
    super.dispose();
    emailController.clear();
    passwordController.clear();
    isSignInLoading.value = false;
  }
}
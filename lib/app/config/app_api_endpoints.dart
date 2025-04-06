import 'package:sohan_bd_calling_temp/app/config/app_constants.dart';

class AppApiEndpoints{
  AppApiEndpoints._();
  static const String getAllUser = "${AppConstants.apiBaseUrl}/users";
  // auth end points
  static const String singIn = "${AppConstants.apiBaseUrl}/auth/sign-in";
  static const String singUp = "${AppConstants.apiBaseUrl}/auth/sign-up";
  static const String sentOtp = "${AppConstants.apiBaseUrl}/auth/send-otp";
  static const String verifyEmail = "${AppConstants.apiBaseUrl}/auth/verify-email";
  static const String resetPassword = "${AppConstants.apiBaseUrl}/auth/reset-password";
  static const String changePassword = "${AppConstants.apiBaseUrl}/auth/change-password";
  // profile endpoint
}
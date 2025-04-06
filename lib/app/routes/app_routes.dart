import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/app/routes/app_screens.dart';
import 'package:sohan_bd_calling_temp/features/auth/auth_binding.dart';
import 'package:sohan_bd_calling_temp/features/auth/views/change_password_screen.dart';
import 'package:sohan_bd_calling_temp/features/auth/views/forgot_password_screen.dart';
import 'package:sohan_bd_calling_temp/features/auth/views/reset_password_screen.dart';
import 'package:sohan_bd_calling_temp/features/auth/views/sign_in_screen.dart';
import 'package:sohan_bd_calling_temp/features/auth/views/sign_up_screen.dart';
import 'package:sohan_bd_calling_temp/features/auth/views/verify_email_screen.dart';
import 'package:sohan_bd_calling_temp/features/general/general_binding.dart';
import 'package:sohan_bd_calling_temp/features/general/views/general_screen.dart';
import 'package:sohan_bd_calling_temp/features/home/home_binding.dart';
import 'package:sohan_bd_calling_temp/features/home/views/home_screen.dart';
import 'package:sohan_bd_calling_temp/features/onboarding/onboarding_binding.dart';
import 'package:sohan_bd_calling_temp/features/profile/profile_binding.dart';
import 'package:sohan_bd_calling_temp/features/profile/views/account_info_screen.dart';
import 'package:sohan_bd_calling_temp/features/onboarding/views/splash_screen.dart';

class AppRoutes {
  AppRoutes._();
  static final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    // Initial routes
    GetPage<dynamic>(
      name: AppScreens.initialRoute,
      page: () => const SplashScreen(),
      binding: OnboardingBinding(),
    ),

    // Auth routes
    GetPage<dynamic>(
      name: AppScreens.signInRoute,
      page: () => const SignInScreen(),
      binding: AuthBinding(),
    ),
    GetPage<dynamic>(
      name: AppScreens.signUpRoute,
      page: () => const SignUpScreen(),
      binding: AuthBinding(),
    ),
    GetPage<dynamic>(
      name: AppScreens.verifyEmailRoute,
      page: () => const VerifyEmailScreen(),
      binding: AuthBinding(),
    ),
    GetPage<dynamic>(
      name: AppScreens.forgotPasswordRoute,
      page: () => const ForgotPasswordScreen(),
      binding: AuthBinding(),
    ),
    GetPage<dynamic>(
      name: AppScreens.resetPasswordRoute,
      page: () => const ResetPasswordScreen(),
      binding: AuthBinding(),
    ),
    GetPage<dynamic>(
      name: AppScreens.changePasswordRoute,
      page: () => const ChangePasswordScreen(),
      binding: AuthBinding(),
    ),

    // General routes
    GetPage<dynamic>(
      name: AppScreens.generalRoute,
      page: () => const GeneralScreen(),
      binding: GeneralBinding(),
    ),

    // Home routes
    GetPage<dynamic>(
      name: AppScreens.homeRoute,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),

    // Profile routes
    GetPage<dynamic>(
      name: AppScreens.accountInfoRoute,
      page: () => const AccountInfoScreen(),
      binding: ProfileBinding(),
    ),
  ];
}

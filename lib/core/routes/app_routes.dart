import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/core/routes/app_screens.dart';
import 'package:sohan_bd_calling_temp/presentation/bindings/auth/change_password_bindings.dart';
import 'package:sohan_bd_calling_temp/presentation/bindings/auth/forgot_password_bindings.dart';
import 'package:sohan_bd_calling_temp/presentation/bindings/auth/reset_password_bindings.dart';
import 'package:sohan_bd_calling_temp/presentation/bindings/auth/sign_in_bindings.dart';
import 'package:sohan_bd_calling_temp/presentation/bindings/auth/sign_up_bindings.dart';
import 'package:sohan_bd_calling_temp/presentation/bindings/auth/verify_email_bindings.dart';
import 'package:sohan_bd_calling_temp/presentation/bindings/general_bindings.dart';
import 'package:sohan_bd_calling_temp/presentation/bindings/splash_bindings.dart';
import 'package:sohan_bd_calling_temp/presentation/screens/auth/change_password_screen.dart';
import 'package:sohan_bd_calling_temp/presentation/screens/auth/forgot_password_screen.dart';
import 'package:sohan_bd_calling_temp/presentation/screens/auth/reset_password_screen.dart';
import 'package:sohan_bd_calling_temp/presentation/screens/auth/sign_in_screen.dart';
import 'package:sohan_bd_calling_temp/presentation/screens/auth/sign_up_screen.dart';
import 'package:sohan_bd_calling_temp/presentation/screens/auth/verify_email_screen.dart';
import 'package:sohan_bd_calling_temp/presentation/screens/general_screen.dart';
import 'package:sohan_bd_calling_temp/presentation/screens/home_screen.dart';
import 'package:sohan_bd_calling_temp/presentation/screens/profile/account_info_screen.dart';
import 'package:sohan_bd_calling_temp/presentation/screens/splash_screen.dart';

class AppRoutes {
  AppRoutes._();
  static final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    // Initial routes
    GetPage<dynamic>(
      name: AppScreens.initialRoute,
      page: () => const SplashScreen(),
      binding: SplashBindings(),
    ),

    // Auth routes
    GetPage<dynamic>(
      name: AppScreens.signInRoute,
      page: () => const SignInScreen(),
      binding: SignInBindings(),
    ),
    GetPage<dynamic>(
      name: AppScreens.signUpRoute,
      page: () => const SignUpScreen(),
      binding: SignUpBindings(),
    ),
    GetPage<dynamic>(
      name: AppScreens.verifyEmailRoute,
      page: () => const VerifyEmailScreen(),
      binding: VerifyEmailBindings(),
    ),
    GetPage<dynamic>(
      name: AppScreens.forgotPasswordRoute,
      page: () => const ForgotPasswordScreen(),
      binding: ForgotPasswordBindings(),
    ),
    GetPage<dynamic>(
      name: AppScreens.resetPasswordRoute,
      page: () => const ResetPasswordScreen(),
      binding: ResetPasswordBindings(),
    ),
    GetPage<dynamic>(
      name: AppScreens.changePasswordRoute,
      page: () => const ChangePasswordScreen(),
      binding: ChangePasswordBindings(),
    ),

    // General routes
    GetPage<dynamic>(
      name: AppScreens.generalRoute,
      page: () => const GeneralScreen(),
      binding: GeneralBindings(),
    ),

    // Home routes
    GetPage<dynamic>(
      name: AppScreens.homeRoute,
      page: () => const HomeScreen(),
    ),

    // Profile routes
    GetPage<dynamic>(
      name: AppScreens.accountInfoRoute,
      page: () => const AccountInfoScreen(),
    ),
  ];
}

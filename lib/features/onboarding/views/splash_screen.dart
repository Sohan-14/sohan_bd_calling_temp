import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/extensions/context_extensions.dart';
import 'package:sohan_bd_calling_temp/app/themes/theme_manager.dart';
import 'package:sohan_bd_calling_temp/features/onboarding/controllers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<SplashController>();
    final ThemeManager themeManager = Get.find<ThemeManager>();
    return Scaffold(
      backgroundColor: !themeManager.isDarkMode(context) ? AppLightColors.whiteColor : AppDarkColors.whiteColor,
      body: Center(child: Text("Splash Screen", style: context.txtTheme.headlineLarge?.copyWith(
        color: !themeManager.isDarkMode(context) ? AppLightColors.blackColor : AppDarkColors.blackColor,
      ),),),
    );
  }
}

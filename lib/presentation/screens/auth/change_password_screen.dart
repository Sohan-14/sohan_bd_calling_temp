import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/core/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/core/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/core/config/app_sizes.dart';
import 'package:sohan_bd_calling_temp/core/config/app_strings.dart';
import 'package:sohan_bd_calling_temp/core/themes/theme_manager.dart';
import 'package:sohan_bd_calling_temp/core/widgets/custom_app_bar.dart';
import 'package:sohan_bd_calling_temp/presentation/controllers/auth/change_password_controller.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ChangePasswordController changePasswordController = Get.find<ChangePasswordController>();
    final ThemeManager themeManager = Get.find<ThemeManager>();

    return Scaffold(
      backgroundColor: !themeManager.isDarkMode(context) ? AppLightColors.whiteColor : AppDarkColors.whiteColor,
      appBar: const CustomAppBar(title: AppStrings.changePassword, isBackAvail: false,),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.xl),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                SizedBox(height: AppSizes.spaceBetweenSections,),

                // content

                SizedBox(height: AppSizes.spaceBetweenSections,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

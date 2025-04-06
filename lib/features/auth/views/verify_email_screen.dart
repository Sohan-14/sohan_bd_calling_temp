import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/app/config/app_constants.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_sizes.dart';
import 'package:sohan_bd_calling_temp/app/config/app_strings.dart';
import 'package:sohan_bd_calling_temp/app/enums/views_type.dart';
import 'package:sohan_bd_calling_temp/app/extensions/context_extensions.dart';
import 'package:sohan_bd_calling_temp/app/routes/app_screens.dart';
import 'package:sohan_bd_calling_temp/app/themes/theme_manager.dart';
import 'package:sohan_bd_calling_temp/app/widgets/auth_screen_title_section.dart';
import 'package:sohan_bd_calling_temp/app/widgets/custom_button.dart';
import 'package:sohan_bd_calling_temp/app/widgets/custom_pin_code_text_field.dart';
import 'package:sohan_bd_calling_temp/features/auth/controllers/auth_controller.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.find<AuthController>();
    final ThemeManager themeManager = Get.find<ThemeManager>();
    final Map<String, dynamic> arguments = Get.arguments;
    final ViewsType viewsType = arguments[AppConstants.viewsType] as ViewsType;

    return Scaffold(
      backgroundColor: !themeManager.isDarkMode(context) ? AppLightColors.whiteColor : AppDarkColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.xl),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: context.screenHeight
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              
                  if (context.isLandscapeOrientation) const SizedBox(height: AppSizes.spaceBetweenSections,),
              
                  const AuthScreenTitleSection(title: AppStrings.verifyEmailTitle, subTitle: AppStrings.verifyEmailSubTitle),

                  const SizedBox(height: AppSizes.spaceBetweenSections,),

                  CustomPinCodeTextField(textEditingController: TextEditingController(),),

                  const SizedBox(height: AppSizes.spaceBetweenSections,),

                  CustomButton(
                      onTap: (){
                        switch (viewsType) {
                          case ViewsType.RESET_PASSWORD:
                            Get.toNamed(AppScreens.resetPasswordRoute);
                          case ViewsType.CHANGE_PASSWORD:
                            Get.toNamed(AppScreens.changePasswordRoute);
                          case ViewsType.HOME:
                            Get.toNamed(AppScreens.homeRoute);
                        }
                      },
                      text: AppStrings.verify
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

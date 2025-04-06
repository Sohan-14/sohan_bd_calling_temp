import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_sizes.dart';
import 'package:sohan_bd_calling_temp/app/config/app_strings.dart';
import 'package:sohan_bd_calling_temp/app/extensions/context_extensions.dart';
import 'package:sohan_bd_calling_temp/app/routes/app_screens.dart';
import 'package:sohan_bd_calling_temp/app/themes/theme_manager.dart';
import 'package:sohan_bd_calling_temp/app/utils/validators/app_validation.dart';
import 'package:sohan_bd_calling_temp/app/widgets/auth_screen_title_section.dart';
import 'package:sohan_bd_calling_temp/app/widgets/custom_button.dart';
import 'package:sohan_bd_calling_temp/app/widgets/input_layout.dart';
import 'package:sohan_bd_calling_temp/features/auth/controllers/auth_controller.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.find<AuthController>();
    final ThemeManager themeManager = Get.find<ThemeManager>();
    final GlobalKey<FormState> formKey =  GlobalKey<FormState>();


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

                  const AuthScreenTitleSection(title: AppStrings.resetPasswordTitle, subTitle: AppStrings.resetPasswordSubTitle),

                  Form(
                      key: formKey,
                      child: Column(
                        children: <Widget>[

                          InputLayout(
                            isLabelLarge: true,
                            validator: (dynamic value) => AppValidation.validatePassword(value),
                            inputLabel: AppStrings.newPasswordLabel,
                            isBorder: true,
                            hintText: AppStrings.newPasswordHint,
                            controller: TextEditingController(),
                            isPassword: true,
                          ),

                          InputLayout(
                            isLabelLarge: true,
                            validator: (dynamic value) => AppValidation.validatePassword(value),
                            inputLabel: AppStrings.confirmPasswordLabel,
                            isBorder: true,
                            hintText: AppStrings.confirmPasswordHint,
                            controller: TextEditingController(),
                            isPassword: true,
                          ),
                          // privacy policy layout
                          // TermsAndConditionLayout(),
                        ],
                      )
                  ),


                  const SizedBox(height: AppSizes.spaceBetweenSections,),

                  CustomButton(
                      onTap: (){
                        if(formKey.currentState!.validate()){
                          Get.toNamed(AppScreens.homeRoute);
                        }
                      },
                      text: AppStrings.resetPassword
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

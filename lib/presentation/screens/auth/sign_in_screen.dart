import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/core/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/core/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/core/config/app_sizes.dart';
import 'package:sohan_bd_calling_temp/core/config/app_strings.dart';
import 'package:sohan_bd_calling_temp/core/extensions/context_extensions.dart';
import 'package:sohan_bd_calling_temp/core/themes/theme_manager.dart';
import 'package:sohan_bd_calling_temp/core/utils/validators/app_validation.dart';
import 'package:sohan_bd_calling_temp/core/widgets/auth_screen_title_section.dart';
import 'package:sohan_bd_calling_temp/core/widgets/input_layout.dart';
import 'package:sohan_bd_calling_temp/presentation/controllers/auth/sign_in_controller.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SignInController signInController = Get.find<SignInController>();
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

                  const AuthScreenTitleSection(title: AppStrings.signInTitle, subTitle: AppStrings.signInSubTitle),


                  Form(
                      key: formKey,
                      child: Column(
                        children: <Widget>[

                          InputLayout(
                            isLabelLarge: true,
                            isBorder: true,
                            validator: (dynamic value) => AppValidation.validateEmail(value),
                            inputLabel: AppStrings.emailAddressLabel,
                            hintText: AppStrings.emailAddressHint,
                            controller: TextEditingController(),
                          ),

                          InputLayout(
                            isLabelLarge: true,
                            validator: (dynamic value) => AppValidation.validatePassword(value),
                            inputLabel: AppStrings.passwordLabel,
                            isBorder: true,
                            hintText: AppStrings.passwordHint,
                            controller: TextEditingController(),
                            isPassword: true,
                          ),

                          // privacy policy layout
                          // TermsAndConditionLayout(),
                        ],
                      )
                  ),


                  const SizedBox(height: AppSizes.spaceBetweenSections,),

                  ElevatedButton(onPressed: () => signInController.handleSignIn(), child: const Text(AppStrings.signIn)),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
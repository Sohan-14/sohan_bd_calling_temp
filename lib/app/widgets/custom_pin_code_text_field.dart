import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_sizes.dart';
import 'package:sohan_bd_calling_temp/app/extensions/context_extensions.dart';
import 'package:sohan_bd_calling_temp/app/themes/theme_manager.dart';

class CustomPinCodeTextField extends StatelessWidget {
  const CustomPinCodeTextField({super.key,this.textEditingController});
  final TextEditingController? textEditingController;
  @override
  Widget build(BuildContext context) {
    final ThemeManager themeManager = Get.find<ThemeManager>();
    return  Container(
      constraints: const BoxConstraints(
        maxWidth: 400.0,
      ),
      child: PinCodeTextField(
        backgroundColor: Colors.transparent,
        cursorColor: !themeManager.isDarkMode(context) ? AppLightColors.primaryColor: AppDarkColors.primaryColor,
        controller: textEditingController,
          textStyle: context.txtTheme.headlineMedium,
          autoFocus: false,
          appContext: context,
          length: 6,
          pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
              selectedColor:  !themeManager.isDarkMode(context) ? AppLightColors.primaryColor: AppDarkColors.primaryColor,
              activeFillColor:  !themeManager.isDarkMode(context) ? AppLightColors.primaryColor: AppDarkColors.primaryColor,
              selectedFillColor: Colors.transparent,
              inactiveFillColor: Colors.transparent,
              fieldWidth: 50,
              fieldHeight: 60,
              inactiveColor: !themeManager.isDarkMode(context) ? AppLightColors.primaryColor: AppDarkColors.primaryColor,
              activeColor: !themeManager.isDarkMode(context) ? AppLightColors.primaryColor: AppDarkColors.primaryColor,
          ),
          obscureText: false,
          keyboardType: TextInputType.number,
          onChanged: (String value) {},
        ),
    );
  }
}


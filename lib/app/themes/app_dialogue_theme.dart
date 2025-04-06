import 'package:flutter/material.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_sizes.dart';

class AppDialogueTheme{
  AppDialogueTheme._();
  static const DialogTheme dialogueThemeLight = DialogTheme(
    backgroundColor: AppLightColors.textWhiteColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(AppSizes.borderRadiusMd))),
  );

  static const DialogTheme dialogueThemeDark = DialogTheme(
    backgroundColor: AppDarkColors.textWhiteColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(AppSizes.borderRadiusMd))),
  );
}
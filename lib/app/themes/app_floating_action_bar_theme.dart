import 'package:flutter/material.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_sizes.dart';

class AppFloatingActionBarTheme{
  AppFloatingActionBarTheme._();
  static const FloatingActionButtonThemeData fabThemeLight = FloatingActionButtonThemeData(
    backgroundColor: AppLightColors.primaryColor,
    foregroundColor: AppLightColors.textWhiteColor,
    elevation: AppSizes.buttonElevationXl,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(AppSizes.borderRadiusLg))),
  );

  static const FloatingActionButtonThemeData fabThemeDark = FloatingActionButtonThemeData(
    backgroundColor: AppDarkColors.primaryColor,
    foregroundColor: AppDarkColors.textWhiteColor,
    elevation: AppSizes.buttonElevationXl,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(AppSizes.borderRadiusLg))),
  );

}
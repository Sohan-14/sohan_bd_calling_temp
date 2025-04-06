import 'package:flutter/material.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';

class AppNavDrawerTheme{
  AppNavDrawerTheme._();
  static const NavigationDrawerThemeData navigationDrawerThemeLight = NavigationDrawerThemeData(
    backgroundColor: AppLightColors.whiteColor,
    indicatorColor: AppLightColors.primaryColor,
  );

  static const NavigationDrawerThemeData navigationDrawerThemeDark = NavigationDrawerThemeData(
    backgroundColor: AppDarkColors.whiteColor,
    indicatorColor: AppDarkColors.primaryColor,
  );

}
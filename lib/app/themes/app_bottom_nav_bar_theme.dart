import 'package:flutter/material.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_sizes.dart';

class AppBottomNavBarTheme{
  AppBottomNavBarTheme._();
  static const BottomNavigationBarThemeData bottomNavBarThemeLight = BottomNavigationBarThemeData(
    backgroundColor: AppLightColors.whiteColor,
    selectedItemColor: AppLightColors.primaryColor,
    unselectedItemColor: AppLightColors.textSecondaryColor,
    elevation: AppSizes.cardElevationMd,
  );

  static const BottomNavigationBarThemeData bottomNavBarThemeDark = BottomNavigationBarThemeData(
    backgroundColor: AppDarkColors.whiteColor,
    selectedItemColor: AppDarkColors.primaryColor,
    unselectedItemColor: AppDarkColors.textSecondaryColor,
    elevation: AppSizes.cardElevationMd,
  );

}
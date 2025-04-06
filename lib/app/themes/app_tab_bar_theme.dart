import 'package:flutter/material.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_sizes.dart';

class AppTabBarTheme{
  AppTabBarTheme._();
  static const TabBarTheme tabBarThemeLight = TabBarTheme(
    labelColor: AppLightColors.primaryColor,
    unselectedLabelColor: AppLightColors.textSecondaryColor,
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(color: AppLightColors.primaryColor, width: AppSizes.dividerLg),
    ),
  );

  static const TabBarTheme tabBarThemeDark = TabBarTheme(
    labelColor: AppDarkColors.primaryColor,
    unselectedLabelColor: AppDarkColors.textSecondaryColor,
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(color: AppDarkColors.primaryColor, width: AppSizes.dividerLg),
    ),
  );

}
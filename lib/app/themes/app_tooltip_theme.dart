import 'package:flutter/material.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_sizes.dart';

class AppTooltipTheme{
  AppTooltipTheme._();
  static const TooltipThemeData tooltipThemeLight = TooltipThemeData(
    decoration: BoxDecoration(
      color: AppLightColors.primaryColor,
      borderRadius: BorderRadius.all(Radius.circular(AppSizes.borderRadiusMd)),
    ),
    textStyle: TextStyle(color: AppLightColors.whiteColor),
  );

  static const TooltipThemeData tooltipThemeDark = TooltipThemeData(
    decoration: BoxDecoration(
      color: AppDarkColors.primaryColor,
      borderRadius: BorderRadius.all(Radius.circular(AppSizes.borderRadiusMd)),
    ),
    textStyle: TextStyle(color: AppDarkColors.whiteColor),
  );

}
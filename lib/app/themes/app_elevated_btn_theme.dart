import 'package:flutter/material.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_sizes.dart';

class AppElevatedBtnTheme{
  AppElevatedBtnTheme._();
  static final ElevatedButtonThemeData elevatedButtonThemeLight = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: AppLightColors.whiteColor,
          backgroundColor: AppLightColors.primaryColor,
          disabledBackgroundColor:AppLightColors.greyColor,
          disabledForegroundColor: AppLightColors.greyColor,
          side: const BorderSide(color: AppLightColors.primaryColor, width: AppSizes.dividerLg),
          padding: const EdgeInsets.symmetric(vertical: AppSizes.lg, horizontal: AppSizes.xs),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd)
          )
      )
  );

  static final ElevatedButtonThemeData elevatedButtonThemeDark = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: AppDarkColors.whiteColor,
          backgroundColor: AppDarkColors.primaryColor,
          disabledBackgroundColor: AppDarkColors.greyColor,
          disabledForegroundColor: AppDarkColors.greyColor,
          side: const BorderSide(color: AppLightColors.primaryColor, width: AppSizes.dividerLg),
          padding: const EdgeInsets.symmetric(vertical: AppSizes.lg, horizontal: AppSizes.xs),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd)
          )
      )
  );
}
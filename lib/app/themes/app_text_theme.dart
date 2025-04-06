import 'package:flutter/material.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_sizes.dart';

class AppTextTheme{
  AppTextTheme._();
  static const TextTheme lightTextTheme = TextTheme(

    // display text theme
    displayLarge: TextStyle(fontSize: AppSizes.fontSizeL, fontWeight: FontWeight.bold, color: AppLightColors.textPrimaryColor),
    displayMedium: TextStyle(fontSize: AppSizes.fontSizeXxxL, fontWeight: FontWeight.w600, color: AppLightColors.textBlackColor),
    displaySmall:  TextStyle(fontSize: AppSizes.fontSizeXxl, fontWeight: FontWeight.w600, color: AppLightColors.textBlackColor),

    // headline text theme
    headlineLarge: TextStyle(fontSize: AppSizes.fontSizeL, fontWeight: FontWeight.w500, color: AppLightColors.textBlackColor),
    headlineMedium: TextStyle(fontSize: AppSizes.fontSizeXxl, fontWeight: FontWeight.w700, color: AppLightColors.textBlackColor),
    headlineSmall: TextStyle(fontSize: AppSizes.fontSizeXl, fontWeight: FontWeight.w600, color: AppLightColors.textBlackColor),

    // title text theme
    titleLarge: TextStyle(fontSize: AppSizes.fontSizeLg, fontWeight: FontWeight.w600, color: AppLightColors.textBlackColor),
    titleMedium: TextStyle(fontSize: AppSizes.fontSizeMd, fontWeight: FontWeight.w500, color: AppLightColors.textBlackColor),
    titleSmall: TextStyle(fontSize: AppSizes.fontSizeSm, fontWeight: FontWeight.w400, color: AppLightColors.textBlackColor),

    // body text theme
    bodyLarge: TextStyle(fontSize: AppSizes.fontSizeLg, fontWeight: FontWeight.w600, color: AppLightColors.textBlackColor),
    bodyMedium: TextStyle(fontSize: AppSizes.fontSizeMd, fontWeight: FontWeight.w400, color: AppLightColors.textBlackColor),
    bodySmall: TextStyle(fontSize: AppSizes.fontSizeSm, fontWeight: FontWeight.w400, color: AppLightColors.greyColor),

    // label text theme
    labelLarge: TextStyle(fontSize: AppSizes.fontSizeSm, fontWeight: FontWeight.w500, color: AppLightColors.textBlackColor),
    labelMedium: TextStyle(fontSize: AppSizes.fontSizeXs, fontWeight: FontWeight.w400, color: AppLightColors.textBlackColor),
    labelSmall: TextStyle(fontSize: AppSizes.fontSizeXxs, fontWeight: FontWeight.w400, color: AppLightColors.textBlackColor),

  );

  static const TextTheme darkTextTheme = TextTheme(

    // display text theme
    displayLarge: TextStyle(fontSize: AppSizes.fontSizeL, fontWeight: FontWeight.bold, color: AppDarkColors.textPrimaryColor),
    displayMedium: TextStyle(fontSize: AppSizes.fontSizeXxxL, fontWeight: FontWeight.w600, color: AppDarkColors.textBlackColor),
    displaySmall:  TextStyle(fontSize: AppSizes.fontSizeXxl, fontWeight: FontWeight.w600, color: AppDarkColors.textBlackColor),

    // headline text theme
    headlineLarge: TextStyle(fontSize: AppSizes.fontSizeL, fontWeight: FontWeight.w500, color: AppDarkColors.textBlackColor),
    headlineMedium: TextStyle(fontSize: AppSizes.fontSizeXxl, fontWeight: FontWeight.w700, color: AppDarkColors.textBlackColor),
    headlineSmall: TextStyle(fontSize: AppSizes.fontSizeXl, fontWeight: FontWeight.w600, color: AppDarkColors.textBlackColor),

    // title text theme
    titleLarge: TextStyle(fontSize: AppSizes.fontSizeLg, fontWeight: FontWeight.w600, color: AppDarkColors.textBlackColor),
    titleMedium: TextStyle(fontSize: AppSizes.fontSizeMd, fontWeight: FontWeight.w500, color: AppDarkColors.textBlackColor),
    titleSmall: TextStyle(fontSize: AppSizes.fontSizeSm, fontWeight: FontWeight.w400, color: AppDarkColors.textBlackColor),

    // body text theme
    bodyLarge: TextStyle(fontSize: AppSizes.fontSizeLg, fontWeight: FontWeight.w600, color: AppDarkColors.textBlackColor),
    bodyMedium: TextStyle(fontSize: AppSizes.fontSizeMd, fontWeight: FontWeight.w400, color: AppDarkColors.textBlackColor),
    bodySmall: TextStyle(fontSize: AppSizes.fontSizeSm, fontWeight: FontWeight.w400, color: AppDarkColors.greyColor),

    // label text theme
    labelLarge: TextStyle(fontSize: AppSizes.fontSizeSm, fontWeight: FontWeight.w500, color: AppDarkColors.textBlackColor),
    labelMedium: TextStyle(fontSize: AppSizes.fontSizeXs, fontWeight: FontWeight.w400, color: AppDarkColors.textBlackColor),
    labelSmall: TextStyle(fontSize: AppSizes.fontSizeXxs, fontWeight: FontWeight.w400, color: AppDarkColors.textBlackColor),
  );
}


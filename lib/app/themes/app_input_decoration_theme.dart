import 'package:flutter/material.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_sizes.dart';
import 'package:sohan_bd_calling_temp/app/themes/app_text_theme.dart';

class AppInputDecorationTheme{
  AppInputDecorationTheme._();
  static InputDecorationTheme inputDecorationThemeLight = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: AppLightColors.greyColor,
    suffixIconColor: AppLightColors.greyColor,
    labelStyle: AppTextTheme.lightTextTheme.bodySmall,
    hintStyle:  AppTextTheme.lightTextTheme.bodySmall,
    errorStyle: AppTextTheme.lightTextTheme.bodySmall?.copyWith(color: AppLightColors.errorColor),
    floatingLabelStyle: const TextStyle().copyWith(color: AppLightColors.blackColor.withValues(alpha: 0.8)),
    border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        borderSide: const BorderSide(width: AppSizes.dividerHeight, color: AppLightColors.greyColor)
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        borderSide: const BorderSide(width: AppSizes.dividerHeight, color: AppLightColors.greyColor)
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        borderSide: const BorderSide(width: AppSizes.dividerHeight, color: AppLightColors.greyColor)
    ),
    errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        borderSide: const BorderSide(width: AppSizes.dividerHeight, color: AppLightColors.greyColor)
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        borderSide: const BorderSide(width: AppSizes.dividerHeight, color: AppLightColors.greyColor)
    ),
  );

  static InputDecorationTheme inputDecorationThemeDark = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: AppDarkColors.greyColor,
    suffixIconColor: AppDarkColors.greyColor,
    labelStyle: AppTextTheme.darkTextTheme.bodySmall,
    hintStyle:  AppTextTheme.darkTextTheme.bodySmall,
    errorStyle: AppTextTheme.darkTextTheme.bodySmall?.copyWith(color: AppDarkColors.errorColor),
    floatingLabelStyle: const TextStyle().copyWith(color: AppDarkColors.blackColor.withValues(alpha: 0.8)),
    border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        borderSide: const BorderSide(width: AppSizes.dividerHeight, color: AppDarkColors.greyColor)
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        borderSide: const BorderSide(width: AppSizes.dividerHeight, color: AppDarkColors.greyColor)
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        borderSide: const BorderSide(width: AppSizes.dividerHeight, color: AppDarkColors.greyColor)
    ),
    errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        borderSide: const BorderSide(width: AppSizes.dividerHeight, color: AppDarkColors.greyColor)
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        borderSide: const BorderSide(width: AppSizes.dividerHeight, color: AppDarkColors.greyColor)
    ),
  );
}
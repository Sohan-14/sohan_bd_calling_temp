import 'package:flutter/material.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_sizes.dart';

class AppCheckBoxTheme{
  AppCheckBoxTheme._();

  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
        side: const BorderSide(
           color: AppLightColors.primaryColor,
        ),
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm)
    ),
    checkColor: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
      if(states.contains(WidgetState.selected)) {
        return AppLightColors.whiteColor;
      } else {
        return AppLightColors.primaryColor;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
      if(states.contains(WidgetState.selected)) {
        return AppLightColors.primaryColor;
      } else {
        return Colors.transparent;
      }
    }),
  );

  static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: AppLightColors.primaryColor,
        ),
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm)
    ),
    checkColor: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
      if(states.contains(WidgetState.selected)) {
        return AppDarkColors.whiteColor;
      } else {
        return AppDarkColors.primaryColor;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
      if(states.contains(WidgetState.selected)) {
        return AppDarkColors.primaryColor;
      } else {
        return Colors.transparent;
      }
    }),
  );
}
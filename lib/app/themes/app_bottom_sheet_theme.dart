import 'package:flutter/material.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_sizes.dart';

class AppBottomSheetTheme{
  AppBottomSheetTheme._();
  static const BottomSheetThemeData bottomSheetThemeLight = BottomSheetThemeData(
    backgroundColor: AppLightColors.whiteColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
    elevation: AppSizes.buttonElevationXxl,
  );

  static const BottomSheetThemeData bottomSheetThemeDark = BottomSheetThemeData(
    backgroundColor: AppDarkColors.whiteColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
    elevation: AppSizes.buttonElevationXxl,
  );

}
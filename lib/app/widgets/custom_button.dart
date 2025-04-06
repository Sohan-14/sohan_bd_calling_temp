import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/extensions/context_extensions.dart';
import 'package:sohan_bd_calling_temp/app/themes/theme_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
        this.color,
        this.textColor,
        this.textStyle,
        this.padding = EdgeInsets.zero,
        required this.onTap,
        required this.text,
        this.loading = false,
        this.width,
        this.height,
        this.isOutline = false,
        this.borderColor,
        this.borderRadius,
      });

  final Function() onTap;
  final String text;
  final bool loading;
  final double? height;
  final double? width;
  final double? borderRadius;
  final Color? color;
  final Color? textColor;
  final EdgeInsetsGeometry padding;
  final TextStyle? textStyle;
  final bool isOutline;
  final Color? borderColor;


  @override
  Widget build(BuildContext context) {
    final ThemeManager themeManager = Get.find<ThemeManager>();

    return Padding(
        padding: padding,
        child: ElevatedButton(
          onPressed: loading ? () {} : onTap,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              side: isOutline
                  ? BorderSide(
                    color: borderColor ?? (!themeManager.isDarkMode(context) ? AppLightColors.blackColor : AppDarkColors.blackColor),
                    width: 1,
                    style: BorderStyle.solid,  strokeAlign: BorderSide.strokeAlignCenter
                  )
                  : BorderSide.none,
              borderRadius: BorderRadius.circular(borderRadius ?? 12),
            ),
            backgroundColor: isOutline ? Colors.transparent : (color ?? (!themeManager.isDarkMode(context) ? AppLightColors.primaryColor : AppDarkColors.primaryColor)),
            foregroundColor: isOutline ? (borderColor ?? Colors.transparent) : Colors.white,
            surfaceTintColor: Colors.transparent,
            shadowColor: Colors.transparent,
            minimumSize: Size(width ?? Get.width, height ?? 48),
          ),
          child: loading ? SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(color: color ?? (!themeManager.isDarkMode(context) ? AppLightColors.whiteColor : AppDarkColors.whiteColor),),
          ) : Text(
              text,
              style: context.txtTheme.bodyMedium?.copyWith(
                  color: isOutline ? (textColor ?? (!themeManager.isDarkMode(context) ? AppLightColors.primaryColor : AppDarkColors.primaryColor)) : (textColor ?? (!themeManager.isDarkMode(context) ? AppLightColors.whiteColor : AppDarkColors.whiteColor))),
          ),
        ));
  }
}


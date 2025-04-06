import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_sizes.dart';
import 'package:sohan_bd_calling_temp/app/extensions/context_extensions.dart';
class CustomBottomSheet{
  CustomBottomSheet._();

  static void showCustomBottomSheet({required BuildContext context, required Widget child, required bool isLightMode}) {
    Get.bottomSheet<Widget>(
      BackdropFilter(
        filter: ImageFilter.blur(sigmaX: AppSizes.sm, sigmaY: AppSizes.sm),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.lg, vertical: AppSizes.md),
          constraints: BoxConstraints(
            minWidth: context.screenWidth,
            minHeight: context.screenHeight * 0.25,
          ),
          decoration: BoxDecoration(
            color: isLightMode ? AppLightColors.whiteColor : AppDarkColors.whiteColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(AppSizes.borderRadiusXxl),
              topRight: Radius.circular(AppSizes.borderRadiusXxl),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 50.0,
                height: 6.0,
                decoration: BoxDecoration(
                  color: AppLightColors.greyColor,
                  borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
                ),
              ),
              const SizedBox(height: AppSizes.spaceBetweenSections,),
              child,
              const SizedBox(height: AppSizes.spaceBetweenSections,),
            ],
          ),
        ),
      ),
      isScrollControlled: true,
    );
  }



  static void showCustomFullBottomSheet({required BuildContext context, required Widget child, required bool isLightMode}) {
    Get.bottomSheet<Widget>(
      BackdropFilter(
        filter: ImageFilter.blur(sigmaX: AppSizes.sm, sigmaY: AppSizes.sm),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.lg, vertical: AppSizes.md),
          constraints: BoxConstraints(
            minWidth: context.screenWidth,
            minHeight: context.screenHeight * 0.90,
            maxHeight: context.screenHeight * 0.90,
          ),
          decoration: BoxDecoration(
            color: isLightMode ? AppLightColors.whiteColor : AppDarkColors.whiteColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(AppSizes.borderRadiusXxl),
              topRight: Radius.circular(AppSizes.borderRadiusXxl),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: 80.0,
                  height: 6.0,
                  decoration: BoxDecoration(
                    color: AppLightColors.greyColor,
                    borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBetweenSections,),
                child,
                const SizedBox(height: AppSizes.spaceBetweenSections,),
              ],
            ),
          ),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
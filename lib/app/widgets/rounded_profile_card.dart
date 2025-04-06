import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_icons.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_sizes.dart';
import 'package:sohan_bd_calling_temp/app/themes/theme_manager.dart';
import 'package:sohan_bd_calling_temp/app/utils/helper_method.dart';
import 'package:sohan_bd_calling_temp/app/widgets/custom_network_image.dart';
import 'package:sohan_bd_calling_temp/app/widgets/custom_rounded_inner_icon.dart';

class RoundedProfileImage extends StatelessWidget {
  const RoundedProfileImage({
    super.key,
    this.isEdit = false,
    this.imageUrl,
    this.imageFile,
    this.width = 148.0,
    this.height = 148.0,
    this.borderWidth = AppSizes.dividerXl,
    this.editProfile = HelperMethod.emptyCallback,
  });

  final bool isEdit;
  final String? imageUrl;
  final File? imageFile;
  final double width;
  final double height;
  final double borderWidth;
  final VoidCallback editProfile;

  @override
  Widget build(BuildContext context) {
    final ThemeManager themeManager = Get.find<ThemeManager>();
    return Column(
      children: <Widget>[
        Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                  border: Border.all(width: borderWidth,
                      color: !themeManager.isDarkMode(context) ? AppLightColors.greyColor: AppDarkColors.greyColor,
                  ),
                  shape: BoxShape.circle
              ),
              child: ClipOval(
                child: imageFile != null ?
                Image.file(
                  imageFile!,
                  fit: BoxFit.cover,
                ) : CustomNetworkImage(
                    width: width,
                    height: height,
                    imageUrl:  imageUrl != null ? imageUrl! : ""
                ),
              ),
            ),
            if (isEdit) Positioned(
                bottom: 5,
                right: 8,
                child: CustomRoundedInnerIcon(
                  icon: AppIcons.editIcon,
                  borderColor: !themeManager.isDarkMode(context) ? AppLightColors.blackColor: AppDarkColors.blackColor,
                  bgColor: !themeManager.isDarkMode(context) ? AppLightColors.whiteColor: AppDarkColors.whiteColor,
                  isBorder: true,
                  iconColor: !themeManager.isDarkMode(context) ? AppLightColors.blackColor: AppDarkColors.blackColor,
                  iconSize: AppSizes.iconMd,
                  containerSize: 32,
                  onTap: editProfile,
                )
            ) else const SizedBox(),
          ],
        ),
      ],
    );
  }
}
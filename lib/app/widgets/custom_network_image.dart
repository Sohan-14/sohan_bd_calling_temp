import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/themes/theme_manager.dart';

class CustomNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  final BoxShape boxShape;

  const CustomNetworkImage({
    super.key,
    required this.imageUrl,
    required this.height,
    required this.width,
    this.boxShape = BoxShape.circle,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeManager themeManager = Get.find<ThemeManager>();
    return CachedNetworkImage(
        imageUrl: imageUrl,
        imageBuilder: (BuildContext context, ImageProvider<Object> imageProvider) => Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            shape: boxShape,
            image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
            ),
          ),
        ),
        placeholder: (BuildContext context, String url) => Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: !themeManager.isDarkMode(context) ? AppLightColors.greyColor.withValues(alpha: 0.6) : AppDarkColors.greyColor.withValues(alpha: 0.6),
              shape: boxShape,
            ),
        ),
        errorWidget: (BuildContext context, String url, Object error) =>  Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
            color: !themeManager.isDarkMode(context) ? AppLightColors.greyColor.withValues(alpha: 0.6) : AppDarkColors.greyColor.withValues(alpha: 0.6),
            shape: boxShape,
            ),
        ),
    );
  }
}

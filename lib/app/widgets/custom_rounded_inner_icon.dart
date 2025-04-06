import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_sizes.dart';
import 'package:sohan_bd_calling_temp/app/utils/helper_method.dart';

class CustomRoundedInnerIcon extends StatelessWidget {
  const CustomRoundedInnerIcon({
    super.key,
    required this.icon,
    this.bgColor = Colors.transparent,
    this.borderColor = AppLightColors.primaryColor,
    this.iconColor = AppLightColors.primaryColor,
    this.isBorder = true,
    this.isBlur = false,
    this.iconSize = AppSizes.iconSm,
    this.containerSize = AppSizes.xl,
    this.onTap = HelperMethod.emptyCallback,
  });
  final Color bgColor;
  final Color iconColor;
  final double iconSize;
  final double containerSize;
  final Color borderColor;
  final bool isBorder;
  final bool isBlur;
  final String icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return !isBlur ? GestureDetector(
      onTap: onTap,
      child: Container(
          width: containerSize,
          height: containerSize,
          padding: const EdgeInsets.all(AppSizes.xs),
          decoration: BoxDecoration(
            color: bgColor,
            shape: BoxShape.circle,
            border: isBorder ? Border.all(
              width: AppSizes.dividerHeight,
              color: borderColor,
            ) : null,
          ),
          child: SvgPicture.asset(
              icon,
              width: iconSize,
              height: iconSize,
              colorFilter: ColorFilter.mode(iconColor, BlendMode.srcATop,)
          )
      ),
    ) : GestureDetector(
      onTap: onTap,
      child: ClipOval(
        child: Container(
          width: containerSize,
          height: containerSize,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: isBorder
                ? Border.all(width: AppSizes.dividerHeight, color: borderColor)
                : null,
          ),
          child: Stack(
            children: <Widget>[
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: AppSizes.sm, sigmaY: AppSizes.sm),
                child: Container(
                  decoration: BoxDecoration(
                    color: bgColor.withValues(alpha: 0.2),
                    shape: BoxShape.circle,
                    border: isBorder
                        ? Border.all(width: AppSizes.dividerHeight, color: borderColor)
                        : null,
                  ),
                ),
              ),

              Center(
                child: SvgPicture.asset(
                  icon,
                  width: iconSize,
                  height: iconSize,
                  colorFilter: ColorFilter.mode(iconColor, BlendMode.srcATop),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
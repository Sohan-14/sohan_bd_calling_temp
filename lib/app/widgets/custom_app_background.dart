import 'package:flutter/material.dart';
import 'package:sohan_bd_calling_temp/app/config/app_sizes.dart';

class CustomAppBackground extends StatelessWidget {
  final Widget child;
  final bool isBorderRadius;

  const CustomAppBackground({
    super.key,
    required this.child,
    this.isBorderRadius = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: isBorderRadius ? const BorderRadius.only(
          topLeft: Radius.circular(AppSizes.borderRadiusXxl),
          topRight: Radius.circular(AppSizes.borderRadiusXxl),
        ) : null,
      ),
      child: child,
    );
  }
}

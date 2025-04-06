import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_icons.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/extensions/context_extensions.dart';
import 'package:sohan_bd_calling_temp/app/themes/theme_manager.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBackPressed;
  final bool isBackAvail;
  const CustomAppBar({
    super.key,
    required this.title,
    this.onBackPressed,
    this.isBackAvail = true,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeManager themeManager = Get.find<ThemeManager>();

    return AppBar(
      leading: isBackAvail ? IconButton(
        icon: SvgPicture.asset(
          AppIcons.backIcon,
          colorFilter: ColorFilter.mode(!themeManager.isDarkMode(context)
              ? AppLightColors.blackColor
              : AppDarkColors.blackColor,
              BlendMode.srcATop),
          width: 24, height: 24,),
        onPressed: onBackPressed ?? () => Get.back<void>(),
      ) : null,
      title: Align(
        alignment: Alignment.centerRight,
        child: Text(title, style: context.txtTheme.bodyLarge,),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

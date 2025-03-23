import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/core/config/app_icons.dart';
import 'package:sohan_bd_calling_temp/core/extensions/context_extensions.dart';

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
    return AppBar(
      leading: isBackAvail ? IconButton(
        icon: SvgPicture.asset(AppIcons.backIcon, width: 24, height: 24,),
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

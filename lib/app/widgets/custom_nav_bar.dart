import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_sizes.dart';
import 'package:sohan_bd_calling_temp/app/extensions/context_extensions.dart';
import 'package:sohan_bd_calling_temp/app/themes/theme_manager.dart';
import 'package:sohan_bd_calling_temp/features/home/controllers/navigation_controller.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
    required this.items
  });

  final List<NavItem> items;

  @override
  Widget build(BuildContext context) {
    final NavigationController navigationController = Get.find<NavigationController>();
    final ThemeManager themeManager = Get.find<ThemeManager>();

    return Container(
      height: 110.0,
      padding: const EdgeInsets.symmetric(vertical: AppSizes.md, horizontal: AppSizes.xl),
      decoration: BoxDecoration(
        color: !themeManager.isDarkMode(context) ?
          AppLightColors.blackColor : AppDarkColors.blackColor,
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(AppSizes.borderRadiusXxxL),
            topLeft: Radius.circular(AppSizes.borderRadiusXxxL)
        ),
      ),
      child: Obx(() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List<Widget>.generate(items.length, (int index) {
          final bool isSelected = navigationController.currentIndex.value == index;
          return GestureDetector(
            onTap: () => navigationController.changeNavItem = index,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              child: Column(
                children: <Widget>[
                  SvgPicture.asset(
                    items[index].iconPath,
                    height: AppSizes.iconMd,
                    width: AppSizes.iconMd,
                    colorFilter: ColorFilter.mode(
                      isSelected
                          ?
                            !themeManager.isDarkMode(context) ?
                              AppLightColors.whiteColor : AppDarkColors.whiteColor
                          :
                            !themeManager.isDarkMode(context) ?
                              AppLightColors.greyColor : AppDarkColors.greyColor,
                      BlendMode.srcATop,
                    ),
                  ),
                  const SizedBox(height: AppSizes.xs,),

                  Text(
                    items[index].label,
                    style: context.txtTheme.labelMedium?.copyWith(
                        color:  isSelected
                            ?
                              !themeManager.isDarkMode(context) ?
                                AppLightColors.whiteColor : AppDarkColors.whiteColor
                            :
                              !themeManager.isDarkMode(context) ?
                                AppLightColors.greyColor : AppDarkColors.greyColor,
                    ),
                  ),
                ],
              )
            ),
          );
        }),
      )),
    );
  }
}

class NavItem {

  NavItem({
    required this.iconPath,
    required this.label
  });

  final String iconPath;
  final String label;
}

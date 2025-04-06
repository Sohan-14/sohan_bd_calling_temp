import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_icons.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/themes/theme_manager.dart';
import 'package:sohan_bd_calling_temp/app/widgets/custom_nav_bar.dart';
import 'package:sohan_bd_calling_temp/features/home/controllers/navigation_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeManager themeManager = Get.find<ThemeManager>();
    final NavigationController navigationController = Get.find<NavigationController>();
    final List<Widget> pages = <Widget>[
      const Center(child: Text('1'),),
      const Center(child: Text('2'),),
      const Center(child: Text('3'),),
      const Center(child: Text('4'),),
    ];
    return Scaffold(
      backgroundColor: !themeManager.isDarkMode(context) ? AppLightColors.whiteColor : AppDarkColors.whiteColor,
      body: Obx(() => pages[navigationController.currentIndex.value]),
      bottomNavigationBar: CustomNavBar(
        items: <NavItem>[
          NavItem(iconPath: AppIcons.cloudIcon, label: '1'),
          NavItem(iconPath: AppIcons.cloudIcon, label: '2'),
          NavItem(iconPath: AppIcons.cloudIcon, label: '2'),
          NavItem(iconPath: AppIcons.cloudIcon, label: '2'),
        ],
      ),
    );
  }
}

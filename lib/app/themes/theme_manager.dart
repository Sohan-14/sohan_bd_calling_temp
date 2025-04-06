import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/app/config/app_constants.dart';
import 'package:sohan_bd_calling_temp/app/storage/storage_service.dart';
import 'package:sohan_bd_calling_temp/app/utils/logger_utils.dart';

class ThemeManager extends GetxController {
  final StorageService _storage = StorageService();
  final Rx<ThemeMode> _themeMode = ThemeMode.system.obs;

  Brightness getBrightness(BuildContext context) {
    if (_themeMode.value == ThemeMode.system) {
      return MediaQuery.of(context).platformBrightness;
    }
    return _themeMode.value == ThemeMode.dark ? Brightness.dark : Brightness.light;
  }

  bool isDarkMode(BuildContext context) {
    return getBrightness(context) == Brightness.dark;
  }

  ThemeMode get currentThemeMode => _themeMode.value;

  @override
  void onInit() {
    super.onInit();
    _loadTheme();
  }

  void toggleTheme(ThemeMode mode) {
    _themeMode.value = mode;
    _saveTheme(mode);
    Get.changeThemeMode(mode);
  }

  void _loadTheme() {
    debugPrint("Checking Storage...");
    final savedTheme = _storage.getData(AppConstants.themeMode);
    debugPrint("Loaded Theme from Storage: $savedTheme");
    if (savedTheme != null) {
      switch (savedTheme) {
        case AppConstants.lightMode:
          _themeMode.value = ThemeMode.light;
          break;
        case AppConstants.darkMode:
          _themeMode.value = ThemeMode.dark;
          break;
        default:
          _themeMode.value = ThemeMode.system;
      }
    } else {
      debugPrint("Theme is NULL. Defaulting to system.");
      _themeMode.value = ThemeMode.system;
    }
  }

  void _saveTheme(ThemeMode mode) {
    String themeString =  AppConstants.systemMode;
    if (mode == ThemeMode.light) {
      themeString = AppConstants.lightMode;
    } else if (mode == ThemeMode.dark) {
      themeString = AppConstants.darkMode;
    }
    LoggerUtils.info("Stored Theme Mode: $themeString");
    _storage.saveData(AppConstants.themeMode, themeString);
    LoggerUtils.info("Stored Theme Mode after same: ${_storage.getData(AppConstants.themeMode)}");
  }
}

import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:sohan_bd_calling_temp/app/utils/logger_utils.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DeviceUtility {
  DeviceUtility._();

  // Set Status Bar Color
  static void setStatusBarColor(Color color) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: color));
  }

  // Enable/Disable Full-Screen Mode
  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
      enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge,
    );
  }

  // Check if Running on Physical Device
  static bool isPhysicalDevice() {
    return Platform.isAndroid || Platform.isIOS;
  }

  // Device Type Checks
  static bool isIOS() {
    return Platform.isIOS;
  }

  static bool isAndroid() {
    return Platform.isAndroid;
  }

  // Vibrate Device
  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future<void>.delayed(duration, HapticFeedback.vibrate);
  }

  // Set Preferred Orientations
  static Future<void> setPreferredOrientations(List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  // Hide Status Bar
  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: <SystemUiOverlay>[]);
  }

  // Show Status Bar
  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  }

  // Launch URL Safely
  // use url_launcher packages
  static Future<void> launchUrl(String url) async {
    try {
      if (await canLaunchUrlString(url)) {
        await launchUrlString(url);
      } else {
        LoggerUtils.info("Could not launch $url");
      }

      LoggerUtils.info("add packages");
    } catch (exception) {
      LoggerUtils.error("Error launching URL: $exception");
    }
  }
}

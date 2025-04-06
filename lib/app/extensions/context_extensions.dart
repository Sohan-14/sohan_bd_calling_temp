import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  // theme
  ThemeData get theme => Theme.of(this);
  TextTheme get txtTheme => theme.textTheme;
  AppBarTheme get appBarTheme => theme.appBarTheme;
  BottomNavigationBarThemeData get bottomNavBarTheme => theme.bottomNavigationBarTheme;
  BottomSheetThemeData get bottomSheetTheme => theme.bottomSheetTheme;
  CardThemeData get cardTheme => theme.cardTheme;
  CheckboxThemeData get checkTheme => theme.checkboxTheme;
  ChipThemeData get chipTheme => theme.chipTheme;
  DialogThemeData get dialogTheme => theme.dialogTheme;
  ElevatedButtonThemeData get elevatedButtonTheme => theme.elevatedButtonTheme;
  ExpansionTileThemeData get expansionTileTheme => theme.expansionTileTheme;
  FloatingActionButtonThemeData get fabTheme => theme.floatingActionButtonTheme;
  InputDecorationTheme get inputDecoration => theme.inputDecorationTheme;
  NavigationDrawerThemeData get navigationDrawerTheme => theme.navigationDrawerTheme;
  OutlinedButtonThemeData get outlinedButtonTheme => theme.outlinedButtonTheme;
  PageTransitionsTheme get pageTransitionsTheme => theme.pageTransitionsTheme;
  ProgressIndicatorThemeData get progressIndicatorTheme => theme.progressIndicatorTheme;
  RadioThemeData get radioTheme => theme.radioTheme;
  ScrollbarThemeData get scrollbarTheme => theme.scrollbarTheme;
  SnackBarThemeData get snackBarTheme => theme.snackBarTheme;
  SwitchThemeData get switchTheme => theme.switchTheme;
  TabBarThemeData get tabBarTheme => theme.tabBarTheme;
  TextButtonThemeData get textButtonTheme => theme.textButtonTheme;
  TooltipThemeData get tooltipTheme => theme.tooltipTheme;

  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(content: Text(message)));
  }
  // Hide Keyboard
  void get hideKeyboard => FocusScope.of(this).unfocus();
  // Check Device Orientation
  bool get isLandscapeOrientation => MediaQuery.of(this).orientation == Orientation.landscape;
  bool get isPortraitOrientation => MediaQuery.of(this).orientation == Orientation.portrait;
  // Get Pixel Ratio
  double get getPixelRatio => MediaQuery.of(this).devicePixelRatio;
  // Get Status Bar Height
  double get getStatusBarHeight =>  MediaQuery.of(this).padding.top;
  // Get Bottom Navigation Bar Height
  double get getBottomNavigationBarHeight =>  MediaQuery.of(this).padding.bottom;
  // Get AppBar Height
  double get getAppBarHeight => kToolbarHeight;
  // Get Keyboard Height
  double get getKeyboardHeight =>  MediaQuery.of(this).viewInsets.bottom;
  // Check if Keyboard is Visible
  bool get isKeyboardVisible => MediaQuery.of(this).viewInsets.bottom > 0;
}

import 'package:flutter/material.dart';

class AppPageTransitionTheme{
  AppPageTransitionTheme._();
  static const PageTransitionsTheme pageTransitionsTheme = PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  );

}
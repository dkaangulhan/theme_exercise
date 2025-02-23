// No need for an explanation here.
// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:theme_exercise/ui/core/themes/theme/dark/dark_theme.dart';
import 'package:theme_exercise/ui/core/themes/theme/light/light_theme.dart';

/// AppTheme is an abstract class that will be
/// used to define the theme of the app.
abstract class AppTheme {
  const AppTheme._();

  /// The light theme of the app.
  static ThemeData get lightTheme => LightTheme.theme;

  /// The dark theme of the app.
  static ThemeData get darkTheme => DarkTheme.theme;
}

/// Implement this class to define
/// the shadows of the app.
abstract class AppShadowTheme extends ThemeExtension<AppShadowTheme> {
  /// Implement this class to define
  /// the shadows of the app.
  const AppShadowTheme();
  List<BoxShadow> get button2dp;
  List<BoxShadow> get button4dp;
  List<BoxShadow> get button8dp;
  List<BoxShadow> get button12dp;
  List<BoxShadow> get card16dp;
  List<BoxShadow> get card20dp;
  List<BoxShadow> get card24dp;
  List<BoxShadow> get card28dp;
  List<BoxShadow> get focused;
  List<BoxShadow> get hover;
  List<BoxShadow> get error;
  List<BoxShadow> get success;
}

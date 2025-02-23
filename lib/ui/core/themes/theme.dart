import 'package:flutter/material.dart';
import 'package:theme_exercise/ui/core/themes/colors/app_colors.dart';

/// AppTheme is an abstract class that will be
/// used to define the theme of the app.
abstract class AppTheme {
  const AppTheme._();

  /// The light theme of the app.
  static ThemeData get lightTheme => ThemeData(
        colorScheme: AppColors.lightColorScheme,
      );

  /// The dark theme of the app.
  static ThemeData get darkTheme => ThemeData(
        colorScheme: AppColors.darkColorScheme,
      );
}

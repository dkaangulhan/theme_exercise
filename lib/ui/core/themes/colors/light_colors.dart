// No need for explanation here, just a simple class that holds
// the light colors used in the app.
// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:theme_exercise/ui/core/themes/colors/app_colors.dart';

/// This is the light colors used in the app.
abstract class LightColors {
  const LightColors._();

  static Color get primary => AppColors.primary.lila1;
  static Color get onPrimary => AppColors.neutral.white;
  static Color get secondary => AppColors.primary.sunflower1;
  static Color get onSecondary => AppColors.neutral.black;
  static Color get surface => AppColors.neutral.white;
  static Color get onSurface => AppColors.neutral.black;
  static Color get error => AppColors.primary.red1;
  static Color get onError => AppColors.neutral.white;
}

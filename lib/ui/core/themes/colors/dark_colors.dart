// No need for explanation since this is a
// simple color file
// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:theme_exercise/ui/core/themes/colors/app_colors.dart';

/// Dark Colors used in the app.
abstract class DarkColors {
  const DarkColors._();

  static Color get primary => AppColors.primary.lila1;
  static Color get onPrimary => AppColors.neutral.white;
  static Color get secondary => AppColors.primary.sunflower1;
  static Color get onSecondary => AppColors.neutral.black;
  static Color get surface => AppColors.neutral.black;
  static Color get onSurface => AppColors.neutral.white;
  static Color get error => AppColors.primary.red1;
  static Color get onError => AppColors.neutral.white;
}

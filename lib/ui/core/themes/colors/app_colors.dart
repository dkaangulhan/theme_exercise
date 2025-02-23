// The file contains only colors that's why
// no explanation is needed.
// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:theme_exercise/ui/core/themes/colors/dark_colors.dart';
import 'package:theme_exercise/ui/core/themes/colors/light_colors.dart';

/// This is the colors used in the app.
abstract class AppColors {
  const AppColors._();

  /// The neutral colors used in the app.
  static final NeutralColors neutral = NeutralColors._();

  /// The primary colors used in the app.
  static final PrimaryColors primary = PrimaryColors._();

  /// The light color scheme for the app.
  static ColorScheme get lightColorScheme => ColorScheme.light(
        primary: LightColors.primary,
        onPrimary: LightColors.onPrimary,
        secondary: LightColors.secondary,
        onSecondary: LightColors.onSecondary,
        surface: LightColors.surface,
        onSurface: LightColors.onSurface,
        error: LightColors.error,
        onError: LightColors.onError,
      );

  /// The dark color scheme for the app.
  static ColorScheme get darkColorScheme => ColorScheme.dark(
        primary: DarkColors.primary,
        onPrimary: DarkColors.onPrimary,
        secondary: DarkColors.secondary,
        onSecondary: DarkColors.onSecondary,
        surface: DarkColors.surface,
        onSurface: DarkColors.onSurface,
        error: DarkColors.error,
        onError: DarkColors.onError,
      );
}

class NeutralColors {
  NeutralColors._();
  Color get black => const Color(0xFF151522);
  Color get white => const Color(0xFFFFFFFF);
  Color get grey1 => const Color(0xFF333333);
  Color get grey2 => const Color(0xFF666666);
  Color get grey3 => const Color(0xFF999999);
  Color get grey4 => const Color(0xFFE0E0E0);
}

class PrimaryColors {
  PrimaryColors._();

  // Lila
  final Color lila1 = const Color(0xFFBE52F2);
  final Color lila2 = const Color(0xFFD48CF6);
  final Color lila3 = const Color(0xFFE9C5FB);

  // Sunflower
  final Color sunflower1 = const Color(0xFFFFCF5C);
  final Color sunflower2 = const Color(0xFFFFDF92);
  final Color sunflower3 = const Color(0xFFFFEFC9);

  // Blue
  final Color blue1 = const Color(0xFF0084F4);
  final Color blue2 = const Color(0xFF4EAEFF);
  final Color blue3 = const Color(0xFFA6D6FF);

  // Red
  final Color red1 = const Color(0xFFFF647C);
  final Color red2 = const Color(0xFFFF98A8);
  final Color red3 = const Color(0xFFFFCBD3);

  // Purple
  final Color purple1 = const Color(0xFF6979F8);
  final Color purple2 = const Color(0xFF9BA6FA);
  final Color purple3 = const Color(0xFFCDD2FD);

  // Orange
  final Color orange1 = const Color(0xFFF2994A);
  final Color orange2 = const Color(0xFFF6BB86);
  final Color orange3 = const Color(0xFFFBDDC3);

  // Green
  final Color green1 = const Color(0xFF00C48C);
  final Color green2 = const Color(0xFF2EFFC3);
  final Color green3 = const Color(0xFF96FFE1);
}

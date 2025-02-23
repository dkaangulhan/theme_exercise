// No need for explanation here.
// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:theme_exercise/ui/core/themes/colors/app_colors.dart';
import 'package:theme_exercise/ui/core/themes/theme/app_theme.dart';

/// Dark theme data of the app.
abstract class DarkTheme {
  const DarkTheme._();

  static ThemeData get theme => ThemeData(
        colorScheme: AppColors.darkColorScheme,
        extensions: [DarkThemeShadows()],
      );
}

/// Dark theme shadows of the app.
class DarkThemeShadows extends AppShadowTheme {
  DarkThemeShadows({
    List<BoxShadow>? button12dp,
    List<BoxShadow>? button2dp,
    List<BoxShadow>? button4dp,
    List<BoxShadow>? button8dp,
    List<BoxShadow>? card16dp,
    List<BoxShadow>? card20dp,
    List<BoxShadow>? card24dp,
    List<BoxShadow>? card28dp,
    List<BoxShadow>? focused,
    List<BoxShadow>? hover,
    List<BoxShadow>? error,
    List<BoxShadow>? success,
  })  : button12dp = button12dp ?? _DarkShadowStyles._button12dp,
        button2dp = button2dp ?? _DarkShadowStyles._button2dp,
        button4dp = button4dp ?? _DarkShadowStyles._button4dp,
        button8dp = button8dp ?? _DarkShadowStyles._button8dp,
        card16dp = card16dp ?? _DarkShadowStyles._card16dp,
        card20dp = card20dp ?? _DarkShadowStyles._card20dp,
        card24dp = card24dp ?? _DarkShadowStyles._card24dp,
        card28dp = card28dp ?? _DarkShadowStyles._card28dp,
        focused = focused ?? _DarkShadowStyles._focused,
        hover = hover ?? _DarkShadowStyles._hover,
        error = error ?? _DarkShadowStyles._error,
        success = success ?? _DarkShadowStyles._success;
  @override
  final List<BoxShadow> button12dp;

  @override
  final List<BoxShadow> button2dp;

  @override
  final List<BoxShadow> button4dp;

  @override
  final List<BoxShadow> button8dp;

  @override
  final List<BoxShadow> card16dp;

  @override
  final List<BoxShadow> card20dp;

  @override
  final List<BoxShadow> card24dp;

  @override
  final List<BoxShadow> card28dp;

  @override
  final List<BoxShadow> error;

  @override
  final List<BoxShadow> focused;

  @override
  final List<BoxShadow> hover;

  @override
  final List<BoxShadow> success;

  @override
  ThemeExtension<AppShadowTheme> copyWith({
    List<BoxShadow>? button12dp,
    List<BoxShadow>? button2dp,
    List<BoxShadow>? button4dp,
    List<BoxShadow>? button8dp,
    List<BoxShadow>? card16dp,
    List<BoxShadow>? card20dp,
    List<BoxShadow>? card24dp,
    List<BoxShadow>? card28dp,
    List<BoxShadow>? focused,
    List<BoxShadow>? hover,
    List<BoxShadow>? error,
    List<BoxShadow>? success,
  }) {
    return DarkThemeShadows(
      button12dp: button12dp ?? this.button12dp,
      button2dp: button2dp ?? this.button2dp,
      button4dp: button4dp ?? this.button4dp,
      button8dp: button8dp ?? this.button8dp,
      card16dp: card16dp ?? this.card16dp,
      card20dp: card20dp ?? this.card20dp,
      card24dp: card24dp ?? this.card24dp,
      card28dp: card28dp ?? this.card28dp,
      focused: focused ?? this.focused,
      hover: hover ?? this.hover,
      error: error ?? this.error,
      success: success ?? this.success,
    );
  }

  @override
  ThemeExtension<AppShadowTheme> lerp(
    covariant AppShadowTheme? other,
    double t,
  ) {
    if (other == null) return this;
    return DarkThemeShadows(
      button12dp: BoxShadow.lerpList(button12dp, other.button12dp, t),
      button2dp: BoxShadow.lerpList(button2dp, other.button2dp, t),
      button4dp: BoxShadow.lerpList(button4dp, other.button4dp, t),
      button8dp: BoxShadow.lerpList(button8dp, other.button8dp, t),
      card16dp: BoxShadow.lerpList(card16dp, other.card16dp, t),
      card20dp: BoxShadow.lerpList(card20dp, other.card20dp, t),
      card24dp: BoxShadow.lerpList(card24dp, other.card24dp, t),
      card28dp: BoxShadow.lerpList(card28dp, other.card28dp, t),
      focused: BoxShadow.lerpList(focused, other.focused, t),
      hover: BoxShadow.lerpList(hover, other.hover, t),
      error: BoxShadow.lerpList(error, other.error, t),
      success: BoxShadow.lerpList(success, other.success, t),
    );
  }
}

class _DarkShadowStyles {
  static final _button2dp = <BoxShadow>[
    BoxShadow(
      color: const Color(0xFF323247).withOpacity(0.06),
      blurRadius: 2,
      offset: const Offset(0, 2),
    ),
    BoxShadow(
      color: const Color(0xFF323247).withOpacity(0.06),
      blurRadius: 4,
      offset: const Offset(0, 2),
    ),
  ];

  static final _button4dp = <BoxShadow>[
    BoxShadow(
      color: const Color(0xFF323247).withOpacity(0.08),
      blurRadius: 4,
      offset: const Offset(0, 4),
    ),
    BoxShadow(
      color: const Color(0xFF323247).withOpacity(0.06),
      blurRadius: 8,
      offset: const Offset(0, 4),
    ),
  ];

  static final _button8dp = <BoxShadow>[
    BoxShadow(
      color: const Color(0xFF323247).withOpacity(0.08),
      blurRadius: 8,
      offset: const Offset(0, 8),
    ),
    BoxShadow(
      color: const Color(0xFF323247).withOpacity(0.06),
      blurRadius: 16,
      offset: const Offset(0, 8),
    ),
  ];

  static final _button12dp = <BoxShadow>[
    BoxShadow(
      color: const Color(0xFF323247).withOpacity(0.08),
      blurRadius: 12,
      offset: const Offset(0, 12),
    ),
    BoxShadow(
      color: const Color(0xFF323247).withOpacity(0.08),
      blurRadius: 24,
      offset: const Offset(0, 16),
    ),
  ];

  static final _card16dp = <BoxShadow>[
    BoxShadow(
      color: const Color(0xFF323247).withOpacity(0.08),
      blurRadius: 16,
      offset: const Offset(0, 16),
    ),
    BoxShadow(
      color: const Color(0xFF323247).withOpacity(0.08),
      blurRadius: 32,
      offset: const Offset(0, 24),
    ),
  ];

  static final _card20dp = <BoxShadow>[
    BoxShadow(
      color: const Color(0xFF323247).withOpacity(0.10),
      blurRadius: 20,
      offset: const Offset(0, 20),
    ),
    BoxShadow(
      color: const Color(0xFF323247).withOpacity(0.10),
      blurRadius: 40,
      offset: const Offset(0, 32),
    ),
  ];

  static final _card24dp = <BoxShadow>[
    BoxShadow(
      color: const Color(0xFF323247).withOpacity(0.10),
      blurRadius: 24,
      offset: const Offset(0, 24),
    ),
    BoxShadow(
      color: const Color(0xFF323247).withOpacity(0.25),
      blurRadius: 48,
      offset: const Offset(0, 40),
    ),
  ];

  static final _card28dp = <BoxShadow>[
    BoxShadow(
      color: const Color(0xFF323247).withOpacity(0.15),
      blurRadius: 28,
      offset: const Offset(0, 28),
    ),
    BoxShadow(
      color: const Color(0xFF323247).withOpacity(0.25),
      blurRadius: 56,
      offset: const Offset(0, 48),
    ),
  ];

  static final _focused = <BoxShadow>[
    BoxShadow(
      color: const Color(0xFF323247).withOpacity(0.08),
      blurRadius: 4,
      offset: const Offset(0, 4),
    ),
    BoxShadow(
      color: const Color(0xFF323247).withOpacity(0.06),
      blurRadius: 8,
      offset: const Offset(0, 4),
    ),
  ];

  static final _hover = <BoxShadow>[
    BoxShadow(
      color: const Color(0xFF323247).withOpacity(0.08),
      blurRadius: 8,
      offset: const Offset(0, 8),
    ),
    BoxShadow(
      color: const Color(0xFF323247).withOpacity(0.06),
      blurRadius: 16,
      offset: const Offset(0, 8),
    ),
  ];

  static final _success = <BoxShadow>[
    BoxShadow(
      color: const Color(0xFF00C48C).withOpacity(0.08),
      blurRadius: 8,
      offset: const Offset(0, 8),
    ),
  ];

  static final _error = <BoxShadow>[
    BoxShadow(
      color: const Color(0xFFFF647C).withOpacity(0.08),
      blurRadius: 8,
      offset: const Offset(0, 8),
    ),
  ];
}

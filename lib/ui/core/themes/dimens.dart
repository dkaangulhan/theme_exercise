import 'package:flutter/material.dart';

/// Dimension values used in the app
abstract final class Dimens {
  const Dimens();

  /// Get dimensions definition based on screen size
  factory Dimens.of(BuildContext context) =>
      switch (MediaQuery.sizeOf(context).width) {
        > 600 => desktop,
        _ => mobile,
      };

  /// General horizontal padding used to separate UI items
  static const paddingHorizontal = 20.0;

  /// General vertical padding used to separate UI items
  static const paddingVertical = 24.0;

  /// Horizontal padding for screen edges
  double get paddingScreenHorizontal;

  /// Vertical padding for screen edges
  double get paddingScreenVertical;

  /// Border radius used for buttons
  double get buttonBorderRadius => 5;

  /// Border radius used for cards
  double get cardBorderRadius => 10;

  /// Border radius used for input fields
  double get inputFieldBorderRadius => 5;

  /// Horizontal symmetric padding for screen edges
  EdgeInsets get edgeInsetsScreenHorizontal =>
      EdgeInsets.symmetric(horizontal: paddingScreenHorizontal);

  /// Symmetric padding for screen edges
  EdgeInsets get edgeInsetsScreenSymmetric => EdgeInsets.symmetric(
        horizontal: paddingScreenHorizontal,
        vertical: paddingScreenVertical,
      );

  /// Padding for screen edges used in desktop
  static const Dimens desktop = _DimensDesktop();

  /// Padding for screen edges used in mobile
  static const Dimens mobile = _DimensMobile();
}

/// Mobile dimensions
final class _DimensMobile extends Dimens {
  const _DimensMobile();
  @override
  double get paddingScreenHorizontal => Dimens.paddingHorizontal;

  @override
  double get paddingScreenVertical => Dimens.paddingVertical;
}

/// Desktop/Web dimensions
final class _DimensDesktop extends Dimens {
  const _DimensDesktop();
  @override
  double get paddingScreenHorizontal => 100;

  @override
  double get paddingScreenVertical => 64;
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_exercise/main.dart';

/// Theme switch widget.
class ThemeSwitch extends StatelessWidget {
  /// Theme switch widget.
  const ThemeSwitch({super.key});

  Icon? _thumbIconResolver(Set<WidgetState> states) {
    if (states.contains(WidgetState.selected)) {
      return const Icon(Icons.nightlight_round);
    }
    return const Icon(Icons.wb_sunny);
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: context.watch<ThemeProvider>().isDark,
      thumbIcon: WidgetStateProperty.resolveWith(_thumbIconResolver),
      onChanged: (value) {
        context.read<ThemeProvider>().toggleTheme(
              isDark: value,
            );
      },
    );
  }
}

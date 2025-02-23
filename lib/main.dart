import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_exercise/ui/app_bar/app_bar_screen.dart';
import 'package:theme_exercise/ui/button/button_screen.dart';
import 'package:theme_exercise/ui/card/card_screen.dart';
import 'package:theme_exercise/ui/core/themes/theme/app_theme.dart';
import 'package:theme_exercise/ui/fab/fab_screen.dart';
import 'package:theme_exercise/ui/form/component/component_screen.dart';
import 'package:theme_exercise/ui/form/text/text_screen.dart';
import 'package:theme_exercise/ui/form/text_input/text_input_screen.dart';
import 'package:theme_exercise/ui/home/home_screen.dart';
import 'package:theme_exercise/ui/shadow/shadow_screen.dart';

/// Routes of the app
abstract class Routes {
  const Routes._();

  /// Home route
  static const home = '/';

  /// Button route
  static const button = '/button';

  /// Text route
  static const text = '/text';

  /// Cards route
  static const card = '/card';

  /// Floating Action Button route
  static const fab = '/fab';

  /// Text Input route
  static const textInput = '/text-input';

  /// Components route
  static const component = '/component';

  /// App Bar route
  static const appBar = '/app-bar';

  /// Shadows route
  static const shadows = '/shadow';
}

void main() {
  runApp(const MyApp());
}

/// Main app widget
class MyApp extends StatelessWidget {
  /// Main app widget
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = context.watch<ThemeProvider>();
        return MaterialApp(
          title: 'Theming Excercise App',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeProvider.isDark ? ThemeMode.dark : ThemeMode.light,
          home: const HomeScreen(),
          onGenerateRoute: (settings) {
            switch (settings.name) {
              case Routes.home:
                return MaterialPageRoute(builder: (_) => const HomeScreen());
              case Routes.button:
                return MaterialPageRoute(builder: (_) => const ButtonScreen());
              case Routes.text:
                return MaterialPageRoute(builder: (_) => const TextScreen());
              case Routes.card:
                return MaterialPageRoute(builder: (_) => const CardScreen());
              case Routes.fab:
                return MaterialPageRoute(builder: (_) => const FabScreen());
              case Routes.textInput:
                return MaterialPageRoute(
                  builder: (_) => const TextInputScreen(),
                );
              case Routes.component:
                return MaterialPageRoute(
                  builder: (_) => const ComponentScreen(),
                );
              case Routes.appBar:
                return MaterialPageRoute(
                  builder: (_) => const AppBarScreen(),
                );
              case Routes.shadows:
                return MaterialPageRoute(
                  builder: (_) => const ShadowScreen(),
                );
              default:
                return MaterialPageRoute(builder: (_) => const HomeScreen());
            }
          },
        );
      },
    );
  }
}

/// Theme provider to manage the theme of the app
class ThemeProvider extends ChangeNotifier {
  bool _isDark = false;

  /// Check if the theme is dark
  bool get isDark => _isDark;

  /// Toggle the theme
  void toggleTheme({required bool isDark}) {
    _isDark = isDark;
    notifyListeners();
  }
}

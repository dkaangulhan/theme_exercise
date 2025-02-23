import 'package:flutter/material.dart';
import 'package:theme_exercise/ui/app_bar/app_bar_screen.dart';
import 'package:theme_exercise/ui/button/button_screen.dart';
import 'package:theme_exercise/ui/card/card_screen.dart';
import 'package:theme_exercise/ui/core/themes/theme.dart';
import 'package:theme_exercise/ui/fab/fab_screen.dart';
import 'package:theme_exercise/ui/form/component/component_screen.dart';
import 'package:theme_exercise/ui/form/text/text_screen.dart';
import 'package:theme_exercise/ui/form/text_input/text_input_screen.dart';
import 'package:theme_exercise/ui/home/home_screen.dart';

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
    return MaterialApp(
      title: 'Theming Excercise App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
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
            return MaterialPageRoute(builder: (_) => const TextInputScreen());
          case Routes.component:
            return MaterialPageRoute(
              builder: (_) => const ComponentScreen(),
            );
          case Routes.appBar:
            return MaterialPageRoute(
              builder: (_) => const AppBarScreen(),
            );
          default:
            return MaterialPageRoute(builder: (_) => const HomeScreen());
        }
      },
    );
  }
}

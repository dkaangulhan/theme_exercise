import 'package:flutter/material.dart';
import 'package:theme_exercise/ui/theme_switch/theme_switch.dart';

/// App Bar screen
class AppBarScreen extends StatelessWidget {
  /// App Bar screen
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar Title'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          const TextButton(
            onPressed: null,
            child: Text('Text Button'),
          ),
        ],
      ),
      body: const Center(child: ThemeSwitch()),
    );
  }
}

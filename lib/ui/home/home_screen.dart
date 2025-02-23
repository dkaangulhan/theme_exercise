import 'package:flutter/material.dart';
import 'package:theme_exercise/main.dart';
import 'package:theme_exercise/ui/theme_switch/theme_switch.dart';

const _padding = EdgeInsets.all(16);

/// Home screen of the app.
class HomeScreen extends StatefulWidget {
  /// Home screen of the app.
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: _padding,
          child: ListView(
            children: [
              const ThemeSwitch(),
              const SizedBox(height: 16),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed(Routes.button);
                },
                title: const Text('Buttons'),
              ),
              const SizedBox(height: 16),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed(Routes.text);
                },
                title: const Text('Texts'),
              ),
              const SizedBox(height: 16),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed(Routes.card);
                },
                title: const Text('Cards'),
              ),
              const SizedBox(height: 16),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed(Routes.fab);
                },
                title: const Text('Fab'),
              ),
              const SizedBox(height: 16),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed(Routes.textInput);
                },
                title: const Text('Text Input'),
              ),
              const SizedBox(height: 16),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed(Routes.component);
                },
                title: const Text('Component'),
              ),
              const SizedBox(height: 16),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed(Routes.appBar);
                },
                title: const Text('App Bar'),
              ),
              const SizedBox(height: 16),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed(Routes.shadows);
                },
                title: const Text('Shadows'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

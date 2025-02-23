import 'package:flutter/material.dart';
import 'package:theme_exercise/main.dart';

const _padding = EdgeInsets.all(16);

/// Home screen of the app.
class HomeScreen extends StatelessWidget {
  /// Home screen of the app.
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: _padding,
          child: ListView(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.button);
                },
                child: const Text('Buttons'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.text);
                },
                child: const Text('Texts'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.card);
                },
                child: const Text('Cards'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.fab);
                },
                child: const Text('Fab'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.textInput);
                },
                child: const Text('Text Input'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.component);
                },
                child: const Text('Component'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.appBar);
                },
                child: const Text('App Bar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

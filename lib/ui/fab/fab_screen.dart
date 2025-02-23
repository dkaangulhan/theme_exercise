import 'package:flutter/material.dart';

/// Floating Action Button screen
class FabScreen extends StatelessWidget {
  /// Floating Action Button screen
  const FabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Button'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is the Floating Action Button screen',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed logic here
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

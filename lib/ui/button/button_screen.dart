import 'package:flutter/material.dart';

const _padding = EdgeInsets.all(16);
const _titleStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
);

/// Button screen of the app.
class ButtonScreen extends StatelessWidget {
  /// Button screen of the app.
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: ListView(
        padding: _padding,
        children: [
          const Text(
            'Buttons',
            style: _titleStyle,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Elevated Button'),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {},
            child: const Text('Text Button'),
          ),
          const SizedBox(height: 16),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Outlined Button'),
          ),
          const SizedBox(height: 16),
          const Text(
            'Icon Buttons',
            style: _titleStyle,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('Elevated Button with Icon'),
          ),
          const SizedBox(height: 16),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('Text Button with Icon'),
          ),
          const SizedBox(height: 16),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('Outlined Button with Icon'),
          ),
          const SizedBox(height: 16),
          const Text(
            'Disabled Buttons',
            style: _titleStyle,
          ),
          const ElevatedButton(
            onPressed: null,
            child: Text('Disabled Elevated Button'),
          ),
          const SizedBox(height: 16),
          const TextButton(
            onPressed: null,
            child: Text('Disabled Text Button'),
          ),
          const SizedBox(height: 16),
          const OutlinedButton(
            onPressed: null,
            child: Text('Disabled Outlined Button'),
          ),
        ],
      ),
    );
  }
}

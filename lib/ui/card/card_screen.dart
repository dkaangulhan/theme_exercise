import 'package:flutter/material.dart';
import 'package:theme_exercise/ui/theme_switch/theme_switch.dart';

const _padding = EdgeInsets.all(16);

/// Cards used in the app.
class CardScreen extends StatelessWidget {
  /// Cards used in the app.
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
      body: ListView(
        padding: _padding,
        children: const [
          ThemeSwitch(),
          Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text('Card Default'),
            ),
          ),
          SizedBox(height: 16),
          ListTile(
            title: Text('List Tile'),
            subtitle: Text('Subtitle'),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.arrow_forward),
          ),
          SizedBox(height: 16),
          Card(
            child: ListTile(
              title: Text('Card with List Tile'),
              subtitle: Text('Subtitle'),
              leading: Icon(Icons.ac_unit),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }
}

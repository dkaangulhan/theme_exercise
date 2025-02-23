import 'package:flutter/material.dart';
import 'package:theme_exercise/ui/theme_switch/theme_switch.dart';

const _padding = EdgeInsets.all(16);
const _titleStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

/// Components screen
class ComponentScreen extends StatelessWidget {
  /// Components screen
  const ComponentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Components'),
      ),
      body: ListView(
        padding: _padding,
        children: const [
          ThemeSwitch(),
          Text('Checkboxes', style: _titleStyle),
          _Checkboxes(),
          SizedBox(height: 16),
          Text(
            'Radio Buttons',
            style: _titleStyle,
          ),
          _RadioButtons(),
          Text('Chips', style: _titleStyle),
          _Chips(),
          Text('Switches', style: _titleStyle),
          _Switches(),
          Text('Sliders', style: _titleStyle),
          _Sliders(),
        ],
      ),
    );
  }
}

class _Checkboxes extends StatelessWidget {
  const _Checkboxes();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: false,
          onChanged: (value) {},
        ),
        const SizedBox(width: 8),
        Checkbox(
          value: true,
          onChanged: (value) {},
        ),
        const SizedBox(width: 8),
        const Checkbox(
          value: true,
          onChanged: null,
        ),
      ],
    );
  }
}

class _RadioButtons extends StatelessWidget {
  const _RadioButtons();

  String get _value => '2';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: '1',
          groupValue: _value,
          onChanged: (value) {},
        ),
        Radio(
          value: '2',
          groupValue: _value,
          onChanged: (value) {},
        ),
      ],
    );
  }
}

class _Chips extends StatelessWidget {
  const _Chips();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Chip(
          label: const Text('Chip 1'),
          deleteIcon: const Icon(Icons.close),
          onDeleted: () {},
        ),
      ],
    );
  }
}

class _Switches extends StatelessWidget {
  const _Switches();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Switch(
          value: false,
          onChanged: null,
        ),
        const SizedBox(width: 8),
        Switch(
          value: false,
          onChanged: (value) {},
        ),
        const SizedBox(width: 8),
        Switch(
          value: true,
          onChanged: (value) {},
        ),
      ],
    );
  }
}

class _Sliders extends StatelessWidget {
  const _Sliders();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: 0.5,
          onChanged: (value) {},
        ),
        const SizedBox(height: 16),
        const Slider(
          value: 0.5,
          onChanged: null,
        ),
        const SizedBox(height: 16),
        // Range values slider
        RangeSlider(
          values: const RangeValues(0.3, 0.7),
          onChanged: (values) {},
        ),
        const SizedBox(height: 16),
        // Discrete values slider
        Slider(
          value: 0.5,
          onChanged: (value) {},
          divisions: 10,
        ),
      ],
    );
  }
}

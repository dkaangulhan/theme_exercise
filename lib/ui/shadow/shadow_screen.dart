import 'package:flutter/material.dart';
import 'package:theme_exercise/ui/core/themes/app_animations.dart';
import 'package:theme_exercise/ui/core/themes/theme/app_theme.dart';
import 'package:theme_exercise/ui/theme_switch/theme_switch.dart';

const EdgeInsets _padding = EdgeInsets.all(16);
const TextStyle _titleStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
);

/// Shadow screen
class ShadowScreen extends StatelessWidget {
  /// Shadow screen
  const ShadowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shadows'),
      ),
      body: ListView(
        clipBehavior: Clip.none,
        padding: _padding,
        children: <Widget>[
          const ThemeSwitch(),
          const Text(
            'Status Shadows',
            style: _titleStyle,
          ),
          _ShadowCard(
            shadow: Theme.of(context).extension<AppShadowTheme>()?.card16dp,
            child: Container(
              height: 160,
              padding: _padding,
              child: const Center(
                child: Text('Card with shadow 1'),
              ),
            ),
          ),
          const SizedBox(height: 32),
          const Text(
            'Button Shadow',
            style: _titleStyle,
          ),
          const _ShadowButton(),
          const SizedBox(height: 32),
          const Text(
            'Status Shadows',
            style: _titleStyle,
          ),
          const _StatusShadows(),
        ],
      ),
    );
  }
}

/// Custom card component with shadow effect
class _ShadowCard extends StatelessWidget {
  /// Custom card component with shadow effect
  const _ShadowCard({
    required this.shadow,
    required this.child,
  });

  final List<BoxShadow>? shadow;

  /// Child widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: AppAnimations.duration1,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: shadow,
      ),
      child: child,
    );
  }
}

class _ShadowButton extends StatelessWidget {
  const _ShadowButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: Theme.of(context).extension<AppShadowTheme>()?.button12dp,
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: _padding,
          elevation: 0,
        ),
        child: const Text('Button with shadow 1'),
      ),
    );
  }
}

class _StatusShadows extends StatelessWidget {
  const _StatusShadows();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _ShadowCard(
          shadow: Theme.of(context).extension<AppShadowTheme>()?.focused,
          child: Container(
            padding: _padding,
            child: const Center(
              child: Text('Card with focused shadow'),
            ),
          ),
        ),
        const SizedBox(height: 16),
        _ShadowCard(
          shadow: Theme.of(context).extension<AppShadowTheme>()?.hover,
          child: Container(
            padding: _padding,
            child: const Center(
              child: Text('Card with hover shadow'),
            ),
          ),
        ),
        const SizedBox(height: 16),
        _ShadowCard(
          shadow: Theme.of(context).extension<AppShadowTheme>()?.error,
          child: Container(
            padding: _padding,
            child: const Center(
              child: Text('Card with error shadow'),
            ),
          ),
        ),
        const SizedBox(height: 16),
        _ShadowCard(
          shadow: Theme.of(context).extension<AppShadowTheme>()?.success,
          child: Container(
            padding: _padding,
            child: const Center(
              child: Text('Card with success shadow'),
            ),
          ),
        ),
      ],
    );
  }
}

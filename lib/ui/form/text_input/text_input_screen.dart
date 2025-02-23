import 'package:flutter/material.dart';

/// Text Input screen of the app.
class TextInputScreen extends StatelessWidget {
  /// Text Input screen of the app.
  const TextInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Input'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Text Field Label',
                  hintText: 'Text Field Hint',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: TextEditingController(text: 'Text Field Text'),
                decoration: const InputDecoration(
                  labelText: 'Text Field Label with Error',
                  hintText: 'Text Field Hint',
                  errorText: 'Error Message',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: TextEditingController(
                  text: 'Text Field Text',
                ),
                decoration: const InputDecoration(
                  labelText: 'Text Field Label with Prefix Icon',
                  hintText: 'Text Field Hint',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: TextEditingController(
                  text: 'Text Field Text',
                ),
                decoration: const InputDecoration(
                  labelText: 'Text Field Label with Suffix Icon',
                  hintText: 'Text Field Hint',
                  suffixIcon: Icon(Icons.search),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: TextEditingController(
                  text: 'Text Field Text',
                ),
                decoration: const InputDecoration(
                  labelText: 'Text Field Label with Prefix and Suffix Icon',
                  hintText: 'Text Field Hint',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.search),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: TextEditingController(
                  text: 'Text Field Text',
                ),
                decoration: const InputDecoration(
                  labelText: 'Text Field Label with Prefix Icon and Error',
                  hintText: 'Text Field Hint',
                  prefixIcon: Icon(Icons.search),
                  errorText: 'Error Message',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: TextEditingController(
                  text: 'Text Field Text',
                ),
                decoration: const InputDecoration(
                  labelText: 'Text Field Label with Suffix Icon and Error',
                  hintText: 'Text Field Hint',
                  suffixIcon: Icon(Icons.search),
                  errorText: 'Error Message',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: TextEditingController(
                  text: 'Text Field Text',
                ),
                decoration: const InputDecoration(
                  labelText:
                      'Text Field Label with Prefix and Suffix Icon and Error',
                  hintText: 'Text Field Hint',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.search),
                  errorText: 'Error Message',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: TextEditingController(
                  text: 'Text Field Text',
                ),
                decoration: const InputDecoration(
                  labelText:
                      'Text Field Label with Prefix Icon and Helper Text',
                  hintText: 'Text Field Hint',
                  prefixIcon: Icon(Icons.search),
                  helperText: 'Helper Text',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: TextEditingController(
                  text: 'Text Field Text',
                ),
                decoration: const InputDecoration(
                  labelText:
                      'Text Field Label with Suffix Icon and Helper Text',
                  hintText: 'Text Field Hint',
                  suffixIcon: Icon(Icons.search),
                  helperText: 'Helper Text',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

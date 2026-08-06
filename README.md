# CARP Themes Package
[![pub package](https://img.shields.io/pub/v/carp_themes_package.svg)](https://pub.dartlang.org/packages/carp_themes_package)

The single source of truth for the CARP design system. It exposes one
`ThemeData` — `carpTheme` — with a full `ColorScheme`, `TextTheme` and component
themes (buttons, cards, app bar), so widgets read their style from
`Theme.of(context)` instead of hard-coding colors or text styles.

## Install

```yaml
dependencies:
  carp_themes_package: ^0.2.0
```

## Usage

Pass `carpTheme` to your `MaterialApp` and use theme roles in widgets:

```dart
import 'package:flutter/material.dart';
import 'package:carp_themes_package/carp_themes_package.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: carpTheme,
      home: Scaffold(
        appBar: AppBar(title: const Text('CARP')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Reads size/weight/color from the theme.
              Text('Welcome', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 16),
              // Pill-shaped, brand-colored — no per-widget styling needed.
              FilledButton(onPressed: () {}, child: const Text('Continue')),
            ],
          ),
        ),
      ),
    );
  }
}
```

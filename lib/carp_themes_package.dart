/// carp_themes_package
///
/// The single source of truth for the CARP design system. Build the app's
/// `MaterialApp` with [carpTheme]; it configures a full [ColorScheme],
/// [TextTheme] and component themes (buttons, cards) so widgets read style from
/// `Theme.of(context)` instead of hard-coding colors or text styles.
///
/// App code should use `Theme.of(context).colorScheme` and Flutter's
/// `Colors.grey` ramp; there is no custom color extension.
library;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// The brand primary color.
const Color _primary = Color(0xff006398);

/// The greyish page background used by scaffolds and app bars.
const Color _background = Color(0xffF2F2F7);

/// The light [ColorScheme]. Pinned explicitly (no seed) so the palette is
/// stable and matches the brand.
final ColorScheme _colorScheme = ColorScheme.light(
  primary: _primary,
  onPrimary: Colors.white,
  secondary: const Color(0xFFFAFAFA),
  onSecondary: Colors.grey.shade900,
  tertiary: const Color(0xFFE6E6E6),
  surface: Colors.white,
  onSurface: Colors.grey.shade900,
  error: const Color(0xffEB4B62),
);

/// The base type scale, colored [ColorScheme.onSurface] and using OpenSans.
///
/// Sizes and weights mirror the design; screens select a role rather than
/// building a [TextStyle] and setting a color per call site.
final TextTheme _textTheme = const TextTheme(
  // Big numbers / hero stats.
  displaySmall: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
  // Card headline numbers.
  headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
  headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
  // Titles.
  titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
  titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
  titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
  // Body.
  bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
  bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
  bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
  // Labels (buttons, field labels, captions).
  labelLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
  labelMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
  labelSmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
).apply(fontFamily: 'OpenSans');

/// Rounded shape for cards.
const RoundedRectangleBorder _roundedShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(Radius.circular(8)),
);

/// Pill shape shared by all buttons.
const StadiumBorder _buttonShape = StadiumBorder();

const EdgeInsets _buttonPadding = EdgeInsets.symmetric(horizontal: 28, vertical: 12);

/// The default (light) theme for CARP apps. Build the app's `MaterialApp` with
/// this so buttons, cards and text pick up a consistent style without
/// per-widget overrides.
final ThemeData carpTheme = ThemeData(
  useMaterial3: true,
  colorScheme: _colorScheme,
  primaryColor: _primary,
  textTheme: _textTheme,
  fontFamily: 'OpenSans',
  scaffoldBackgroundColor: _background,
  appBarTheme: AppBarTheme(
    backgroundColor: _background,
    foregroundColor: Colors.grey.shade900,
    surfaceTintColor: Colors.transparent,
    elevation: 0,
    scrolledUnderElevation: 0,
    centerTitle: false,
    titleTextStyle: _textTheme.headlineSmall,
  ),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      shape: _buttonShape,
      padding: _buttonPadding,
      textStyle: _textTheme.labelLarge,
      minimumSize: const Size(0, 48),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: _primary,
      foregroundColor: Colors.white,
      elevation: 0,
      shape: _buttonShape,
      padding: _buttonPadding,
      textStyle: _textTheme.labelLarge,
      minimumSize: const Size(0, 48),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: _primary,
      side: const BorderSide(color: _primary),
      shape: _buttonShape,
      padding: _buttonPadding,
      textStyle: _textTheme.labelLarge,
      minimumSize: const Size(0, 48),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: _primary,
      textStyle: _textTheme.labelLarge,
      padding: _buttonPadding,
      shape: _buttonShape,
    ),
  ),
  cardTheme: CardThemeData(
    color: Colors.white,
    elevation: 0,
    margin: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
    shape: _roundedShape,
    clipBehavior: Clip.hardEdge,
  ),
  dividerTheme: DividerThemeData(color: Colors.grey.shade300, thickness: 1, space: 1),
);

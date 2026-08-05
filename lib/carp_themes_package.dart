/// carp_themes_package
///
/// The single source of truth for the CARP design system. Build the app's
/// `MaterialApp` with [carpTheme]; it configures a full [ColorScheme],
/// [TextTheme] and component themes (buttons, cards) so widgets read style from
/// `Theme.of(context)` instead of hard-coding colors or text styles.
///
/// [CarpColors] is a small [ThemeExtension] retained for the few brand tokens
/// that external consumers (e.g. `research_package`) read. New app code should
/// prefer `Theme.of(context).colorScheme` and Flutter's `Colors.grey` ramp.
library;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// The brand primary color.
const Color _primary = Color(0xff006398);

/// A few brand tokens exposed to consumers of the theme that Material's
/// [ColorScheme] does not cover. Kept intentionally small; the greys mirror
/// Flutter's [Colors.grey] ramp.
///
/// Read via `Theme.of(context).extension<CarpColors>()!`.
@immutable
class CarpColors extends ThemeExtension<CarpColors> {
  const CarpColors({
    this.primary = _primary,
    this.backgroundGray = const Color(0xffF2F2F7),
    this.grey300 = const Color(0xffE0E0E0),
    this.grey900 = const Color(0xff212121),
  });

  /// The brand primary color.
  final Color primary;

  /// The page/scaffold background tint.
  final Color backgroundGray;

  /// Light border/divider grey (Material `Colors.grey.shade300`).
  final Color grey300;

  /// Primary text grey (Material `Colors.grey.shade900`).
  final Color grey900;

  @override
  CarpColors copyWith({Color? primary, Color? backgroundGray, Color? grey300, Color? grey900}) => CarpColors(
    primary: primary ?? this.primary,
    backgroundGray: backgroundGray ?? this.backgroundGray,
    grey300: grey300 ?? this.grey300,
    grey900: grey900 ?? this.grey900,
  );

  @override
  CarpColors lerp(CarpColors? other, double t) {
    if (other is! CarpColors) return this;
    return CarpColors(
      primary: Color.lerp(primary, other.primary, t)!,
      backgroundGray: Color.lerp(backgroundGray, other.backgroundGray, t)!,
      grey300: Color.lerp(grey300, other.grey300, t)!,
      grey900: Color.lerp(grey900, other.grey900, t)!,
    );
  }
}

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

/// Shared shape for buttons and cards.
const RoundedRectangleBorder _roundedShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(Radius.circular(8)),
);

const EdgeInsets _buttonPadding = EdgeInsets.symmetric(horizontal: 24, vertical: 14);

/// A full-width, pill-shaped primary button style for prominent call-to-action
/// buttons (e.g. login, accept invitation). Use with [FilledButton].
final ButtonStyle carpPillButtonStyle = FilledButton.styleFrom(
  minimumSize: const Size.fromHeight(56),
  shape: const StadiumBorder(),
  textStyle: const TextStyle(fontSize: 22, fontFamily: 'OpenSans', fontWeight: FontWeight.w600),
);

/// The default (light) theme for CARP apps. Build the app's `MaterialApp` with
/// this so buttons, cards and text pick up a consistent style without
/// per-widget overrides.
final ThemeData carpTheme = ThemeData(
  useMaterial3: true,
  colorScheme: _colorScheme,
  primaryColor: _primary,
  textTheme: _textTheme,
  fontFamily: 'OpenSans',
  scaffoldBackgroundColor: const Color(0xffF2F2F7),
  extensions: const <ThemeExtension<dynamic>>[CarpColors()],
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      shape: _roundedShape,
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
      shape: _roundedShape,
      padding: _buttonPadding,
      textStyle: _textTheme.labelLarge,
      minimumSize: const Size(0, 48),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: _primary,
      side: const BorderSide(color: _primary),
      shape: _roundedShape,
      padding: _buttonPadding,
      textStyle: _textTheme.labelLarge,
      minimumSize: const Size(0, 48),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: _primary,
      textStyle: _textTheme.labelLarge,
      shape: _roundedShape,
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

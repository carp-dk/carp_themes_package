/// carp_themes_package
///
/// This file exposes a small set of theme tokens and text styles used by the
/// Carp UI components. It provides:
///  - `CarpColors` - a `ThemeExtension` that stores named color tokens used in
///    both light and dark themes.
///  - `carpTheme` and `carpDarkTheme` - preconfigured `ThemeData` instances
///    that include the `CarpColors` extension.
///  - A collection of commonly used `TextStyle` constants.
///
/// Example
/// ```dart
/// final carpColors = Theme.of(context).extension<CarpColors>()!;
/// final primary = carpColors.primary;
/// ```
library;

import 'dart:ui' as ui;
import 'package:flutter/material.dart';

/// A collection of named color tokens used by the Carp design system.
///
/// This class is implemented as a `ThemeExtension` so the tokens can be
/// attached to Flutter's `ThemeData.extensions` for easy access via
/// `Theme.of(context).extension<CarpColors>()`.
///
/// The extension contains colors for primary actions, warnings, background
/// surfaces and a set of greys used across the UI. All fields are nullable so
/// the extension can be partially overridden via `copyWith`.
@immutable
class CarpColors extends ThemeExtension<CarpColors> {
  const CarpColors({
    this.primary,
    this.warningColor,
    this.backgroundGray,
    this.tabBarBackground,
    this.white,
    this.grey50,
    this.grey100,
    this.grey200,
    this.grey300,
    this.grey400,
    this.grey500,
    this.grey600,
    this.grey700,
    this.grey800,
    this.grey900,
    this.grey950,
  });

  final Color? primary;

  final Color? warningColor;

  final Color? backgroundGray;

  final Color? tabBarBackground;

  final Color? white;

  final Color? grey50;
  final Color? grey100;
  final Color? grey200;
  final Color? grey300;
  final Color? grey400;
  final Color? grey500;
  final Color? grey600;
  final Color? grey700;
  final Color? grey800;
  final Color? grey900;
  final Color? grey950;

  @override
  CarpColors copyWith(
      {Color? primary,
      Color? warningColor,
      Color? backgroundGray,
      Color? tabBarBackground,
      Color? white,
      Color? grey50,
      Color? grey100,
      Color? grey200,
      Color? grey300,
      Color? grey400,
      Color? grey500,
      Color? grey600,
      Color? grey700,
      Color? grey800,
      Color? grey900,
      Color? grey950}) {
    return CarpColors(
      primary: primary ?? this.primary,
      warningColor: warningColor ?? this.warningColor,
      backgroundGray: backgroundGray ?? this.backgroundGray,
      tabBarBackground: tabBarBackground ?? this.tabBarBackground,
      white: white ?? this.white,
      grey50: grey50 ?? this.grey50,
      grey100: grey100 ?? this.grey100,
      grey200: grey200 ?? this.grey200,
      grey300: grey300 ?? this.grey300,
      grey400: grey400 ?? this.grey400,
      grey500: grey500 ?? this.grey500,
      grey600: grey600 ?? this.grey600,
      grey700: grey700 ?? this.grey700,
      grey800: grey800 ?? this.grey800,
      grey900: grey900 ?? this.grey900,
      grey950: grey950 ?? this.grey950,
    );
  }

  @override
  CarpColors lerp(CarpColors? other, double t) {
    if (other is! CarpColors) {
      return this;
    }
    return CarpColors(
      primary: Color.lerp(primary, other.primary, t),
      warningColor: Color.lerp(warningColor, other.warningColor, t),
      backgroundGray: Color.lerp(backgroundGray, other.backgroundGray, t),
      tabBarBackground: Color.lerp(tabBarBackground, other.tabBarBackground, t),
      white: Color.lerp(white, other.white, t),
      grey50: Color.lerp(grey50, other.grey50, t),
      grey100: Color.lerp(grey100, other.grey100, t),
      grey200: Color.lerp(grey200, other.grey200, t),
      grey300: Color.lerp(grey300, other.grey300, t),
      grey400: Color.lerp(grey400, other.grey400, t),
      grey500: Color.lerp(grey500, other.grey500, t),
      grey600: Color.lerp(grey600, other.grey600, t),
      grey700: Color.lerp(grey700, other.grey700, t),
      grey800: Color.lerp(grey800, other.grey800, t),
      grey900: Color.lerp(grey900, other.grey900, t),
      grey950: Color.lerp(grey950, other.grey950, t),
    );
  }
}

ThemeData carpTheme = ThemeData.light().copyWith(
  /// The default (light) theme for Carp-based apps.
  ///
  /// This `ThemeData` includes a `CarpColors` extension with the app color
  /// tokens and a set of text theme overrides. Use `carpTheme` when building
  /// the MaterialApp for a standard Carp appearance.
  extensions: <ThemeExtension<dynamic>>[
    CarpColors(
      primary: const Color(0xff006398),
      warningColor: Colors.orange[500],
      backgroundGray: const Color(0xfff2f2f7),
      tabBarBackground: const Color.fromARGB(255, 227, 227, 228),
      white: const Color(0xffFFFFFF),
      grey50: const Color(0xffFCFCFF),
      grey100: const Color(0xffF2F2F7),
      grey200: const Color(0xffE5E5EA),
      grey300: const Color(0xffD1D1D6),
      grey400: const Color(0xffBABABA),
      grey500: const Color(0xff9B9B9B),
      grey600: const Color(0xff848484),
      grey700: const Color(0xff3A3A3C),
      grey800: const Color(0xff2C2C2E),
      grey900: const Color(0xff1C1C1E),
      grey950: const Color(0xff0E0E0E),
    )
  ],
  primaryColor: const Color(0xFF206FA2),
  colorScheme: const ColorScheme.light().copyWith(
      secondary: const Color(0xFFFAFAFA),
      primary: const Color(0xFF206FA2),
      tertiary: const ui.Color.fromARGB(255, 230, 230, 230)),
  //accentColor: Color(0xFFFAFAFA), //Color(0xffcce8fa),
  hoverColor: const Color(0xFFF1F9FF),
  scaffoldBackgroundColor: const Color(0xFFFFFFFF),
  textTheme: ThemeData.light()
      .textTheme
      .copyWith(
        bodySmall: ThemeData.light().textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
        bodyLarge: ThemeData.light().textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 18.0,
            ),
        bodyMedium: ThemeData.light().textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 16.0,
            ),
        titleMedium: ThemeData.light().textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 20.0,
            color: const Color(0xFF206FA2)),
        titleLarge: ThemeData.light().textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 20.0,
            ),
        headlineMedium: ThemeData.light().textTheme.headlineMedium!.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 30.0,
            ),
        labelLarge: ThemeData.light().textTheme.labelLarge!.copyWith(
            fontWeight: FontWeight.w500, fontSize: 16.0, color: Colors.white),
      )
      .apply(
        fontFamily: 'OpenSans',
      ),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  ),
);

ThemeData carpDarkTheme = ThemeData.dark().copyWith(
  /// A dark variant of the Carp theme.
  ///
  /// Use this when the application is running in dark mode. It provides
  /// alternate `CarpColors` tokens suitable for dark backgrounds.
  extensions: <ThemeExtension<dynamic>>[
    CarpColors(
      primary: const Color(0xff24B2FF),
      warningColor: Colors.orange[700],
      backgroundGray: const Color(0xff0e0e0e),
      tabBarBackground: const Color(0xffe3e3e4),
      white: const Color(0xff1C1C1E),
      grey50: const Color(0xff3A3A3C),
      grey100: const Color(0xff0E0E0E),
      grey200: const Color(0xff2C2C2E),
      grey300: const Color(0xff3A3A3C),
      grey400: const Color(0xff9B9B9B),
      grey500: const Color(0xffBABABA),
      grey600: const Color(0xffBABABA),
      grey700: const Color(0xffD1D1D6),
      grey800: const Color(0xffF2F2F7),
      grey900: const Color(0xffF2F2F7),
      grey950: const Color(0xff0E0E0E),
    )
  ],
  primaryColor: const Color(0xff81C7F3),
  colorScheme: const ColorScheme.dark().copyWith(
    secondary: const Color(0xff4C4C4C),
    primary: const Color(0xff81C7F3),
    tertiary: (const Color(0xff4C4C4C)),
  ),
  // accentColor: Color(0xff4C4C4C),
  disabledColor: const Color(0xffcce8fa),
  textTheme: ThemeData.dark()
      .textTheme
      .copyWith(
        bodySmall: ThemeData.dark().textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
        bodyLarge: ThemeData.dark().textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 18.0,
            ),
        bodyMedium: ThemeData.dark().textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 16.0,
            ),
        titleMedium: ThemeData.dark().textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 20.0,
              color: const Color(0xff81C7F3),
            ),
        titleLarge: ThemeData.dark().textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 20.0,
            ),
        headlineMedium: ThemeData.dark().textTheme.headlineMedium!.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 30.0,
            ),
        labelLarge: ThemeData.dark().textTheme.labelLarge!.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
            color: Colors.grey.shade800),
      )
      .apply(
        fontFamily: 'OpenSans',
      ),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  ),
);

/// Common text style constants used across Carp widgets.
///
/// These are small convenience constants (short names follow the pattern
/// `fs<fontSize>fw<fontWeight>`) and are provided so callers can easily
/// reuse the same visual tokens without rebuilding `TextStyle` objects.
TextStyle fs10fw600 = const TextStyle(fontSize: 10, fontWeight: FontWeight.w600)
    .apply(fontFamily: 'OpenSans');
TextStyle fs10fw700 =
    const TextStyle(fontSize: 10, fontWeight: FontWeight.w700);
TextStyle fs12fw300 =
    const TextStyle(fontSize: 12, fontWeight: FontWeight.w300);
TextStyle fs12fw400 =
    const TextStyle(fontSize: 12, fontWeight: FontWeight.w400);
TextStyle fs12fw600 =
    const TextStyle(fontSize: 12, fontWeight: FontWeight.w600);
TextStyle fs12fw700 =
    const TextStyle(fontSize: 12, fontWeight: FontWeight.w700);

TextStyle fs14ls1 = const TextStyle(fontSize: 14, letterSpacing: 1);
TextStyle fs14fw600 =
    const TextStyle(fontSize: 14, fontWeight: FontWeight.w600);

TextStyle fs15Grey =
    const TextStyle(fontSize: 15, color: Color(0xff707070));

TextStyle fs16fw400ls0 = const TextStyle(
    fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0);
TextStyle fs16fw400ls1 = const TextStyle(
    fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 1);
TextStyle fs16fw400 = const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)
    .apply(fontFamily: 'OpenSans');
TextStyle fs16fw600 =
    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600);
TextStyle fs16fw700 =
    const TextStyle(fontSize: 16, fontWeight: FontWeight.w700);

TextStyle fs18fw100 =
    const TextStyle(fontSize: 18, fontWeight: FontWeight.w100);
TextStyle fs18fw200 =
    const TextStyle(fontSize: 18, fontWeight: FontWeight.w200);
TextStyle fs18fw300 =
    const TextStyle(fontSize: 18, fontWeight: FontWeight.w300);
TextStyle fs18fw400 =
    const TextStyle(fontSize: 18, fontWeight: FontWeight.w400);
TextStyle fs18fw700 =
    const TextStyle(fontSize: 18, fontWeight: FontWeight.w700);

TextStyle fs20fw700 = const TextStyle(fontSize: 20, fontWeight: FontWeight.w700)
    .apply(fontFamily: 'OpenSans');
TextStyle fs20fw700ls0 = const TextStyle(
    fontSize: 20, fontWeight: FontWeight.w700, letterSpacing: 0);
TextStyle fs20fw800 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w800,
    color: Color.fromRGBO(32, 111, 162, 1));

TextStyle fs22fw700 =
    const TextStyle(fontSize: 22, fontWeight: FontWeight.w700);

TextStyle fs24fw700ls0 = const TextStyle(
    fontSize: 24, fontWeight: FontWeight.w700, letterSpacing: 0);
TextStyle fs24fw600 =
    const TextStyle(fontSize: 24, fontWeight: FontWeight.w600);
TextStyle fs24fw700Gray = const TextStyle(
    fontSize: 24, color: Color(0xff707070), fontWeight: FontWeight.w700);
TextStyle fs24fw700 = const TextStyle(fontSize: 24, fontWeight: FontWeight.w700)
    .apply(fontFamily: 'OpenSans');

TextStyle fs28fw700 =
    const TextStyle(fontSize: 28, fontWeight: FontWeight.w700);

TextStyle fs30fw800 =
    const TextStyle(fontSize: 30.0, fontWeight: FontWeight.w800);

TextStyle fs36fw600 =
    const TextStyle(fontSize: 36, fontWeight: FontWeight.w600);
TextStyle fs36fw800 = const TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w800,
    color: Color.fromRGBO(32, 111, 162, 1));

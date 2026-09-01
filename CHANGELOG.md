## 0.2.1

* Fix opaque black borders and dividers: an unseeded `ColorScheme.light` leaves
  `outline`/`outlineVariant` - and with them `ThemeData.dividerColor` - black.
* Add a `dialogTheme`, so a dialog title is a title rather than the 24/w700
  `headlineSmall` Material 3 would otherwise pick.

## 0.2.0

* Buttons are pill-shaped (`StadiumBorder`) by default via the component themes;
  drop the separate `carpPillButtonStyle` in favour of themed
  `FilledButton`/`OutlinedButton`/`TextButton`.
* Add an `appBarTheme` (flat, transparent surface tint, `headlineSmall` title)
  so app bars match the page background.

## 0.1.0

* Standardize on Flutter's `ThemeData`: full [TextTheme] (Material roles) and an
  explicit [ColorScheme] (no seed), plus button and card component themes so
  widgets read style from `Theme.of(context)`.
* Remove the loose `fsXXfwYY` `TextStyle` globals and the dark theme.
* Slim `CarpColors` down to the brand tokens external consumers use
  (`primary`, `backgroundGray`, `grey300`, `grey900`); greys mirror
  `Colors.grey`.
* Add `carpPillButtonStyle` for full-width primary CTAs.

## 0.0.5

* Add explicit `package:flutter/cupertino.dart` import for Flutter 3.44+
  compatibility (`CupertinoPageTransitionsBuilder` is no longer re-exported
  from `material.dart`).

## 0.0.4+1

* hotfixes

## 0.0.4

* adding new TextStyles fs18fw100, fs18fw200, fs18fw300

## 0.0.3

* minor name changes

## 0.0.2

* provide documentation
* fix formatting

## 0.0.1

* The CARP Themes package is a package that contains themes, colors and widgets that are used across the entire CARP platform.

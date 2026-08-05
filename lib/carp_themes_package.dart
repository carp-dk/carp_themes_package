/// carp_themes_package
///
/// The single source of truth for the CARP design system:
///  - [carpTheme]: a light [ThemeData] with a full [ColorScheme], [TextTheme]
///    and component themes (buttons, cards, inputs). Widgets should read from
///    `Theme.of(context)` rather than hard-coding colors or text styles.
///  - [CarpColors]: a [ThemeExtension] for the semantic tokens that Material's
///    [ColorScheme] does not cover - the grey ramp, status and task colors, and
///    the data-visualization palette.
///
/// Example
/// ```dart
/// final theme = Theme.of(context);
/// final carp = theme.extension<CarpColors>()!;
/// Text('Title', style: theme.textTheme.titleLarge);
/// Container(color: carp.grey100);
/// ```
library;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Semantic color tokens used across the CARP UI that fall outside Material's
/// [ColorScheme]: the neutral grey ramp, study/deployment status colors, task
/// colors, a handful of named accents, and the chart palette.
///
/// Attached to [ThemeData.extensions] and read via
/// `Theme.of(context).extension<CarpColors>()!`.
@immutable
class CarpColors extends ThemeExtension<CarpColors> {
  const CarpColors({
    required this.backgroundGray,
    required this.tabBarBackground,
    required this.white,
    required this.grey50,
    required this.grey100,
    required this.grey200,
    required this.grey300,
    required this.grey400,
    required this.grey500,
    required this.grey600,
    required this.grey700,
    required this.grey800,
    required this.grey900,
    required this.grey950,
    required this.success,
    required this.warning,
    required this.error,
    required this.info,
    required this.heartRate,
    required this.anonymous,
    required this.deploymentDeploying,
    required this.deploymentRunning,
    required this.deploymentStopped,
    required this.deploymentInvited,
    required this.taskSurvey,
    required this.taskInputData,
    required this.taskCompleted,
    required this.chartColors,
  });

  // Neutral ramp.
  final Color backgroundGray;
  final Color tabBarBackground;
  final Color white;
  final Color grey50;
  final Color grey100;
  final Color grey200;
  final Color grey300;
  final Color grey400;
  final Color grey500;
  final Color grey600;
  final Color grey700;
  final Color grey800;
  final Color grey900;
  final Color grey950;

  // Semantic accents.
  final Color success;
  final Color warning;
  final Color error;
  final Color info;
  final Color heartRate;
  final Color anonymous;

  // Deployment status.
  final Color deploymentDeploying;
  final Color deploymentRunning;
  final Color deploymentStopped;
  final Color deploymentInvited;

  // Task colors.
  final Color taskSurvey;
  final Color taskInputData;
  final Color taskCompleted;

  /// Ordered palette for multi-series charts and legends.
  final List<Color> chartColors;

  @override
  CarpColors copyWith({
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
    Color? grey950,
    Color? success,
    Color? warning,
    Color? error,
    Color? info,
    Color? heartRate,
    Color? anonymous,
    Color? deploymentDeploying,
    Color? deploymentRunning,
    Color? deploymentStopped,
    Color? deploymentInvited,
    Color? taskSurvey,
    Color? taskInputData,
    Color? taskCompleted,
    List<Color>? chartColors,
  }) => CarpColors(
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
    success: success ?? this.success,
    warning: warning ?? this.warning,
    error: error ?? this.error,
    info: info ?? this.info,
    heartRate: heartRate ?? this.heartRate,
    anonymous: anonymous ?? this.anonymous,
    deploymentDeploying: deploymentDeploying ?? this.deploymentDeploying,
    deploymentRunning: deploymentRunning ?? this.deploymentRunning,
    deploymentStopped: deploymentStopped ?? this.deploymentStopped,
    deploymentInvited: deploymentInvited ?? this.deploymentInvited,
    taskSurvey: taskSurvey ?? this.taskSurvey,
    taskInputData: taskInputData ?? this.taskInputData,
    taskCompleted: taskCompleted ?? this.taskCompleted,
    chartColors: chartColors ?? this.chartColors,
  );

  @override
  CarpColors lerp(CarpColors? other, double t) {
    if (other is! CarpColors) return this;
    Color l(Color a, Color b) => Color.lerp(a, b, t)!;
    return CarpColors(
      backgroundGray: l(backgroundGray, other.backgroundGray),
      tabBarBackground: l(tabBarBackground, other.tabBarBackground),
      white: l(white, other.white),
      grey50: l(grey50, other.grey50),
      grey100: l(grey100, other.grey100),
      grey200: l(grey200, other.grey200),
      grey300: l(grey300, other.grey300),
      grey400: l(grey400, other.grey400),
      grey500: l(grey500, other.grey500),
      grey600: l(grey600, other.grey600),
      grey700: l(grey700, other.grey700),
      grey800: l(grey800, other.grey800),
      grey900: l(grey900, other.grey900),
      grey950: l(grey950, other.grey950),
      success: l(success, other.success),
      warning: l(warning, other.warning),
      error: l(error, other.error),
      info: l(info, other.info),
      heartRate: l(heartRate, other.heartRate),
      anonymous: l(anonymous, other.anonymous),
      deploymentDeploying: l(deploymentDeploying, other.deploymentDeploying),
      deploymentRunning: l(deploymentRunning, other.deploymentRunning),
      deploymentStopped: l(deploymentStopped, other.deploymentStopped),
      deploymentInvited: l(deploymentInvited, other.deploymentInvited),
      taskSurvey: l(taskSurvey, other.taskSurvey),
      taskInputData: l(taskInputData, other.taskInputData),
      taskCompleted: l(taskCompleted, other.taskCompleted),
      chartColors: t < 0.5 ? chartColors : other.chartColors,
    );
  }
}

/// The light [CarpColors] tokens.
const CarpColors _carpColors = CarpColors(
  backgroundGray: Color(0xffF2F2F7),
  tabBarBackground: Color.fromARGB(255, 227, 227, 228),
  white: Color(0xffFFFFFF),
  grey50: Color(0xffFCFCFF),
  grey100: Color(0xffF2F2F7),
  grey200: Color(0xffE5E5EA),
  grey300: Color(0xffD1D1D6),
  grey400: Color(0xffBABABA),
  grey500: Color(0xff9B9B9B),
  grey600: Color(0xff848484),
  grey700: Color(0xff3A3A3C),
  grey800: Color(0xff2C2C2E),
  grey900: Color(0xff1C1C1E),
  grey950: Color(0xff0E0E0E),
  success: Color(0xff67CE67),
  warning: Color(0xffF57C00), // orange 700
  error: Color(0xffEB4B62),
  info: Color(0xff81CFFA),
  heartRate: Color(0xffEB4B62),
  anonymous: Color(0xffB25FEA),
  deploymentDeploying: _seed,
  deploymentRunning: Color(0xff67CE67),
  deploymentStopped: Color(0xff848484),
  deploymentInvited: Color(0xffDF7801),
  taskSurvey: Color(0xff3A82F7),
  taskInputData: Color(0xffA1616A),
  taskCompleted: _seed,
  chartColors: kCarpChartColors,
);

/// The brand seed / primary color.
const Color _seed = Color(0xff006398);

/// The ordered palette for multi-series charts and legends. Exposed as a plain
/// const (in addition to [CarpColors.chartColors]) for use in const contexts
/// such as default widget parameter values.
const List<Color> kCarpChartColors = <Color>[
  Color(0xFF7FC9E3),
  Color(0xFFEB4B62),
  Color(0xFF2192C9),
  Color(0xFF809AE5),
  Color(0xFF630A1A),
  Color(0xFF1282B0),
  Color(0xFFC052A2),
  Color(0xFFBA0022),
  Color(0xFF6FB4E9),
  Color(0xFFA379CE),
  Color(0xFFCA2366),
];

/// The light [ColorScheme], derived from the brand seed and pinned so the
/// palette stays stable across Flutter/Material updates.
final ColorScheme _colorScheme = ColorScheme.fromSeed(
  seedColor: _seed,
  brightness: Brightness.light,
).copyWith(
  primary: _seed,
  onPrimary: _carpColors.white,
  surface: _carpColors.white,
  onSurface: _carpColors.grey900,
  error: _carpColors.error,
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
).apply(
  fontFamily: 'OpenSans',
  bodyColor: _carpColors.grey900,
  displayColor: _carpColors.grey900,
);

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
/// this so buttons, cards, inputs and text pick up a consistent style without
/// per-widget overrides.
final ThemeData carpTheme = ThemeData(
  useMaterial3: true,
  colorScheme: _colorScheme,
  textTheme: _textTheme,
  scaffoldBackgroundColor: _carpColors.white,
  fontFamily: 'OpenSans',
  extensions: const <ThemeExtension<dynamic>>[_carpColors],
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
      backgroundColor: _seed,
      foregroundColor: _carpColors.white,
      elevation: 0,
      shape: _roundedShape,
      padding: _buttonPadding,
      textStyle: _textTheme.labelLarge,
      minimumSize: const Size(0, 48),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: _seed,
      side: const BorderSide(color: _seed),
      shape: _roundedShape,
      padding: _buttonPadding,
      textStyle: _textTheme.labelLarge,
      minimumSize: const Size(0, 48),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: _seed,
      textStyle: _textTheme.labelLarge,
      shape: _roundedShape,
    ),
  ),
  cardTheme: CardThemeData(
    color: _carpColors.white,
    elevation: 0,
    margin: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
    shape: _roundedShape,
    clipBehavior: Clip.hardEdge,
  ),
  dividerTheme: DividerThemeData(color: _carpColors.grey200, thickness: 1, space: 1),
);

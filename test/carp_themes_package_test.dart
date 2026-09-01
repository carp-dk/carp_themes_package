import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:carp_themes_package/carp_themes_package.dart';

void main() {
  test('borders and dividers are grey, not the black an unseeded '
      'ColorScheme leaves behind', () {
    expect(carpTheme.colorScheme.outline, isNot(const Color(0xff000000)));
    expect(carpTheme.colorScheme.outlineVariant, isNot(const Color(0xff000000)));
    expect(carpTheme.dividerColor, isNot(const Color(0xff000000)));
    expect(carpTheme.dividerTheme.color, isNot(const Color(0xff000000)));
  });

  test('a dialog title is a title, not a headline', () {
    final title = carpTheme.dialogTheme.titleTextStyle!;
    expect(title.fontSize, lessThan(carpTheme.textTheme.headlineSmall!.fontSize!));
    expect(title.fontWeight!.index,
        lessThan(carpTheme.textTheme.headlineSmall!.fontWeight!.index));
  });

  test('dialog text has a color - a colorless style renders white on white',
      () {
    expect(carpTheme.dialogTheme.titleTextStyle?.color,
        carpTheme.colorScheme.onSurface);
    expect(carpTheme.dialogTheme.contentTextStyle?.color,
        carpTheme.colorScheme.onSurface);
  });
}

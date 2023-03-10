import 'package:demo_theming/styling/app_theme_data.dart';
import 'package:flutter/material.dart';

class TextStyles {
  TextStyles(this.theme);

  final AppThemeData theme;

  late final title = TextStyle(
    fontSize: theme.fontSizes.title,
  );

  late final subTitle = TextStyle(
    fontSize: theme.fontSizes.subTitle,
  );

  late final subTitle2 = TextStyle(
    fontSize: theme.fontSizes.subTitle2,
  );
}
